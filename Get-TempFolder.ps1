function Get-TempFolder {
    param(
        [string]$TempFolder = "C:\Temp"
    )

    # if the temp folder doesnt exist, create the folder
    if (! (Test-Path -Path $TempFolder)) {
        New-Item -Path ${env:SystemDrive}\ -Name Temp -ItemType Directory
        Write-Output "`n$TempFolder has been created"
    }

    else {
        Write-Output "$TempFolder already exists"
    }
}