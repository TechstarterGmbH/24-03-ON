# Aufgabe 2: EC2 Praxis

In dieser Aufgabe wirst du dein theoretisches Wissen über EC2 in die Praxis umsetzen. Du wirst mehrere EC2-Instanzen erstellen, konfigurieren und verwalten.

## Schritte

1. **Erstelle eine EC2-Instanz**
   - Wähle ein Betriebssystem deiner Wahl (z.B. Amazon Linux 2).
   - Wähle einen Instanztyp (z.B. `t2.micro`).
   - **Stelle sicher, dass du die HTTP-Port 80 in der Sicherheitsgruppe öffnest.**
   - Konfiguriere die Instanz mit den Standardeinstellungen.
   - Starte die Instanz.

2. **Verbinde dich mit der EC2-Instanz**
  - Verbinde dich mit der Instanz
  - Gehe zu den Einstellungen der Instanz und klicke auf `Verbinden`.

3. **Installiere Software auf der EC2-Instanz**
  - Verwende den Paketmanager deines Betriebssystems (z.B. `dnf` für Amazon Linux).

```bash
sudo dnf update -y # Wir aktualisieren die Paket Liste
sudo dnf install -y httpd # Wir installieren den Apache Webserver
sudo systemctl start httpd # Wir starten den Apache Webserver
sudo systemctl enable httpd # Wir aktivieren den Apache Webserver beim Start
echo "Hello World from EC2" | sudo tee /var/www/html/index.html # Wir schreiben die Standardindexseite
```

4. **Öffne die öffentliche IP-Adresse der Instanz in deinem Webbrowser**
  - Kopiere die öffentliche IP-Adresse der Instanz und füge sie in deinen Webbrowser ein.
  - Du solltest die Standardindexseite des Apache-Webservers sehen.
  - Stelle sicher, dass du `http://` vor der IP-Adresse verwendest.

5. **Ändere die Standardindexseite**
  - Bearbeite die Datei `/var/www/html/index.html` und ändere den Text.
  - Aktualisiere die Seite in deinem Webbrowser, um die Änderungen zu sehen.

6. **Beende und lösche die EC2-Instanz**
  - Beende die Instanz, um Kosten zu sparen.
  - Lösche die Instanz, wenn du sie nicht mehr benötigst.

7. **Freiwillige Aufgabe: Erstelle eine weitere EC2-Instanz**
  - Erstelle dir eine weitere EC2-Instanz mit einem anderen Betriebssystem oder Instanztyp (nicht alle Instanztypen sind in der Sandbox erlaubt).
  - Versuche eine andere Software zu installieren und zu konfigurieren.
