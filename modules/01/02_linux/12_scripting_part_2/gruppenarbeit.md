# Gruppenaufgabe: Entwicklung eines interaktiven Quiz-Scripts

**Ziel**: Das Ziel dieser Aufgabe ist es, ein Bash-Script zu entwickeln, das ein einfaches, interaktives Quiz darstellt. Das Script soll Fragen aus einer Datei lesen, den Benutzer nach Antworten fragen und am Ende das Quizergebnis anzeigen.

**Anforderungen**:

1. **Vorbereitung**:
   - Kopiere dir die Datei `quizfragen.txt` in dein Arbeitsverzeichnis. Es kann sein, dass du erst noch das geteilte Clibboard für VirtualBox einrichten musst, um den Inhalt der Datei zu kopieren. [https://www.tecchannel.de/a/virtualbox-austausch-zwischen-wirts-und-gastsystem-per-zwischenablage,2051493](https://www.tecchannel.de/a/virtualbox-austausch-zwischen-wirts-und-gastsystem-per-zwischenablage,2051493)

2. **Script-Argumente**:
   - Das Script soll den Pfad zur Datei mit den Quizfragen als Argument akzeptieren. Überprüft im Script, ob dieses Argument beim Start übergeben wurde.

3. **Schleifenkonstrukt**:
   - Verwendet eine Schleife, um durch alle Zeilen in der Quizdatei zu iterieren. Für jede Zeile solltet ihr die Frage ausgeben und auf eine Antwort des Benutzers warten.
   Tipp: Verwende folgendes Schema um die Datei zu lesen:
   - Achte auf das Ende des `while`-Loops, hier wird die Datei mit dem `<`-Operator geöffnet (also einfach `< dateiname`)

```bash
while IFS=';' read -r frage antwort
do
    echo "Frage: $frage"
    echo "Antwort: $antwort"
done < "$quizDatei"
```

4. **Bedingte Anweisungen**:
   - Nachdem der Benutzer geantwortet hat, überprüft mit einer bedingten Anweisung, ob die Antwort korrekt ist. Gebt entsprechendes Feedback aus und aktualisiert die Anzahl der korrekt beantworteten Fragen.

5. **Benutzereingaben**:
   - Lest die Antworten des Benutzers über die Kommandozeile ein. Vergleicht diese mit den richtigen Antworten aus der Datei.
   - Tipp: Verwende `read` um die Benutzereingabe zu lesen.
    `read benutzerAntwort < /dev/tty`

6. **Ergebnisausgabe**:
   - Am Ende des Quizzes gebt die Anzahl der richtig beantworteten Fragen aus. Basierend auf der Leistung könnt ihr auch unterschiedliches Feedback geben.

**Schritte zur Umsetzung**:

1. **Datei vorbereiten**:
   - Erstelle die Textdatei mit den quizfragen.txt in deinem Arbeitsverzeichnis. Kopiere die Fragen und Antworten aus der Datei `quizfragen.txt` in die neue Datei.

2. **Argumentprüfung**:
   - Beginnt euer Script damit, zu prüfen, ob beim Aufruf ein Argument (der Pfad zur Quizdatei) übergeben wurde. Falls nicht, soll eine Fehlermeldung ausgegeben und das Script beendet werden.

3. **Durchlaufen der Fragen**:
   - Implementiert eine Schleife, die jede Zeile eurer Quizdatei liest. Halte dich an das oben gezeigte Schema, um die Datei zu lesen.

4. **Fragen stellen und Antworten prüfen**:
   - Innerhalb der Schleife stellt dem Benutzer die Frage und lest seine Antwort ein. Verwendet dann eine bedingte Anweisung, um zu überprüfen, ob die Antwort des Benutzers mit der korrekten Antwort übereinstimmt. Gebt entsprechendes Feedback.

5. **Zählen der Ergebnisse**:
   - Führt eine Zählvariable, die die Anzahl der richtigen Antworten speichert. Aktualisiert diese Variable basierend auf den Antworten des Benutzers.

6. **Feedback geben**:
   - Nachdem alle Fragen beantwortet wurden, gebt die Gesamtzahl der korrekten Antworten aus. Entscheidet euch, wie ihr das Feedback gestaltet, abhängig von der Anzahl der richtig beantworteten Fragen.
