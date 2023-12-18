# Check if Chocolatey is installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    # Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Check if Docker is installed
if (!(Get-Command docker -ErrorAction SilentlyContinue)) {
    # Install Docker using Chocolatey
    choco install docker-desktop -y
}

# Install Minikube using Chocolatey
choco install minikube -y