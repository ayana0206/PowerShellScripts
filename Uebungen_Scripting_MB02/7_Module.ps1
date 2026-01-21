<#
Übung 7a: - Erstelle ein Module Math mit den Funktionen "Sum", "Sub", "Div" und "Mul"
             Als Beispiel fuer die Methode Mul soll folgender String returned werden: 3 * 9 = 27
             Erstelle ein Script, in welchem das Module geladen wird und rufe alle Funktionen auf
Übung 7b: - Gib alle Funktionen des Moduls Math auf die Konsole aus
#>


Import-Module "$PSScriptRoot\Math"

Sum 10 5
Sub 10 5
Mul 3 9
Div 10 2

