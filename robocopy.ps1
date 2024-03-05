$LogFile = "robocopy_$(Get-Date -Format "yyyy_MMdd_HHmm").log"

foreach ($Setting in (ConvertFrom-Json (Get-Content -Raw "./settings.json")))
{
    try
    {
	robocopy "$($Setting.Source)" "$($Setting.Destination)" /log+:"$LogFile" /tee /mir /z /j /mt:1
    }
    catch
    {
	Write-Host $('An error occured while trying to backup "{0}":' -f $Setting.Name)
	Write-Host $_
    }
}
