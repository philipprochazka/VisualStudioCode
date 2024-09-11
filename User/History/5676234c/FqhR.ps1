# ExtractEmails.ps1

# Function to extract emails from a given URL
function ExtractEmailsFromUrl($url) {
    $response = Invoke-WebRequest -Uri $url

    if ($response.StatusCode -eq 200) {
        $emails = [regex]::Matches($response.Content, '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')

        foreach ($email in $emails) {
            Write-Host $email.Value
        }
    }
    else {
        Write-Host "Failed to retrieve the web page. Status code: $($response.StatusCode)"
    }
}

$mainUrl = 'https://www.firmy.cz/Remesla-a-sluzby/Uklidove-a-cistici-sluzby'
$response = Invoke-WebRequest -Uri $mainUrl

if ($response.StatusCode -eq 200) {
    $detailPageUrls = [regex]::Matches($response.Content, 'https://www\.firmy\.cz/detail/\S+\.html')
    $urlArray = @()

    foreach ($url in $detailPageUrls) {
        $urlArray += $url.Value
    }

    $urlArray | Export-Csv -Path 'query.csv' -NoTypeInformation

    foreach ($url in $urlArray) {
        Write-Host "Extracting emails from $url"
        ExtractEmailsFromUrl $url
    }
}
else {
    Write-Host "Failed to retrieve the main page. Status code: $($response.StatusCode)"
}
