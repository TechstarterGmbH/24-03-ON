# Praktische Einführung in Root und Sudo

Diese Anleitung führt dich durch die praktische Verwendung von Root und Sudo in einem Linux-System.
Ziel ist es, ein tieferes Verständnis für Benutzerrechte und deren Verwaltung zu entwickeln.

## Ziel

- Grundlegendes Verständnis für Benutzerrechte und Sudo
- Neue Gruppe erstellen
- Sudoers-Datei anpassen
- Alle Nutzer der neuen Gruppe können den Befehl `cat` ausführen mit Root-Rechten, ohne nach einem Passwort gefragt zu werden

## Am Anfang: erste Schritte

### Schritt 1: Wer bin ich im System?

- **Befehl:** `whoami`
- **Erklärung:** Zeigt deinen aktuellen Benutzernamen im System an. Dies hilft dir zu verstehen, unter welchem Benutzer du arbeitest.
- **Mit Sudo:** `sudo whoami`
- **Erklärung:** Führt `whoami` mit Root-Rechten aus. Sollte `root` als Antwort geben, was zeigt, dass `sudo` dir temporäre Root-Rechte verleiht.

### Schritt 2: Datei erstellen und Benutzer anschauen

- **Befehl:** `touch myfile.txt` und dann `ls -l myfile.txt`
- **Erklärung:** `touch` erstellt eine neue Datei. `ls -l` zeigt Details der Datei, einschließlich des Besitzers (dein Benutzername).
- **Mit Sudo:** `sudo touch myrootfile.txt` und `sudo ls -l myrootfile.txt`
- **Erklärung:** Erstellt eine Datei mit Root-Rechten. `ls -l` zeigt, dass die Datei dem Benutzer `root` gehört, was die Auswirkung von `sudo` auf Dateieigentumsrechte illustriert.

### Schritt 3: /etc/sudoers anschauen und beschreiben

- **Befehl:** `sudo cat /etc/sudoers`
- **Erklärung:** Zeigt die Konfiguration von Sudo-Rechten. Es ist wichtig, die Syntax und Regeln in dieser Datei zu verstehen, da sie bestimmt, welche Benutzer oder Gruppen `sudo`-Befehle ausführen dürfen.
- Schaue dir zur Erklärung der Datei folgenden Artikel an: [https://wiki.ubuntuusers.de/sudo/Konfiguration/](https://wiki.ubuntuusers.de/sudo/Konfiguration/)

## Aufgabe: Neue Gruppe erstellen und sudoers-Datei anpassen

### Schritt 1: Neue Gruppe erstellen

- **Befehl:** `sudo groupadd powergroup`
- **Erklärung:** Erstellt eine neue Benutzergruppe namens `powergroup`. Das Verwalten von Benutzergruppen hilft bei der Organisation von Benutzerrechten und -zugriffen.

### Schritt 2: sudoers-Datei anpassen

- **Zugriff mit:** `sudo visudo`
- **Erklärung:** `visudo` ist der sichere Weg, um die `sudoers`-Datei zu bearbeiten. Die hinzugefügte Zeile erlaubt allen Mitgliedern der Gruppe `powergroup`, den Befehl `cat` als jeder Benutzer auszuführen, ohne nach einem Passwort gefragt zu werden. Dies demonstriert, wie spezifische Befehle für bestimmte Gruppen freigegeben werden können.

### Schritt 3: Testen

- Nutze für den nächsten Schritt entweder den `testuser` den wir in einer vorherigen Anleitung erstellt haben oder erstelle einen neuen Benutzer mit `sudo adduser myuser`
- **Benutzer hinzufügen:** `sudo usermod -aG powergroup myuser`
- Danach muss der Benutzer sich neu anmelden, damit die Gruppenänderung wirksam wird.
- **Testen:** Versuche, eine Datei, die normalerweise Root-Rechte erfordert, mit `sudo cat /etc/shadow` zu lesen.
- **Erklärung:** Wenn die Konfiguration erfolgreich war, kannst du als Mitglied der `powergroup` die Datei ohne Passwortabfrage lesen. Dies zeigt die Anwendung und das Potenzial von angepassten Sudo-Rechten.
