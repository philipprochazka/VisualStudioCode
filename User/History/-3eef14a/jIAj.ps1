# Define the main URL
$mainUrl = 'https://www.firmy.cz/Remesla-a-sluzby/Uklidove-a-cistici-sluzby'

# Download the HTML content of the main page
$response = Invoke-WebRequest -Uri $mainUrl

# Check if the request was successful (status code 200)
if ($response.StatusCode -eq 200) {
    # Use a regular expression to find detail page URLs in the HTML content
    $detailPageUrls = [regex]::Matches($response.Content, 'https://www\.firmy\.cz/detail/\S+\.html')

    # Create an array to store URLs
    $urlArray = @()

    # Add URLs to the array
    foreach ($url in $detailPageUrls) {
        $urlArray += $url.Value
    }

    # Export the array to a CSV file
    $urlArray | Export-Csv -Path 'query.csv' -NoTypeInformation
}