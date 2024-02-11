# :robot: Robocopy Backup Script

Use Window's `robocopy` command to sync your files to the destination of your choice (e.g. OneDrive, Dropbox, etc.)

# How it works

```powershell
robocopy "Source" "Destination" /log+:"Log" /tee /mir /z /j /mt:4
```

|||
|---|---|
|`"Source"`|The directory you want to backup.|
|`"Destination"`|The path to your OneDrive/Dropbox/etc.|
|`/log+:"Log"`|The file to store the status output of robocopy.|
|`/tee`|Option to display the status output to the console window and store it in the log file.|
|`/mir`|Option to mirror the source directory tree.|
|`/z`|Option to copy files in restartable mode. In restartable mode, should a file copy be interrupted, robocopy can pick up where it left off rather than recopying the entire file.|
|`/j`|Option to Copy using unbuffered I/O.|
|`/mt:4`|Option to Create multi-threaded copies with 4 threads.|