# Gruppenaufgabe: Sortieren von Gewinndaten mit einem Shell Script

## Szenario

Ihr seid mit der Aufgabe betraut, eine Liste von Gewinndaten, die ihr von eurem Chef erhalten habt, zu sortieren.
Die Daten sind in einer Textdatei `gewinndaten.txt` gespeichert und enthalten mehr als 30 Datensätze mit dem Namen des Gewinners und dem entsprechenden Gewinn, getrennt durch ein Leerzeichen. Um diese Aufgabe effizient zu bewältigen, entscheidet ihr euch, ein Shell Script zu verwenden.

## Fiktiver Datensatz (gewinndaten.txt)

```
Alice 300
Bob 450
Charlie 200
Dave 500
Eve 350
```

## Ziele

- Erstellt ein Shell Script, das die Daten in `gewinndaten.txt` basierend auf dem Gewinnbetrag sortiert.
- Speichert das Ergebnis in einer neuen Datei `sortierte_gewinndaten.txt`.

## Schritt-für-Schritt Anleitung

### Schritt 1: Verstehen der Aufgabe

Euer Ziel ist es, die Daten in `gewinndaten.txt` so zu sortieren, dass die Einträge in aufsteigender Reihenfolge des Gewinns angeordnet sind.

Als erstes müsst ihr die Datei `gewinndaten.txt` erstellen und die oben genannten Daten hineinschreiben.

```bash
touch gewinndaten.txt
nano gewinndaten.txt
```

Dann einfach die oben genannten Daten in die Datei kopieren und speichern.
(Im Terminal Einfügen: Rechtsklick -> Einfügen oder Strg+Shift+V)

### Schritt 2: Erstellung des Shell Scripts

Erstellt ein neues Shell Script mit dem Namen `sort_gewinndaten.sh` und öffnet es in einem Texteditor.

```bash
touch sort_gewinndaten.sh
nano sort_gewinndaten.sh
```

Dann fügt ihr in das neue Script den Shebang an der ersten Zeile ein, um zu definieren, dass es sich um ein Shell Script handelt.

```bash
#!/bin/bash
```

### Schritt 3: Variable erstellen

Als Nächstes speichert ihr den Inhalt der Datei in einer Variable, um damit weiterarbeiten zu können.

```bash
daten=$(cat gewinndaten.txt)
echo "Folgende Daten wurden gelesen:"
echo "$daten"
```

Mit diesem Befehl lest ihr den Inhalt der Datei und weist ihn der Variable `daten` zu.
Danach gebt ihr den Inhalt der Variable aus, um sicherzustellen, dass die Daten korrekt gelesen wurden.

### Schritt 4: Daten sortieren

Jetzt sortiert ihr die Daten in der Variable `daten` und speichert das Ergebnis in einer neuen Variable `sortierte_daten`.

```bash
sortierte_daten=$(echo "$daten" | sort -k2 -n)
echo "Folgende Daten wurden sortiert:"
echo "$sortierte_daten"
```

### Schritt 5: Ausgabe in eine neue Datei umleiten

Jetzt leitet ihr die sortierten Daten in eine neue Datei um.

```bash
echo "$sortierte_daten" > sortierte_gewinndaten.txt
```

Der Befehl `echo "$sortierte_daten"` gibt den Inhalt der Variable `sortierte_daten` aus, und `>` leitet diese Ausgabe in die Datei `sortierte_gewinndaten.txt` um. Wenn diese Datei noch nicht existiert, wird sie erstellt. Wenn sie bereits existiert, wird ihr Inhalt überschrieben.

Wir werden in zukünftigen Kurstagen noch genauer auf das `>`-Zeichen und andere Möglichkeiten der Ausgabeumleitung eingehen.

### Schritt 6: Überprüfung

- Speichert das Script und schließt den Texteditor.
- Gebt dem Script die Ausführungsberechtigung.

```bash
chmod +x sort_gewinndaten.sh
```

- Führt das Script aus.

```bash
./sort_gewinndaten.sh
```

- Zum Schluss solltet ihr überprüfen, ob euer Script korrekt funktioniert hat, indem ihr den Inhalt der neuen Datei anseht:

```bash
cat sortierte_gewinndaten.txt
```

Dieser Befehl zeigt den Inhalt von `sortierte_gewinndaten.txt` an, sodass ihr überprüfen könnt, ob die Daten wie gewünscht sortiert wurden.

## Zusammenfassung

Durch diese Aufgabe lernt ihr, wie man mit Shell Scripting grundlegende Dateioperationen ausführt, Variablen verwendet und Ausgaben in Dateien umleitet. Es ist ein einfacher Einstieg in die Automatisierung von Routineaufgaben mit Shell Scripts.
