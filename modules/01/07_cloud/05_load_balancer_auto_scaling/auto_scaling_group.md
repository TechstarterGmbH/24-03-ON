# Auto-Scaling Group

## Grundlegende Begriffe

- **Skalierung:** Anpassung der Resourcen an den Bedarf.
  - **Horizontal:** Hinzufügen oder Entfernen von Kopien einer Instanz.
  - **Vertikal:** Erhöhung oder Verringerung der Ressourcen (z.B. CPU, RAM) einer Instanz.
- Zum Vergleich in einem Restaurant:
  - **Horizontale Skalierung:** Hinzufügen oder Entfernen von Köchen.
  - **Vertikale Skalierung:** Erhöhung oder Verringerung der Arbeitszeit eines Kochs.
- **Auto-Scaling:** Automatische Skalierung basierend auf vorgegebenen Regeln und Überwachung.

## Was braucht man um automatisch zu skalieren?

Wir wollen, dass unser System automatisch neue EC2-Instanzen hinzufügt oder entfernt, um die Leistung zu optimieren. Dafür benötigen wir:

1. **Bauplan (Launch Configuration oder Launch Template):**
  - Wie sollen die neuen Instanzen konfiguriert sein?
  - Welche AMI, Instanztyp, Key Pair, etc. sollen verwendet werden?
  - **Launch Configuration:** Einzelne Instanzkonfiguration.
  - **Launch Template:** Flexiblere und erweiterte Konfigurationsoptionen.
2. **Überwachungssystem (CloudWatch):** 
  - Überwacht die Leistung der Instanzen und löst bei Bedarf Skalierungsaktionen aus.
3. **Regel für das Skalieren (Scaling Policy):**
  - Bestimmt, unter welchen Bedingungen skaliert wird (z.B. CPU-Auslastung).

## Praktische Anwendung von Auto-Scaling Groups

### Schritt-für-Schritt-Anleitung

#### Security Group erstellen

- Navigation: EC2 Konsole > Security Groups > Create Security Group
- Name: `MyAutoScalingGroupSecurityGroup`
- Description: `Security Group für Auto-Scaling Group`
- Regeln: Öffne Port 80 für HTTP-Verkehr und Port 22 für SSH.

#### Launch Template erstellen

- Navigation: EC2 Konsole > Launch Templates > Create launch template
- Name: `MyLaunchTemplate`
- Auto Scaling Guidance: Haken Setzen
- AMI: "ami-0f673487d7e5f89ca" (Amazon Linux)
- Instanztyp: `t2.micro`
- Key Pair: Kein Schlüsselpaar auswählen
- Security Group: `MyAutoScalingGroupSecurityGroup`
- User Data: Skript zum Installieren von Apache Webserver

```bash
#!/bin/bash
sudo dnf update -y
sudo dnf install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Hello from $(cat /etc/hostname)" | sudo tee /var/www/html/index.html
```

#### Auto-Scaling Group erstellen

- Navigation: EC2 Konsole > Auto Scaling Groups > Create Auto Scaling group
- Name: `MyAutoScalingGroup`
- Launch Template: `MyLaunchTemplate`
- `Next`
- Network: Wähle alle Subnetze aus
- `Next`
- Load Balancing: Keine Load Balancer hinzufügen
- VPC Lattice: Keine VPC-Lattice hinzufügen
- `Next`
- Group Size: Desired Capacity: 1
- Scaling:
  - Minimum Capacity: 1
  - Maximum Capacity: 3
  - Automatic Scaling: `Target Tracking Scaling Policy`
    - Name: `MyTargetTrackingPolicy`
    - Metric Type: `Average CPU Utilization`
    - Target Value: 10
- Maintenance Policy: `No policy`
- `Next`
- `Add notifications` -> `Next`
- `Add tags` -> `Next`
- `Create Auto Scaling group`

#### Überprüfen der Auto-Scaling Group

- Schaue in der EC2-Konsole unter Auto Scaling Groups nach, ob deine Auto-Scaling Group erstellt wurde.
- Öffne die Instanzdetails und überprüfe, ob die Instanz gestartet wurde.
- Überprüfe die CPU-Auslastung in der EC2-Konsole unter `Monitoring`.
- Öffne in einem neuen Tab die EC2-Instanz Einstellungen und klicke auf `Connect`

#### Testen der Auto-Scaling Group

- Installiere folgendes Tool auf der EC2-Instanz, um die CPU-Auslastung zu erhöhen:

```bash
sudo dnf install -y stress
stress --cpu 4
```

- Beobachte, wie die CPU-Auslastung steigt und die Auto-Scaling Group automatisch neue Instanzen hinzufügt.

