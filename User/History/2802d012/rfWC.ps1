# Define the URL
$url = 'https://www.firmy.cz/Remesla-a-sluzby/Uklidove-a-cistici-sluzby'

# Download the HTML content of the web page
$response = Invoke-WebRequest -Uri 'https://www.firmy.cz/Remesla-a-sluzby/Uklidove-a-cistici-sluzby'

# Check if the request was successful (status code 200)
if ($response.StatusCode -eq 200) {
    # Use a regular expression to find email addresses in the HTML content
    $emails = [regex]::Matches($response.Content, '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')

    # Create an array to store email addresses
    $emailArray = @()

    # Add email addresses to the array
    foreach ($email in $emails) {
        $emailArray += $email.Value
    }

    # Export the array to a CSV file
    $emailArray | Export-Csv -Path 'emails.csv' -NoTypeInformation

    Write-Host 'Email addresses exported to emails.csv'
}
else {
    Write-Host "Failed to retrieve the web page. Status code: $($response.StatusCode)"
}
