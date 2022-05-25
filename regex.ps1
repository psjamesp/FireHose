function Get-Thing {
    [CmdletBinding()]
    param(
        [string]$FirstLetter
    )

    Write-Verbose "Now attempting to retrieve things starting with $FirstLetter"
    get-process -Name "$($FirstLetter)*"

}

function Get-LastNameFromEmail {
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
        [string[]]$email
    )

    BEGIN {}

    PROCESS {
        foreach ($x in $email) {
            $response = $x -match '[\-\.](.*)\@'
            New-Object -TypeName PSObject @{
                'LastName' = $matches[1]
                'Email' = $x
            } # PSCustom object
        } # End For each
    } # End Process

    END {}

}

Get-LastNameFromEmail -email "don-jones@something","james.petty@elsewhere" | format-table