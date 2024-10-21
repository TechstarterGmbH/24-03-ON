### Anleitung zur Verwendung von User Data auf einer EC2-Instance

#### Schritt 1: Erstellen der User Data

1. Öffne deinen bevorzugten Texteditor (z. B. VS Code) und erstelle eine neue Datei mit dem Namen `userdata.sh`.
   
2. Füge den folgenden Code in die `userdata.sh`-Datei ein:

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<html><body><h1>Hello World!</h1></body></html>" > /var/www/html/index.html
```
1. Führt ein Systemupdate durch (`yum update -y`).
2. Installiert den Apache Webserver (`yum install -y httpd`).
3. Startet den Apache Webserver (`systemctl start httpd`).
4. Aktiviert den Apache Webserver, damit er beim Start automatisch gestartet wird (`systemctl enable httpd`).
5. Erstellt eine einfache HTML-Datei mit der Nachricht "Hello World!" und speichert sie im Standardverzeichnis des Apache-Webservers (`echo "<html><body><h1>Hello World!</h1></body></html>" > /var/www/html/index.html`).

Dieses Skript wird beim Starten der EC2-Instance ausgeführt und ermöglicht es, die Instance automatisch für bestimmte Aufgaben zu konfigurieren, in diesem Fall die Einrichtung eines einfachen Webservers mit einer Willkommensnachricht.

3. speichere die Datei so ab, dass du sie wiederfindest.

#### Schritt 2: User Data auf EC2-Instance anwenden

1. Öffne die AWS Management Console und navigiere zu EC2.

2. Starte eine neue EC2-Instance und navigiere zum Konfigurationsbereich.

3. Im Konfigurationsbereich findest du einen Abschnitt namens "Advanced Details" oder "Configure Instance Details". Dort gibt es ein Feld namens "User Data".

4. Kopiere den Inhalt der `userdata.sh`-Datei und füge ihn in das "User Data"-Feld ein.

5. Starte die EC2-Instance.

#### Schritt 3: Überprüfen des Webservers

1. kopiere die öffentliche IP-Adresse der Instanz und gebe sie in einem neuen Browser-Tab ein (http://die.ip.adresse)

#### Schritt 4: Vergleich des HTML Inhaltes

1. Öffne VS Code und erstelle eine neue Datei namens `index.html`.

2. Füge den folgenden HTML-Code in die `index.html`-Datei ein:

```html
<html>
<body>
  <h1>Hello World!</h1>
</body>
</html>
```

3. Speichere die `index.html`-Datei.

4. Kopiere den Pfad zur `index.html`-Datei, indem du auf die Datei mit einem rechtsklick klickst, danach wählst du `Dateipfad kopieren` an.

2. Öffne deinen bevorzugten Webbrowser und füge den Pfad zur `index.html`-Datei ein.

3. Drücke die Eingabetaste, um die Anfrage zu senden.

#### Ergebnis

- Die User Data wird beim Start der EC2-Instance ausgeführt. Sie aktualisiert das System, installiert den Apache Webserver und erstellt eine einfache HTML-Datei mit der Nachricht "Hello World!" im Verzeichnis `/var/www/html/`.

- Die `index.html`-Datei wird in VS Code erstellt und enthält die Nachricht "Hello World!".

- Durch Einfügen des Pfads zur `index.html`-Datei in den Webbrowser und Bestätigen per Enter wird die HTML-Seite mit der Nachricht "Hello World!" angezeigt.

#### Aufräumen

Terminiere die EC2 Instanz