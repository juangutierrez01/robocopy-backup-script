$Settings = (ConvertFrom-Json (Get-Content -Raw "./settings.json"))
$LogFile = "$($Settings.LogDirectory)\robocopy_$(Get-Date -Format "yyyy_MMdd_HHmm").log" 

foreach ($Backup in $Settings.Backups)
{
    try
    {
	robocopy "$($Backup.Source)" "$($Backup.Destination)" /log+:"$LogFile" /tee /mir /z /j /mt:1
    }
    catch
    {
	Write-Host $('An error occured while trying to backup "{0}":' -f $Backup.Name)
	Write-Host $_
    }
}
