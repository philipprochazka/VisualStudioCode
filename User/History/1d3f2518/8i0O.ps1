# Define the main URL
$mainUrl = 'https://www.firmy.cz/Remesla-a-sluzby/Uklidove-a-cistici-sluzby'

# Download the HTML content of the main page
$response = Invoke-WebRequest -Uri $mainUrl

# Check if the request was successful (status code 200)
if ($response.StatusCode -eq 200) {
    # Use a regular expression to find detail page URLs in the HTML content
    $detailPageUrls = [regex]::Matches($response.Content, 'https://www\.firmy\.cz/detail/\w+\.html')

    # Create an array to store URLs
    $urlArray = @()

    # Add URLs to the array
    foreach ($url in $detailPageUrls) {
        $urlArray += $url.Value
    }

    # Export the array to a CSV file
    $urlArray | Export-Csv -Path 'query.csv' -NoTypeInformation

    Write-Host 'Detail page URLs exported to query.csv'

    # Loop through the URLs in the CSV file
    foreach ($url in $urlArray) {
        Write-Host "Extracting emails from $url"
        ExtractEmailsFromUrl $url
    }
}
else {
    Write-Host "Failed to retrieve the main page. Status code: $($response.StatusCode)"
}

# Function to extract emails from a given URL
function ExtractEmailsFromUrl($url) {
    $response = Invoke-WebRequest -Uri $url

    # Check if the request was successful (status code 200)
    if ($response.StatusCode -eq 200) {
        # Use a regular expression to find email addresses in the HTML content
        $emails = [regex]::Matches($response.Content, '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')

        # Print the extracted emails
        foreach ($email in $emails) {
            Write-Host $email.Value
        }
    }
    else {
        Write-Host "Failed to retrieve the web page. Status code: $($response.StatusCode)"
    }
}
