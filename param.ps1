[CmdletBinding()]
Param(
    [Parameter(Mandatory=$True)]
    [ValidateSet('localhost','nothing'])
    [string]$ComputerName,

    [Parameter(Mandatory=$True)]
    [string[]]$Process
)

Write-Host "$ComputerName"
ForEach ($P in $process) {
    Write-Host "$p"
}
