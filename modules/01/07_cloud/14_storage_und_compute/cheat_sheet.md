# AWS Compute & Storage Cheat Sheet

## AWS Storage Services Überblick

- **S3**: Objektbasierte Speicherung, ideal für skalierbare, sichere und hochverfügbare Speicherlösungen.
- **EBS**: Blockspeicher für EC2, hauptsächlich für persistente Speicherung bei Instanzen.
- **EFS**: Elastisches File System für den einfachen und skalierbaren Zugriff von mehreren EC2-Instanzen.
- **FSx**: Vollständig verwaltetes Dateisystem für Windows und Hochleistungs-Computing Anwendungen.
- **AWS Backup**: Zentralisierte Backup-Lösung für automatisierte und policy-basierte Backups.
- **Storage Gateway**: Integriert On-Premise-Daten mit Cloud-Speicher, ideal für hybride Speicherlösungen.

## EFS (Amazon Elastic File System)

- **NFS (Network File System)**: Ermöglicht den Dateizugriff über Netzwerke, ähnlich dem Zugriff auf lokale Dateien.
- **Anwendungsfälle**:
  - Mehrere EC2-Instanzen, die auf die gleichen Daten zugreifen müssen.
  - Skalierbare Lösungen ohne Management der physischen Speicherinfrastruktur.
- **Beispiel**: Nutzung von EFS für Mediendateien in einem Webserver-Cluster zur Unterstützung von Auto Scaling.

## FSx (Amazon FSx)

- **FSx für Windows File Server**: Ideal für Anwendungen, die eine Windows-Authentifizierung benötigen (z.B. SharePoint, SQL Server).
- **FSx für Lustre**: Hochleistungsdateisystem für Workloads wie Machine Learning und HPC.
- **Metapher**: FSx für Lustre ist wie eine Hochgeschwindigkeitszugstrecke, die große Datenmengen schnell transportiert.

## AWS Backup

- **Funktionen**:
  - Zentralisiertes Management von Backups.
  - Automatisierung und Einhaltung von Compliance-Anforderungen.
- **Erstellen einer Backup-Richtlinie**:
  - Definition von Was, Wann und Wie oft etwas gesichert wird.
- **Überwachung**:
  - Status und Integrität der Backups durch AWS Backup-Konsole kontrollieren.

## AWS Storage Gateway

- **Arten von Storage Gateways**:
  - **File Gateway**: Speicherung von Dateien in S3.
  - **Volume Gateway**: Block-basierter Speicher, gesichert durch S3.
  - **Tape Gateway**: Langfristige Sicherung und Archivierung in der Cloud.
- **Konfiguration**:
  - Auswahl des Gateway-Typs basierend auf Anforderungen und Installation auf einem On-Premise-Server.

## Compute Services

### Elastic Beanstalk

- **Komponenten**:
  - Webserver, Datenbank, Anwendungscode.
- **Vorteile**:
  - Automatisiertes Management der Infrastruktur.
  - Fokus auf Anwendungsentwicklung.
- **Automatisierte Ressourcen**:
  - Load Balancer, Auto Scaling Groups, Datenbanken.

### Lightsail

- **Merkmale**:
  - Einfache, kostengünstige Möglichkeit für Webanwendungen.
  - Fertige Blueprints, z.B. für WordPress.

### AWS Local Zones

- Nutze AWS-Infrastruktur näher an deinem Standort (nicht nur in den Availability Zones)
- **Vorteile**:
  - Reduzierte Latenz durch Nähe zu Endbenutzern.
  - Ideal für latenzkritische Anwendungen wie Media-Streaming und Online-Gaming.

### AWS Outposts

- **Einsatzgebiete**:
  - Hybrid-Cloud-Szenarien.
  - Datenintensive Anwendungen mit Bedarf an lokaler Datenverarbeitung.
- **Management**:
  - Vollständig von AWS verwaltet und unterstützt.
