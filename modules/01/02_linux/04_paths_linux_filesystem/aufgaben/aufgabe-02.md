# Aufgabe 2: Linux-Dateisystem-Praxis

In dieser Aufgabe wirst du dein Wissen zum Thema Linux Dateisystem in die Praxis umsetzen.

Erstelle nach jeder Aufgabe einen Screenshot und gebe diesen als Lösung ab.

## Aufgabe 1: Erkunde dein Home-Verzeichnis

1. Öffne das Terminal.
2. Navigiere in dein Home-Verzeichnis, falls du nicht bereits dort bist, mit `cd`.
3. Liste alle Dateien und Verzeichnisse in deinem Home-Verzeichnis auf mit `ls -la`.
4. Erstelle einen neuen Ordner namens `LinuxPraxis` mit `mkdir LinuxPraxis`.
5. Wechsle in den neuen Ordner mit `cd LinuxPraxis`.

## Aufgabe 2: Erstelle einen neuen Nutzer

1. Schaue dir die Datei `/etc/passwd` an, um eine Liste der Nutzerkonten auf deinem System zu sehen.
   - Verwende `cat /etc/passwd` um den Inhalt der Datei anzuzeigen.
2. Schaue dir an welche home-Verzeichnisse es gibt, indem du `ls /home` eingibst.
3. Wechsle zu dem Root Account mit `su -`
  - Du wirst nach deinem Password gefragt.
4. Erstelle einen neuen Nutzer namens `testuser` mit dem Befehl `adduser testuser`.
   - Du wirst nach einem Passwort und anderen Informationen gefragt.
5. Wechsle zurück zu deinem Nutzer mit `exit`.
6. Schaue dir die Datei `/etc/passwd` erneut an, um zu sehen, ob der neue Nutzer hinzugefügt wurde.
7. Schaue dir das home-Verzeichnis des neuen Nutzers an, indem du `ls /home/testuser` eingibst.

## Aufgabe 3: Erforsche das /etc-Verzeichnis

1. Wechsle in das `/etc`-Verzeichnis mit `cd /etc`.
2. Zeige den Inhalt der Datei `hosts` mit `cat hosts` an. (Hinweis: Diese Datei wird für die Zuordnung von Hostnamen zu IP-Adressen verwendet.)
