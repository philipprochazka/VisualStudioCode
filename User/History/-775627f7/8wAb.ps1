# ExtractEmails.ps1

# Function to extract emails from a given URL
function ExtractEmailsFromUrl($url) {
    $response = Invoke-WebRequest -Uri $url

    if ($response.StatusCode -eq 200) {
        $emails = [regex]::Matches($response.Content, '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')

        # Add the unique emails to the $emailArray
        foreach ($email in $emails) {
            if ($global:emailArray -notcontains $email.Value) {
                $global:emailArray += $email.Value
            }
        }
    }
    else {
        Write-Host "Failed to retrieve the web page. Status code: $($response.StatusCode)"
    }
}

# Initialize global arrays
$global:urlArray = @()
$global:emailArray = @()

$mainUrl = 'https://www.firmy.cz/Remesla-a-sluzby/Uklidove-a-cistici-sluzby'
$response = Invoke-WebRequest -Uri $mainUrl

if ($response.StatusCode -eq 200) {
    $detailPageUrls = [regex]::Matches($response.Content, 'https://www\.firmy\.cz/detail/\S+\.html')

    foreach ($url in $detailPageUrls) {
        # Add the URLs to the $urlArray
        $global:urlArray += $url.Value
    }

    $urlArray | Export-Csv -Path 'query.csv' -NoTypeInformation

    foreach ($url in $urlArray) {
        Write-Host "Extracting emails from $url"
        ExtractEmailsFromUrl $url
    }

    # Convert $emailArray to a single string with newlines and export to CSV
    $emailString = $emailArray -join "`n"
    $emailString | Out-File -FilePath 'emails.csv' -Encoding UTF8
}
else {
    Write-Host "Failed to retrieve the main page. Status code: $($response.StatusCode)"
}
