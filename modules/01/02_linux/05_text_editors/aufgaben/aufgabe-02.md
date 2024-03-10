# Aufgabe 2: Erstellen eines einfachen Bash-Scripts mit Nano

## Ziel der Aufgabe

Du wirst ein einfaches Bash-Script erstellen, das einige grundlegende Shell-Kommandos ausführt.
Dies wird dein Verständnis für das Editieren von Textdateien im Linux-System vertiefen und dich optimal auf das Thema Scripting vorbereiten.

**Hinweis:**

- Es ist gerade noch nicht wichtig, dass du alle Teile dieser Aufgabe verstehst.
- Wir werden in den kommenden Kursen alle Konzepte für das Schreiben von Bash-Scripts ausführlich behandeln.
- Es geht nur darum, dir eine erste Erfahrung mit dem Schreiben von Scripts zu geben.

## Schritte

1. **Script-Datei erstellen:**
   - Öffne ein Terminal.
   - Verwende den Befehl `touch script.sh`, um eine neue Script-Datei zu erstellen.

2. **Script mit Nano bearbeiten:**
   - Öffne die Datei `script.sh` mit Nano durch Eingabe von `nano script.sh`.
   - Du befindest dich jetzt im Nano-Editor, wo du dein Script schreiben wirst.

3. **Bash-Script schreiben:**
   - Füge am Anfang deines Scripts die Shebang-Zeile ein: `#!/bin/bash`. Diese Zeile sagt dem System, dass es sich um ein Bash-Script handelt.
   - Schreibe ein einfaches Script, das folgendes tut:
     - Ausgabe deines Namens auf dem Bildschirm: `echo "Hallo, ich bin <dein Name>!"`
     - Ausgabe des aktuellen Datums: `echo "Heutiges Datum: $(date)"`
     - Auflisten der Dateien im aktuellen Verzeichnis: `echo "Aktuelle Dateien im Verzeichnis: $(ls)"`
   - Dein Script sollte so aussehen:

     ```bash
     #!/bin/bash
     echo "Hallo, ich bin <dein Name>!"
     echo "Heutiges Datum: $(date)"
     echo "Aktuelle Dateien im Verzeichnis: $(ls)"
     ```

4. **Script speichern und beenden:**
   - Speichere das Script in Nano mit `Ctrl + O` und bestätige den Dateinamen.
   - Verlasse Nano mit `Ctrl + X`.

5. **Script ausführbar machen:**
   - Gib deinem Script Ausführungsrechte mit dem Befehl `chmod +x script.sh`.
   - Dies ermöglicht es dir, das Script später auszuführen.
   - Wir werden in einem zukünftigen Kurs mehr über Dateiberechtigungen lernen.

6. **Script ausführen:**
   - Führe dein Script aus mit `./script.sh`.
   - Überprüfe, ob die Ausgaben deinen Erwartungen entsprechen.

## Abgabe

- Erstelle einen Screenshot von deinem Terminal, nachdem du das Script erfolgreich ausgeführt hast.
