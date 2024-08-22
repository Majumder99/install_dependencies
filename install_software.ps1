# List of software to install
$software = @(
    "7zip.7zip"
)

# Function to install software
function Install-Software($name) {
    Write-Host "Installing $name..."
    winget install --id $name --silent --accept-source-agreements --accept-package-agreements
}

# Install each software package
foreach ($app in $software) {
    Install-Software $app
}

Write-Host "All software has been installed!"