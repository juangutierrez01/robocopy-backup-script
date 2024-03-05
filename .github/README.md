<h1 align="center">
:robot: Robocopy Backup Script
</h1>

Use Windows' `robocopy` command to sync your files to the destination of your choice (e.g. OneDrive, Dropbox, etc.)

## Setup

1. Download this repository:

    ```bash
    git clone https://github.com/juangutierrez01/robocopy-backup-script
    ```

2. Open `settings.json` in a text editor and fill in the `source` and `destination` fields with the corresponding paths:

    ```json
    {
        "Backups":
        [
            {
                "Name": "Example Backup",
                "Source": "C:\\Users\\YOUR_USER\\Documents\\ORIGINAL_FOLDER",
                "Destination": "C:\\Users\\YOUR_USER\\OneDrive\\BACKUP_FOLDER"
            },
        ],

        "LogDirectory": ".\\"
    }
    ```

4. Save your changes

5. Right-click on the file `robocopy.ps1` and select `Run with Powershell` to start backing up your files. To make it easier to run in the future, consider making a shortcut to the script as outlined in this guide: <https://www.tenforums.com/tutorials/97162-powershell-scripting-run-script-shortcut.html>

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

## Reference

See Microsoft's docs for details on the `robocopy` command: <https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy>