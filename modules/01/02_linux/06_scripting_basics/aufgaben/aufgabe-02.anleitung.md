# Detaillierte Schritt-für-Schritt Anleitung

## Schritt 1: Script öffnen und vorbereiten

Öffnet das bestehende Script `sort_gewinndaten.sh` in einem Texteditor.

```bash
nano sort_gewinndaten.sh
```

## Schritt 2: Überschrift und Datumsstempel hinzufügen

Fügt am Anfang des Scripts, bevor die sortierten Daten generiert werden, folgenden Code ein:

```bash
echo "Gewinnerliste" > sortierte_gewinndaten.txt
echo "Erstellt am: $(date +"%d.%m.%Y")" >> sortierte_gewinndaten.txt
```

Der erste `echo`-Befehl schreibt die Überschrift in die Datei und überschreibt den bisherigen Inhalt. Der zweite `echo`-Befehl fügt den Datumsstempel hinzu, wobei `>>` sicherstellt, dass der Inhalt angehängt und nicht überschrieben wird.

## Schritt 3: Sortierte Daten anhängen

Ändert die Zeile im Script, die die sortierten Daten in die Datei schreibt, von:

```bash
echo "$sortierte_daten" > sortierte_gewinndaten.txt
```

zu:

```bash
echo "$sortierte_daten" >> sortierte_gewinndaten.txt
```

So stellt ihr sicher, dass die sortierten Daten unter der Überschrift und dem Datumsstempel angehängt werden.

## Schritt 4: Script speichern und ausführen

- Speichert das geänderte Script und verlasst den Editor.
- Stellt sicher, dass das Script ausführbar ist: `chmod +x sort_gewinndaten.sh`
- Führt das Script aus: `./sort_gewinndaten.sh`
- Überprüft das Ergebnis: `cat sortierte_gewinndaten.txt`

## Erwartetes Ergebnis

Die `sortierte_gewinndaten.txt` sollte nun so aussehen:

```
Gewinnerliste
Erstellt am: [aktuelles Datum]
[Alice 300]
[Bob 450]
...
```
