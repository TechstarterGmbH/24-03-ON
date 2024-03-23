# Praxisaufgabe: Archivieren und Komprimieren mit TAR und GZIP

## Zielsetzung

Diese Praxisaufgabe zielt darauf ab, dein Verständnis und deine Fähigkeiten in der Anwendung von Archivierungs- und Kompressionswerkzeugen, speziell TAR und GZIP, zu festigen. Du wirst lernen, wie du Dateien und Ordner archivierst und komprimierst, um Speicherplatz zu sparen und die Dateiübertragung zu beschleunigen.

## Aufgabenstellung

1. **Erstelle einen Übungsordner auf deinem Computer:** Nenne diesen Ordner `meine_dokumente`.

2. **Füge Dateien hinzu:**
   - Erstelle innerhalb von `meine_dokumente` drei Textdateien (`dokument1.txt`, `dokument2.txt`, `dokument3.txt`). Jede Datei sollte einige Zeilen Text enthalten.

3. **Archiviere den Ordner:**
   - Verwende das TAR-Werkzeug, um den Ordner `meine_dokumente` zu archivieren. Nenne die Archivdatei `meine_dokumente.tar`.

4. **Komprimiere das Archiv:**
   - Komprimiere die `meine_dokumente.tar`-Datei mit GZIP. Das Ergebnis sollte eine Datei namens `meine_dokumente.tar.gz` sein.

5. **Entpacken und Entkomprimieren:**
   - Entkomprimiere und entpacke die `meine_dokumente.tar.gz` Datei in einen neuen Ordner namens `entpackte_dokumente`, um sicherzustellen, dass der Prozess erfolgreich war und alle Originaldateien unverändert sind.

## Befehle zur Referenz

- TAR-Archivierung: `tar -cvf meine_dokumente.tar meine_dokumente/`
- GZIP-Komprimierung: `gzip meine_dokumente.tar`
- GZIP-Entkomprimierung: `gzip -d meine_dokumente.tar.gz`
- TAR-Entpackung: `tar -xvf meine_dokumente.tar -C entpackte_dokumente/`

## Hinweise

- Achte darauf, dass du die Terminalbefehle im richtigen Verzeichnis ausführst, um Pfade und Dateizugriffe korrekt zu handhaben.
- Die Option `-c` in TAR steht für "create" (erstellen), `-v` für "verbose" (ausführliche Ausgabe), `-f` für "file" (Datei), `-x` für "extract" (extrahieren), und `-C` wird verwendet, um das Zielverzeichnis für das Entpacken anzugeben.
- Bei GZIP steht `-d` für "decompress" (entkomprimieren).
