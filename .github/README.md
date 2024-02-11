# :robot: Robocopy Backup Script

Use Windows' `robocopy` command to sync your files to the destination of your choice (e.g. OneDrive, Dropbox, etc.)

## How it works

The underlying mechanism is the command, `robocopy`:

```powershell
robocopy "Source" "Destination" /log+:"LogFile" /tee /mir /z /j /mt:2
```

|||
|---|---|
|`"Source"`|The directory you want to backup.|
|`"Destination"`|The path to your OneDrive/Dropbox/etc.|
|`"LogFile"`|The file to store the status output of robocopy.|
|`/tee`|Option to display the status output to the console window and store it in the log file.|
|`/mir`|Option to mirror the source directory tree.|
|`/z`|Option to copy files in restartable mode. In restartable mode, should a file copy be interrupted, robocopy can pick up where it left off rather than recopying the entire file.|
|`/j`|Option to Copy using unbuffered I/O.|
|`/mt:2`|Option to Create multi-threaded copies with 2 threads.|

## Setup

1. [Download the script file `robocopy.ps1`](https://github.com/juangutierrez01/robocopy-backup-script/blob/main/robocopy.ps1) or clone this repository:

    ```bash
    git clone https://github.com/juangutierrez01/robocopy-backup-script
    ```

2. Open the script `robocopy.ps1` in a text editor and fill in the `source`, `destination`, and `log` variables with the corresponding paths

3. Save your changes

4. Right-click on the file you just edited ,`robocopy.ps1`, and select `Run with Powershell` to start backing up your files. To make it easier to run in the future, consider making a shortcut to the script as outlined in this guide: <https://www.tenforums.com/tutorials/97162-powershell-scripting-run-script-shortcut.html>


## Reference

See Microsoft's docs for details on the `robocopy` command: <https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy>
