# Einführung in Elastic Load Balancer

## Allgemeine Konzepte von Load Balancing

### Was ist Load Balancing?

- **Definition:**
  - Bezeichnet die Technik, eingehenden Netzwerk- oder Anwendungstraffic gleichmäßig über mehrere Server zu verteilen.
- **Metapher**:
  - In einem Restaurant wäre ein Load Balancer wie ein Kellner
  - Der Kellner verteilt die Bestellungen gleichmäßig auf die verfügbaren Köche, um die Effizienz zu steigern.
  - Wenn ein Koch ausfällt, übernimmt ein anderer nahtlos die Aufgaben.

### Warum braucht man einen Load Balancer?

- **Effizienzsteigerung:** Optimale Nutzung der Serverressourcen.
- **Verbesserte Verfügbarkeit:** Bei Ausfall eines Servers übernimmt ein anderer nahtlos die Aufgaben.
- **Skalierbarkeit:** Ermöglicht es, mehr Benutzer gleichzeitig zu bedienen, indem Anfragen auf mehrere Maschinen verteilt werden.

## Überblick über Load Balancer Typen

Es gibt verschiedene Arten von Load Balancern, die auf spezifische Anforderungen abgestimmt sind:

- **Elastic Load Balancer (ELB):** Für die AWS-Cloud optimiert. (OSI Layer 7)
- **Network Load Balancer (NLB):** Für niedrige Latenz und hohe Durchsatzleistungen konzipiert. (OSI Layer 4)
- **Application Load Balancer (ALB):** Optimiert für HTTP/HTTPS-Traffic.
- **Gateway Load Balancer (GWLB):** Ideal für den Einsatz in Netzwerksicherheit und DDoS-Schutz.

## Erste Schritte mit Elastic Load Balancer (ELB)

### Schritte

1. **Erstellen von 3 EC2-Instanzen**
  - AMI: Amazon Linux
  - Instanztyp: `t2.micro`
  - Security Group: Öffne Port 80 für HTTP-Verkehr und 22 für SSH.
  - Userdata: Installiere einen Webserver (z.B. Apache) auf den Instanzen.

*Userdata Beispiel*

```bash
#!/bin/bash
sudo dnf update -y # Wir aktualisieren die Paket Liste
sudo dnf install -y httpd # Wir installieren den Apache Webserver
sudo systemctl start httpd # Wir starten den Apache Webserver
sudo systemctl enable httpd # Wir aktivieren den Apache Webserver beim Start
echo "Hello from $(cat /etc/hostname)" | sudo tee /var/www/html/index.html # Wir schreiben die Standardindexseite
```

2. **Erstelle eine Security Group für den Load Balancer**
  - Name: `MyAlbSecurityGroup`
  - Beschreibung: `Security Group für den Application Load Balancer`
  - Öffne Port 80 für HTTP-Verkehr.

3. **Erstellen einer Target Group**
  - Gehe in der AWS Management Console zu EC2 > Load Balancing > Target Groups.
  - Erstelle eine neue Target Group, `Create Target Group`.
  - Target Type: `Instance`.
  - Target Group Name: `MyAlbTargetGroup`.
  - Protokoll: `HTTP` Port `80`.
  - HTTP1
  - Health Check Path: `/`.
  - Füge EC2-Instanzen als Targets hinzu.
    - Wähle die erstellten EC2-Instanzen aus. (Haken setzen)
    - Klicke auf `Include as pending below`.
    - Klicke auf `Create target group`.
  
4. **Erstelle einen Application Load Balancer (ALB)**
  - Gehe in der AWS Management Console zu EC2 > Load Balancing > Load Balancers.
  - Wähle `Create Load Balancer` und wähle den Typ `Application Load Balancer` -> `Create`.
  - Setze einen Namen: `MyAlb`
  - Wähle als Schema `Internet-facing`. (Öffentlich zugänglich)
  - Wähle als IP-Adresse `ipv4`.
  - Wähle als VPC deine Standard-VPC.
  - Bei den Subnetzen wähle alle verfügbaren Subnetze.
  - Wähle die Security Group `MyAlbSecurityGroup`.
  - Unter `Listeners and routing` verändere die Konfiguration
    - Protocol: HTTP
    - Port: 80
    - Default Action: Forward to `MyAlbTargetGroup`.
    - Gegebenfalls kann man die Ansicht neu laden um die Target Group zu sehen.
  - Klicke auf `Create`.
  - Danach kurz ca. 1 Minute warten bis der Load Balancer erstellt wurde.

5. **Testen der Konfiguration**
   - Öffne die DNS-Adresse des Load Balancers in deinem Browser.
   - Wenn du die Seite mehrmals aktualisierst, siehst du, wie der Traffic auf die verschiedenen EC2-Instanzen verteilt wird.
   - In dem User Data Beispiel wird der Hostname der Instanz angezeigt, um zu sehen, welche Instanz antwortet.
