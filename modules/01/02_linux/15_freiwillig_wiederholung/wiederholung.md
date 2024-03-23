# Wiederholung: Linux Basics

- Die folgenden Aufgaben sind freiwillig und dienen der Wiederholung der wichtigsten Linux-Basics, die wir in den letzten Wochen behandelt haben.

## Aufgaben

- Beantworte die folgenden Fragen oder führe die Aufgaben aus.
- Bei den theoretischen Fragen reicht es, wenn du die Antwort in eigenen Worten formulierst.
- Bei den praktischen Aufgaben, erstelle einen Screenshot.

### Linux Basics

1. Was bedeutet Open Source Software?
2. Was ist eine Linux Distribution, gib Beispiele?
3. In welchen Bereichen wird Linux eingesetzt?
4. Was ist ein Kernel und was verwaltet er?

### Package Manager

1. Führe ein Update deines Systems durch. Welche Befehle hast du verwendet?
2. Was ist ein Paketmanager und wofür wird er verwendet?
3. Installiere folgendes Programm: `git`. Welche Befehle hast du verwendet?
4. Lösche das Programm `git` wieder. Welche Befehle hast du verwendet?

### Dateisystem

1. Welcher Standard wird für die Verzeichnisstruktur in Linux verwendet?
2. Was findet man im `/home` Verzeichnis?
3. Was findet man im `/etc` Verzeichnis?
4. Was findet man im `/var` Verzeichnis?
5. Was ist der `/tmp` Ordner und wieso ist er wichtig?
6. Was ist der Unterschied zwischen relativen und absoluten Pfaden?
7. Navigiere in deinem Terminal in das `/etc` Verzeichnis.
8. Navigiere von dort in das `/etc/cups` Verzeichnis, **nutze einen relativen Pfad**.
9. Navigiere in dein Home Verzeichnis, **nutze wieder einen relativen Pfad**.

### Text Editor und Scripting

1. Welche Texteditoren kennst du und welchen benutzt du?
2. Was sind dotfiles und welche Bedeutung haben sie?
3. Was macht das `.bashrc` File?
4. Erstelle ein neues Shell-Script mit dem Namen `hello.sh`, das dich mit deinem Namen begrüßt.
5. Führe das Shell-Script aus und erstelle einen Screenshot.
6. Wie kannst du es schaffen, dass dieses Shell Script jedes Mal ausgeführt wird, wenn du ein Terminal öffnest?

### Benutzer, Gruppen und Rechte

1. Was ist der Unterschied zwischen Benutzer und Gruppe?
2. Wie kannst du die Benutzer und Gruppen auf deinem System anzeigen?
3. Erstelle einen Benutzer mit dem Namen `nutzer`.
4. Erstelle eine neue Gruppe mit dem Namen `team`.
5. Füge den Benutzer `nutzer` zur Gruppe `team` hinzu.
6. Wurde der Benutzer erfolgreich hinzugefügt? Wie kannst du das überprüfen? Was muss noch getan werden?
7. Welche drei Arten von Berechtigungen gibt es für Dateien und Verzeichnisse?
8. Welche drei Berechtigungsgruppen gibt es?
9. Erstelle ein neues Verzeichnis `wdh`
10. Ändere die Berechtigungen so, dass der Besitzer alle Rechte hat, die Gruppe `team` Schreib- und Leserechte hat und alle anderen keine Rechte.
11. Überprüfe die Berechtigungen des Verzeichnisses.
12. Erstelle eine neue Datei `test.txt` im Verzeichnis `wdh`.
13. Ändere den Besitzer der Datei auf `nutzer`.

### Root und Sudo

1. Was ist der `root` Benutzer?
2. Was ist `sudo` und wofür wird es verwendet?
3. Was ist der Unterschied zwischen `root` und `sudo`?
4. Welche Datei verwaltet die `sudo` Berechtigungen?
5. Welches Kommando kannst du nutzen, um die `sudo` Berechtigungen zu bearbeiten?
6. Ändere diese Datei so ab, dass alle Nutzer der Gruppe `team`, wenn sie `sudo find /home` nicht nach dem Passwort gefragt werden.

### File Descriptors

1. Was ist stdin, stdout und stderr? (Beschreibe in eigenen Worten)
2. Wie kannst du die Ausgabe eines Befehls in eine Datei umleiten?
3. Wie kannst du die Ausgabe eines Befehls an ein anderes Programm weiterleiten?
4. Zeige dir den Inhalt der `/etc/passwd` Datei an.
5. Erstelle eine Pipeline mit dem letzten Befehl und suche nach dem Text "1000"
6. Erstelle eine weitere Pipeline, wie viele Zeilen gibt es, die ein `a` enthalten?

### Environment Variables

1. Was sind Environment Variables und wofür werden sie verwendet?
2. Wie kannst du alle Environment Variables auf deinem System anzeigen?
3. Wie kannst du eine neue Environment Variable erstellen? Erstelle eine Variable mit dem Namen `MY_VAR` und dem Wert `Hello World`.
4. Wie kannst du eine Environment Variable löschen? Lösche die Variable `MY_VAR`.
5. Auf welche Konventionen solltest du bei der Benennung von Environment Variables achten?
6. Wenn du den Befehl `cat` ausführst, wie findet dein System heraus, welches Programm ausgeführt werden soll?
7. Welche Environment Variable ...
  - ... Zeigt das aktuelle Verzeichnis an?
  - ... Zeigt den Benutzernamen an?
  - ... Zeigt den Hostnamen an?

### Scripting

1. Was macht das `#!` am Anfang eines Shell-Scripts? (Wie ist der Name)
2. Erstelle ein neues Shell Script `files.sh`, das `Hallo Welt` ausgibt.
3. Führe das Shell Script aus.
4. Erstelle eine neue Variable `dirs`, welche den Befehl `ls -1` ausführt und das Ergebnis speichert.
5. Gib den Inhalt der Variable `dirs` aus.
6. Überprüfe ob ein Argument übergeben wurde und gib es aus.
7. Sollte das Argument nicht vorhanden sein, gib eine Fehlermeldung aus und beende das Script.
8. Führe das Script mit und ohne Argument aus.
9. Teste ob ein Ordner unter dem Pfad von `dirs` existiert. Falls nicht gib eine Fehlermeldung aus und beende das Script.
10. Führe ein `ls` auf die Pfade in `dirs` aus.
11. Füge eine Schleife hinzu, die für jeden Pfad in `dirs` ein `ls` ausführt.

### Shell Globbing und Regular Expressions

1. Führe `ls` unter `/etc` aus auf alle Dateien / Ordner, die mit `a` beginnen.
2. Erstelle einen Regex, ...
  - ... der alle Vorkommnisse mit der Endung `.txt` matched.
  - ... der alle Vorkommnisse mit die mit Nummern beginnen und Enden matchen.
  - ... der alle Vorkommnisse mit die nur Kleinbuchstaben matchen.
  - ... der allen IP Adressen matcht. (z.B. `0.0.0.0` bis `255.255.255.255`)

### Archivierung und Kompression

1. Was ist der Unterschied zwischen Archivierung und Kompression?
2. Erstelle ein neues Archiv aus allen Dateien in deinem Home Verzeichnis.
3. Komprimiriere das Archiv mit GZIP.
4. Erstelle ein Zip Archiv aus allen Dateien in deinem Home Verzeichnis.
