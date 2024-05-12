---

class: invert

---

# AWS Compute & Storage

---

## Storage

Bis jetzt habe wir folgende Services Kennengelernt:

- **S3**: Speicherung von Objekten
- **EBS**: Blockspeicher für EC2-Instanzen
- Verschiedene Datenbankdienste wie **RDS**, **DynamoDB**, **ElastiCache**

- Es gibt aber noch weitere ...

---

## EFS (Amazon Elastic File System)

---

### Problem

- Normalerweise verbinden wir EBS-Volumes mit EC2-Instanzen.
- **EBS-Volumes** sind blockbasiert und **können nur von einer Instanz gleichzeitig verwendet werden**.
- Was ist, wenn wir **mehrere Instanzen** haben, die **auf dieselben Dateien** zugreifen müssen?

---

### Was ist ein Network File System (NFS)?

- **Metapher**: Stelle dir vor, NFS ist wie ein großes Bücherregal in einer Bibliothek, auf das jeder Zugriff hat und von überall in der Bibliothek aus Bücher entnehmen oder hinzufügen kann.
- Ein Network File System ermöglicht den Zugriff auf Dateien über ein Netzwerk ähnlich wie auf lokale Dateien.
- **Wichtig**: NFS ist das Protokoll, das EFS verwendet, um den reibungslosen und gleichzeitigen Zugriff mehrerer Clients zu ermöglichen.

---

### Wofür braucht man EFS?

- Für Anwendungen, die eine gemeinsame Dateispeicherung benötigen.
- **Beispiel**: Webserver-Cluster, die auf dieselben Mediendateien zugreifen.
- Skalierbarkeit ohne die Notwendigkeit, sich um die physische Speicherinfrastruktur zu kümmern.

---

### Beispiel: EFS für Webserver

- Stell dir vor, du hast einen Webserver in einer Auto Scaling Group.
- Jede Instanz muss auf dieselben Mediendateien (Bilder, Videos) zugreifen können.
- **Lösung**: Verwende EFS als gemeinsamen Dateispeicher für alle Instanzen.
- **Vorteil**: Skalierbarkeit und gleichzeitiger Zugriff auf Dateien von mehreren Instanzen.

---

## FSx (Amazon FSx)

---

### Einführung in FSx

- FSx bietet vollständig verwaltete native Microsoft Windows- und Hochleistungsdateisysteme.
- FSx ist für spezifische Anwendungsfälle optimiert, die eine spezielle Dateisystemleistung erfordern.
- Es gibt zwei Haupttypen von FSx: FSx für Windows File Server und FSx für Lustre.

---

### FSx für Windows File Server

- Bietet ein natives, vollständig verwaltetes Windows-basiertes Dateisystem.
- **Anwendung**: Ideal für Unternehmensanwendungen wie SharePoint, SQL Server oder jede Anwendung, die eine Windows-Authentifizierung erfordert.

---

### FSx für Lustre (High Performance)

- Hochleistungsfähiges Dateisystem für maschinenintensive Workloads wie Machine Learning, High Performance Computing (HPC).
- **Metapher**: Wie eine Hochgeschwindigkeitszugstrecke, die große Datenmengen schnell transportiert.

---

## AWS Backup

---

### Einführung in AWS Backup

- **Zentralisierte Backup-Lösung** für die Sicherung von Daten und Anwendungen in der AWS-Cloud.
- **Vorteile**: Automatisierung, Compliance-Sicherung und Wiederherstellungsoptionen.

---

### Erstellen einer Backup-Richtlinie

- Definiere, **was**, **wann** und **wie oft** gesichert werden soll.
- **Beispiel**: Tägliche Backups für kritische Datenbanken, wöchentlich für weniger kritische Daten.

---

### Durchführen und Überwachen von Backups

- Automatische Durchführung nach festgelegtem Zeitplan.
- Überwachung über die AWS Backup-Konsole, um den Status und die Integrität der Backups sicherzustellen.

---

## Storage Gateway

---

### Einführung in AWS Storage Gateway

- Brücke, die On-Premise-Daten und AWS Cloud-Storage verbindet.
- Mach deine On-Premise-Daten für die Cloud verfügbar und umgekehrt.

---

### Konfiguration und Einrichtung von Storage Gateway

- Auswahl des geeigneten Gateway-Typs (File, Volume, Tape).
- Installation der Gateway-Appliance auf einem On-Premise-Server.

---

### Nutzung verschiedener Arten von Storage Gateway

- **File Gateway**: Für die Speicherung von Dateien in S3.
- **Volume Gateway**: Block-basierter Speicher, gesichert durch S3.
- **Tape Gateway**: Für langfristige Sicherung und Archivierung in der Cloud.

---

# Compute

---

## Elastic Beanstalk

---

### Einführung in Elastic Beanstalk

- Die meisten Web Anwendunge bestehen aus folgenden Komponenten:
  - Webserver
  - Datenbank
  - Anwendungscode
- Elastic Beanstalk hilft dir, dich auf den Anwendungscode zu konzentrieren.
- Elastic Beanstalk erstellt für dich eine einfache Infrastuktur für deine Anwendung.

---

### Erstellen einer Elastic Beanstalk Anwendung

- Auswahl einer Programmierplattform und Hochladen des Codes.
- Elastic Beanstalk erstellt automatisch die notwendige Infrastruktur.

---

### Was erstellt Elastic Beanstalk für dich?

- **Load Balancer**: Verteilt den Verkehr auf mehrere Instanzen.
- **Auto Scaling Group**: Skaliert die Anzahl der Instanzen basierend auf der Last.
- **Datenbank**: Optional, aber oft benötigt für Webanwendungen.

---

### Überwachung, Optimierung und Troubleshooting

- Nutzung von AWS CloudWatch für die Überwachung.
- Anpassung und Optimierung der Ressourcennutzung basierend auf Leistungsdaten.

---

## Lightsail

---

### Einführung in Lightsail

- Einfache und kostengünstige Möglichkeit, Webanwendungen auf AWS zu starten.
- Eigentlich genau wie EC2, aber einfacher aufgebaut.

---

### Einrichten von Lightsail-Instanzen

- Auswahl des Betriebssystems oder der Anwendungs-Stack.
- Es gibt schon fertige Blueprints für gängige Anwendungen. (z.B. WordPress)
- **Beispiel**: Start einer WordPress-Website in weniger als 5 Minuten.

---

## Local Zone

---

### Einführung in AWS Local Zones

- Lokale Erweiterungen der AWS-Regionen, die bestimmte AWS-Dienste näher an Endbenutzer bringen.
- **Vorteil**: Reduzierte Latenz für Endbenutzer durch geografische Nähe.

---

### Erstellen und Verwalten von Local Zones

- Auswahl und Aktivierung von Local Zones über die AWS-Managementkonsole.
- **Planung**: Bestimmen, welche Anwendungen von einer lokalen Bereitstellung profitieren könnten.

---

### Anwendungsfallbeispiele für Local Zones

- Media-Streaming, Echtzeit-Gaming, interaktive Anwendungen.
- **Beispiel**: Verbesserung der Spielerfahrung in Online-Games durch schnelleren Datenzugriff.
- **Immer wenn latenz wichtig ist!**

---

## AWS Outposts

---

### Einführung in AWS Outposts

- AWS-Dienste in deinem eigenen Rechenzentrum?
- AWS Outposts macht es möglich!
- Komplett von AWS verwaltet und unterstützt.

---

### Bereitstellen und Verwalten von Outposts

- Installation und Inbetriebnahme durch AWS-Teams.
- Integration mit bestehenden AWS-Diensten für eine nahtlose Erfahrung.

---

### Erforschen von AWS Outposts Use Cases

- Hybrid-Cloud-Szenarien, in denen On-Premise- und Cloud-Ressourcen kombiniert werden.
- **Anwendung**: Datenintensive Anwendungen, die eine Nähe zur Datenquelle benötigen.
