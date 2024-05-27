# AWS Praxis

- In dieser Aufgabe soll das Wissen der letzten Wochen in die Praxis umgesetzt werden.
- Das is ein fortgeschrittenes Projekt, was das Verständnis von AWS und der Infrastruktur voraussetzt.

## Szenario

- Du arbeitest für ein Consulting Unternehmen und hast den Auftrag bekommen eine Dateiablage für ein Unternehmen zu erstellen.
- Ziel ist es wichtige Unternehmensdaten sicher und kostengünstig zu speichern.
- Die Dateiablage soll hochverfügbar und skalierbar sein.
- Du wurdest beauftragt die Infrastruktur in AWS zu erstellen.
- Als Software soll [Nextcloud](https://nextcloud.com/) verwendet werden.

### Was ist Nextcloud?

- Nextcloud ist eine Open Source Software, die es ermöglicht Dateien zu speichern und zu teilen.
- Ähnlich wie Dropbox oder Google Drive nur selbst bereit gestellt (entweder auf einem eigenen Server oder in der Cloud).
- Nextcloud kann auf einem Webserver installiert werden und benötigt eine Datenbank um die Dateien zu speichern.
- Nextcloud hat nebenbei auch viele andere Funktionen wie Kalender, Kontakte, Chat, Office Suite, etc.

## Anforderungen

- Die Infrastruktur soll hochverfügbar sein.
- Die Infrastruktur soll skalierbar sein.
- Es soll Wert auf Sicherheit und Kostenoptimierung gelegt werden.

### Technologien

- Folgende Technologien müssen verwendet werden:
1. Eigenes VPC in Frankfurt
2. 3 öffentliche Subnetze
3. 3 private Subnetze
4. Internet Gateway
5. NAT Gateway
6. Route Table
7. MySQL Datenbank
8. Security Groups
9. (Load Balancer)
10. (Auto Scaling Group) optional

## Aufgaben

1. Erstelle ein VPC in Frankfurt
2. Erstelle 3 öffentliche und 3 private Subnetze
- Internet Gateway
- NAT Gateway
- Route Table
3. Erstelle eine Security Group für die EC2 Instanz (in dem VPC!)
- Inbound: Port 80, 443, 22
4. Erstelle eine EC2 Instanz in einem öffentlichen Subnetz (mit der Security Group)
- Verbinde dich mit der EC2 Instanz
- Kannst du das Internet erreichen?
5. Erstelle eine MySQL Datenbank in einem privaten Subnetz
- Es gibt hier mehere Möglichkeiten
  - RDS Service
  - Das Mysql Programm auf einer EC2 Instanz installieren
6. Verbinde dich von der EC2 instanz mit der MySQL Datenbank
- Installiere das MySQL Programm auf der EC2 Instanz
- Verbinden dich mit der MySQL Datenbank
- Hast du die Ports richtig frei gegeben? Security Groups?

## Bonus (Freiwillig)

1. Erstelle eine Launch Configuration und eine Auto Scaling Group
- Die Auto Scaling Group soll mindestens 2 EC2 Instanzen haben
- Die Auto Scaling Group soll mindestens 2 Availability Zones haben
2. Erstelle einen Load Balancer und verbinde ihn mit der Auto Scaling Group
3. Schreibe ein Skript, was [Nextcloud](https://nextcloud.com/) auf den EC2 Instanzen installiert
- Benutze die Datenbank um die Daten zu speichern

### Result

- Du hast wenn alles geklappt hat eine hochverfügbare und skalierbare Infrastruktur aufgebaut!
- NextCloud ist ein Open Source Projekt, ähnlich wie Dropbox oder Google Drive.
- Es gibt Unternehmen, die NextCloud als Cloud Lösung verwenden und dafür bezahlen.
