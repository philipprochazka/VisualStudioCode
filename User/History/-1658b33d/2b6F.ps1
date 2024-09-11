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

$baseUrl = 'https://www.firmy.cz/Auto-moto/Auto-moto-sluzby/Cisteni-vozidel?page='
$page = 1

while ($true) {
    $currentUrl = "$baseUrl$page"
    $response = Invoke-WebRequest -Uri $currentUrl

    if ($response.StatusCode -eq 200) {
        $detailPageUrls = [regex]::Matches($response.Content, 'https://www\.firmy\.cz/detail/\S+\.html')

        if ($detailPageUrls.Count -eq 0) {
            # No detail page URLs found, exit the loop
            break
        }

        foreach ($url in $detailPageUrls) {
            # Add the URLs to the $urlArray
            $global:urlArray += $url.Value
        }

        foreach ($url in $urlArray) {
            Write-Host "Extracting emails from $url"
            ExtractEmailsFromUrl $url
        }
    }
    else {
        Write-Host "Failed to retrieve the page $page. Status code: $($response.StatusCode)"
    }

    # Clear $urlArray for the next page
    $global:urlArray = @()
    $page++
}

# Convert $emailArray to a single string with newlines and export to CSV
$emailString = $emailArray -join "`n"
$emailString | Out-File -FilePath '.\detailing_aut-emails.csv' -Encoding UTF8
