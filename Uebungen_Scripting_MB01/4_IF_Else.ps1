<#
a: - Überprüfe auf deinem Gerät ein Prozess mit dem Namen "OneNote" läuft und gebe die ID des Prozesses aus
b: - Wenn der Prozess nicht läuft, gebe einen folgenden String aus "Prozess OneNote läuft nicht."
c: - Überprüfe ob in deinem Scriptverzeichnis die Datei "Scriptlog.log" existiert. Falls nicht erstelle die Datei mit dem Inhalt "Script gestartet"
#>

$oneNoteProcess = Get-Process -Name "OneNote"

if ($oneNoteProcess) {
    Write-Output "Aufgabe a: $($oneNoteProcess.Id)"
}
else { # Aufgabe b:
    Write-Output "Prozess OneNote läuft nicht."
}

# Aufgabe c:
$logFile = Join-Path $PSScriptRoot "Scriptlog.log"

if (-not (Test-Path $logFile)) {
    "Script gestartet" | Out-File -FilePath $logFile
} else {
    Write-Output "Script da!"
}