# Aufgabe 2: Praxis

### Praktische Aufgabe: Einfache Dateiauflistung

**Ziel**: Entwickle ein Shell Script, das alle Dateien in einem Verzeichnis auflistet und dabei unterscheidet, ob es sich um Verzeichnisse, ausführbare Dateien oder andere Dateitypen handelt. Das Script soll in einem von dir gewählten Verzeichnis ausgeführt werden.

**Aufgabenstellung**:

1. **Script-Setup**:
   - Erstelle eine neue Datei namens `list_files.sh` und mache sie ausführbar mit dem Befehl `chmod +x list_files.sh`.

2. **Argument-Überprüfung**:
   - Dein Script soll ein Argument akzeptieren: den Pfad zum Verzeichnis, das durchsucht werden soll. Prüfe, ob ein Argument übergeben wurde. Wenn nicht, gib eine Hilfemeldung aus und beende das Script.

3. **Verzeichnis durchlaufen**:
   - Verwende eine Schleife, um durch alle Einträge im spezifizierten Verzeichnis zu iterieren.

4. **Dateitypen identifizieren**:
   - Innerhalb der Schleife, verwende bedingte Anweisungen, um zu bestimmen, ob ein Eintrag ein Verzeichnis, eine ausführbare Datei oder ein anderer Dateityp ist.
   - Für Verzeichnisse, gib etwas aus wie: `[Verzeichnis] name_des_verzeichnisses`
   - Für ausführbare Dateien: `[Ausführbar] name_der_datei`
   - Für alle anderen Dateien: `[Datei] name_der_datei`

5. **Ergebnis**:
   - Das Script soll die sortierte Liste mit den entsprechenden Markierungen im Terminal ausgeben.

**Hinweise zur Umsetzung**:

- Beginne dein Script mit dem Shebang `#!/bin/bash`, um den Bash-Interpreter zu nutzen.
- Verwende `$1`, um auf das übergebene Verzeichnisargument zuzugreifen.
- Verwende `basename` um nur den Dateinamen zu extrahieren.
- Die Überprüfung, ob ein Eintrag ein Verzeichnis oder eine ausführbare Datei ist, kann mit den `-d` und `-x` Test-Operatoren innerhalb einer if-Anweisung erfolgen.
- Verwende `echo` für Ausgaben im Terminal.
