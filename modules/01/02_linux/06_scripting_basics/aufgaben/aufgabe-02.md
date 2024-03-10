# Praktische Aufgabe: Hinzufügen einer Überschrift und eines Datumsstempels

## Szenario

Nach dem Erfolg mit dem Script zur Sortierung der Gewinndaten möchte dein Chef nun, dass ihr das Script erweitert, um eine Überschrift und einen Datumsstempel in die Ergebnisdatei einzufügen.
Die Überschrift soll "Gewinnerliste" sein, und der Datumsstempel soll das aktuelle Datum anzeigen, an dem das Script ausgeführt wird.

## Ziel

Erweitere das bestehende Shell Script, damit es eine Überschrift und einen Datumsstempel an den Anfang der sortierten Gewinndaten in `sortierte_gewinndaten.txt` hinzufügt.

## Schritte zur Erweiterung des Scripts

### Schritt 1: Script modifizieren

Öffne `sort_gewinndaten.sh` in einem Texteditor, um es für die Erweiterung vorzubereiten.

### Schritt 2: Überschrift und Datumsstempel hinzufügen

Füge Code zum Script hinzu, der eine Überschrift und das aktuelle Datum an den Anfang der Ergebnisdatei setzt.

- Mit `>>` kannst du Text an das Ende einer Datei anhängen.
- Verwende `date +"%d.%m.%Y"` um das aktuelle Datum im Format "TT.MM.JJJJ" zu erhalten.

### Schritt 3: Sortierte Daten anhängen

Stellt sicher, dass die sortierten Daten unter der Überschrift und dem Datumsstempel in der Datei erscheinen.
