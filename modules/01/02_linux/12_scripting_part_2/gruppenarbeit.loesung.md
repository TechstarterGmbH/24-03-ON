# Gruppenarbeit: Lösung

### Schritt 1: Argumentprüfung

Zuerst muss sichergestellt werden, dass beim Starten des Scripts ein Argument (der Pfad zur Quizdatei) übergeben wird. Das Script soll mit einer Fehlermeldung abbrechen, falls kein Argument vorhanden ist.

- `$#` gibt die Anzahl der übergebenen Argumente zurück.
- Wir testen hier, ob genau ein Argument übergeben wurde.
- ` -ne` ist ein Vergleichsoperator, der prüft, ob zwei Zahlen ungleich sind. (not equal)
- Falls die Anzahl der Argumente ungleich 1 ist, geben wir eine Fehlermeldung aus und beenden das Script mit `exit 1`.

```bash
#!/bin/bash

# Überprüfen, ob genau ein Argument übergeben wurde
if [ $# -ne 1 ]; then
    echo "Fehler: Bitte geben Sie genau einen Pfad zur Quizdatei an."
    exit 1
fi
```

### Schritt 2: Einlesen der Datei und Aufteilen in Frage und Antwort

Nun soll das Script die Datei lesen und jede Zeile in Frage und Antwort aufteilen. Dazu verwenden wir die Schleife `while` und `IFS` (Internal Field Separator), um die Zeilen anhand des Semikolons zu trennen.

```bash
quizDatei=$1

while IFS=';' read -r frage antwort
do
    echo "Frage: $frage"
    echo "Antwort: $antwort" # Zum Testen, später entfernen
done < "$quizDatei"
```

### Schritt 3: Benutzereingaben einlesen

Jetzt erweitern wir das Script, um Benutzereingaben zu lesen. Die eingegebene Antwort wird mit der korrekten Antwort verglichen.
- `read` wird verwendet, um die Benutzereingabe zu lesen.
- Die Variable `benutzerAntwort` speichert die Eingabe des Benutzers.

```bash
while IFS=';' read -r frage antwort
do
    echo "Frage: $frage"
    echo -n "Ihre Antwort: "
    read benutzerAntwort < /dev/tty
done < "$quizDatei"
```

### Schritt 4: Überprüfung der Antworten und Zählung der Punkte

Implementieren Sie eine bedingte Anweisung, um zu überprüfen, ob die Antwort des Benutzers mit der korrekten Antwort übereinstimmt. Zählen Sie die Anzahl der korrekten Antworten.
- (( )) wird verwendet, um arithmetische Operationen durchzuführen.
- `richtigeAntworten` zählt die Anzahl der korrekten Antworten.
- `gesamtFragen` zählt die Anzahl der gestellten Fragen.
- ((richtigeAntworten++)) erhöht die Anzahl der korrekten Antworten um 1. (Äquivalent zu `richtigeAntworten=$(($richtigeAntworten + 1))`)

```bash
richtigeAntworten=0
gesamtFragen=0

while IFS=';' read -r frage antwort
do
    echo "Frage: $frage"
    echo -n "Ihre Antwort: "
    read benutzerAntwort < /dev/tty
    
    if [ "$benutzerAntwort" = "$antwort" ]; then
        echo "Richtig!"
        ((richtigeAntworten++))
    else
        echo "Falsch. Die richtige Antwort ist: $antwort"
    fi
    
    ((gesamtFragen++))
done < "$quizDatei"
```

### Schritt 5: Ausgabe des Ergebnisses

Am Ende des Quizzes gibt das Script die Gesamtzahl der korrekten Antworten aus und gibt basierend auf der Leistung des Benutzers Feedback.

```bash
echo "Quiz beendet. Sie haben $richtigeAntworten von $gesamtFragen Fragen richtig beantwortet."

if [ $richtigeAntworten -eq $gesamtFragen ]; then
    echo "Ausgezeichnet!"
elif [ $richtigeAntworten -gt $(($gesamtFragen / 2)) ]; then
    echo "Gut gemacht, aber es gibt noch Raum für Verbesserung."
else
    echo "Mehr Glück beim nächsten Mal!"
fi
```

### Vollständiges Script

Das vollständige Script kombiniert alle Schritte und bietet eine interaktive Quiz-Anwendung, die die bereitgestellten Fragen aus einer Datei liest, den Benutzer nach seinen Antworten fragt und am Ende ein Feedback basierend auf der Anzahl der korrekten Antworten gibt.

```bash
#!/bin/bash

# Überprüfung, ob ein Argument übergeben wurde
if [ $# -eq 0 ]; then
    echo "Fehler: Bitte geben Sie den Pfad zur Quizdatei an."
    exit 1
fi

quizDatei=$1
richtigeAntworten=0
gesamtFragen=0

# Durchlaufen der Quizfragen
while IFS=';' read -r frage antwort
do
    echo "Frage: $frage"
    echo -n "Ihre Antwort: "
    read benutzerAntwort < /dev/tty
    
    
    if [ "$benutzerAntwort" = "$antwort" ]; then
        echo "Richtig!"
        ((richtigeAntworten++))
    else
        echo "Leider falsch. Die richtige Antwort ist: $antwort"
    fi
    
    ((gesamtFragen++))
done < "$quizDatei"

echo "Quiz beendet. Sie haben $richtigeAntworten von $gesamtFragen Fragen richtig beantwortet."

# Rückmeldung basierend auf der Anzahl der richtigen Antworten
if [ $richtigeAntworten -eq $gesamtFragen ]; then
    echo "Ausgezeichnet!"
elif [ $richtigeAntworten -gt $(($gesamtFragen / 2)) ]; then
    echo "Gut gemacht, aber es gibt noch Raum für Verbesserung."
else
    echo "Mehr Glück beim nächsten Mal!"
fi
```
