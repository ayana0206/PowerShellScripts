<#
a: - Füge zum Array "$fruits" drei weitere Früchte hinzu
b: - Gebe die letzten drei Einträge des "$fruits" Arrays auf die Konsole aus
c: - Schreibe alle laufenden Prozesse in ein Array und gebe die ersten drei Einträge auf der Konsole aus

#>

$fruits = "Apple","Pear","Banana","Orange"

$fruits += "Peach", "Pinapple", "Strawberry"
Write-Output("Aufgabe a: $fruits")

$fruit = $fruits | Select-Object -Last 3
Write-Output("Aufgabe b: $fruit")

$process = Get-Process 
$firstProcessses = $process | Select-Object -First 3
Write-Output ("Aufgabe c: $firstProcessses")
