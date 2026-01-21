<#
Übung 6a: - Schreibe eine Funktion die ein Logfile in deinem Übungsverzeichnis schreibt.
            Als Parameter soll die Lognachricht, der Nachrichttyp(Info oder Error) mitgegeben werden.
            Die Lognachricht soll folgendes Format haben: 22.08.2023 07:16 - Info - Das ist die Lognachricht
Übung 6b: - Schreibe die Dateiennamen eures %TEMP% Verzeichnisses mit Hilfe der Funktion in das Logfile.
#>

function createLogFile{
    param (
        [string]$Logmessage,
        [ValidateSet("Info", "Error")]
        [string]$MessageType
    )
        $logFilePath = Join-Path $PSScriptRoot "Scriptlog.log"
        $timeStamp = Get-Date -Format "dd.MM.yyyy HH:mm"
        $logEntry = "$timeStamp - $MessageType - $Logmessage"

        Add-Content -Path $logFilePath -Value $logEntry
}

Get-ChildItem $env:TEMP -File | ForEach-Object {
    createLogFile -logmessage $_.Name -messageType "Info"
}

