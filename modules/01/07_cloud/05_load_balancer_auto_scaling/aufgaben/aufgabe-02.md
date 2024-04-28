# Aufgabe 2: Praxis

## 1. Verbindung von Auto-Scaling mit Load Balancer

- Erweitere das Setup des Praxisbeispiels aus dem heutigen Unterricht

### Erstelle eine neue Target Group

- Target Type: `Instance`
- Target Group Name: `MyASGAlbTargetGroup`
- Protocol: `HTTP` Port `80`
- IP: `ipv4`
- Protocol Version: `HTTP1`
- Health Check Path: `/`
- Füge die EC2-Instanzen der Auto-Scaling Group als Targets hinzu


### Ändere die Auto-Scaling Group

- Navigation: EC2 Konsole > Auto Scaling Groups > MyAutoScalingGroup
- Öffne den Details Tab
- Scrolle nach unten bis zu `Load Balancing` und klicke auf `Edit`
- Setze den Haken bei `Application Load Balancer` und wähle die neu erstellte Target Group `MyASGAlbTargetGroup`
- Klicke auf `Update`

### Ändere den Application Load Balancer

- Navigation: EC2 Konsole > Load Balancing > Load Balancers > MyAlb
- Öffne den Tab `Listeners and routing`
- Wähle den Listener und klicke auf `Manage Listener` -> `Edit Listener`

### Testen und Debuggen

- Öffne die DNS-Adresse des Load Balancers in deinem Browser
- Überprüfe, ob die Anfragen auf die EC2-Instanzen verteilt werden
- Falls nicht
  - Überprüfe die Security Groups und stelle sicher, dass Port 80 von `0.0.0.0/0` erreichbar ist
  - Stelle sicher dass beide Security Groups (Auto-Scaling und Load Balancer) die richtigen Ports öffnen
  - Überprüfe die Target Group und stelle sicher, dass die EC2-Instanzen als Targets hinzugefügt wurden
  - Überprüfe die Auto-Scaling Group und stelle sicher, dass die Load Balancer Einstellungen korrekt sind
  - Kannst du die IP Addressen der einzelnen EC2 Instanzen aufrufen?

### Löschen der Ressourcen

- Lösche die Resourcen in folgender Reihenfolge
  - Load Balancer
  - Target Group
  - Auto-Scaling Group
  - EC2-Instanzen
  - Security Groups
