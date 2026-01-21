<#
a: - Schreibe alle Dateinamen und ihre Dateigrösse des Verzeichnisses C:\Windows\System32 in ein Array
b: - Erstelle ein neues Array mit allen Files die grösser als 3MB sind. Speichere nur Dateinamen und Dateigrösse
c: - Loope durch alle laufenden Prozesse und beende die Schlaufe beim ersten Prozess der im Namen mit einem O beginnt. 
            Gebe den Namen des Prozesses und Anzahl Durchgänge auf der Konsole aus.
#>

$files = Get-ChildItem "C:\Windows\System32" -File | Select-Object Name, Length

Write-Output $files

$bigFiles = Get-ChildItem "C:\Windows\System32" -File | Select-Object Name, Length | Where-Object { $_.Length -gt 3MB }

Write-Output $bigFiles

$count = 0

foreach ($process in Get-Process) {
    $count++
    if ($process.Name.StartsWith("O")) {
        
        Write-Output "Prozessname: $($process.Name)"
        Write-Output "Anzahl Durchgänge: $($count)"
        break
    }
}