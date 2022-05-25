Write-Host " CHOOSE YOUR DESTINY "
Write-Host " 1. Query an AD User "
Write-Host " 2. Delete an AD user"
Write-Host " 3. Generate new resume"
Write-Host " 4. Post resume on Indeed.com"
Write-Host " "
Write-Host " ENTER OPTION 1-4:"

$choice = Read-Host "What is your destiny?"

switch ($choice) {
    "1" { New-GMUser }
    "2" {}
    "3" {}
    "4" {}
}