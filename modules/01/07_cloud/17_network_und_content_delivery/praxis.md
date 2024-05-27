# Praxisaufgabe: AWS Global Accelerator konfigurieren

## Ziel
Konfiguriere einen AWS Global Accelerator, der den Datenverkehr zu einer EC2-Instanz weiterleitet, auf der eine einfache Apache-Website läuft.

## Schritte

### Schritt 1: Erstellen einer EC2-Instanz

1. **Anmelden in det AWS Konsole:**

2. **EC2-Dashboard öffnen:**
  - Navigiere zu `Services` und wähle `EC2`.

3. **Starten einer neuen Instanz:**
  - Klicke auf `Launch Instance`.
  - Wähle das `Amazon Linux 2 AMI (HVM), SSD Volume Type`.
  - Wähle den `t2.micro` Instance Type (kostenloses Kontingent).
  - Füge folgendes User Data hinzu, um den Apache Webserver zu installieren:

```sh
#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<html><h1>Lets go Techstarter!</h1></html>" > /var/www/html/index.html
```

  - Klicke auf `Review and Launch` und dann auf `Launch`.
  - Wähle ein bestehendes Schlüsselpaar oder erstelle ein neues, um die Instanz zu starten.

4. **Sicherheitsgruppe konfigurieren:**
  - Stelle sicher, dass HTTP (Port 80) und SSH (Port 22) in der Sicherheitsgruppe erlaubt sind.

5. **Instanzstatus überprüfen:**
  - Warte, bis die Instanz den Status `running` erreicht hat.
  - Notiere dir die öffentliche IP-Adresse der Instanz.
  - Öffne einen Webbrowser und gib die öffentliche IP-Adresse ein (`http://<public-ip>`)
  - Siehst du die Website?

### Schritt 2: Global Accelerator konfigurieren

1. **Global Accelerator Dashboard öffnen:**
  - Navigiere zu `Services` und wähle `Global Accelerator`.

2. **Erstellen eines neuen Accelerators:**
  - Klicke auf `Create Accelerator`.
  - Gib dem Accelerator einen Namen (z.B. `MyGlobalAccelerator`).
  - Wähle `Standard Accelerator`.

3. **Listener konfigurieren:**
  - Port: 80
  - Protocol: TCP
  - Client Affinity: None

4. **Endpunktgruppe hinzufügen:**
  - Wähle die Region deiner EC2-Instanz.
  - Füge die Endpunkte hinzu:
    - Wähle `Endpoint Type: EC2 Instance`.
    - Wähle deine EC2-Instanz aus.

5. **Accelerator erstellen:**
  - Klicke auf `Create Accelerator`.

### Schritt 3: Überprüfen der Konfiguration

1. **Beschaffung der Accelerator IPs:**
  - Nach der Erstellung des Accelerators erhältst du zwei statische Anycast-IP-Adressen.

2. **Testen der Verbindung:**
  - Öffne einen Webbrowser und gib eine der Anycast-IP-Adressen ein.
  - Du solltest die Nachricht `Lets go Techstarter!` sehen.
