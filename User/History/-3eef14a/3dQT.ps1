# Define the URL
$url = 'https://www.firmy.cz/Remesla-a-sluzby/Uklidove-a-cistici-sluzby'

# Download the HTML content of the web page
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
