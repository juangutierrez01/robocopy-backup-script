$source = "ADD_SOURCE_DIRECTORY_HERE"
$destination = "ADD_DESTINATION_DIRECTORY_HERE"
$logfile = "robocopy_$(Get-Date -Format "yyyy_MMdd_HHmm").log"

robocopy $source $destination /log+:$logfile /tee /mir /z /j /mt:2
