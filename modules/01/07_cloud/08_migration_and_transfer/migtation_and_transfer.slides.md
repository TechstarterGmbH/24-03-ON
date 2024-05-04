---

class: invert

---

# Einführung in Daten-Migration und -Transfer in der AWS Cloud

---

![Meme](./assets/imgs/meme.jpg)

---

## Was ist Daten-Migration?

- Daten-Migration bezeichnet den Prozess des **Umzugs von Daten von einem Speicherort oder einer Plattform zu einem anderen**.
- Daten effizient verwalten, sichern und nutzen.
- Beispiel: Umzug von lokalem Rechenzentrum (On-Premise) in die AWS Cloud.

---

## Was ist Daten-Transfer?

- Austausch von Daten zwischen verschiedenen Systemen, Standorten oder Plattformen.
- Daten zwischen Anwendungen, Benutzern und Infrastrukturen verschieben.
- Beispiel: Download eines Videos aus dem Internet auf den lokalen Computer. (Daten-Transfer über das Internet)

---

## Warum ist Daten-Migration und -Transfer wichtig?

- **Sicherung und Verfügbarkeit**: Daten sichern und bei Bedarf verfügbar machen.
- **Skalierbarkeit**: IT-Infrastruktur flexibel skalieren und Ressourcen anpassen.
- **Effizienz und Kostenersparnis**: Betriebskosten senken und Produktivität steigern.
- **Beispiel**: Migration von Unternehmensanwendungen in die Cloud.

---

# Die AWS Services für Daten-Migration und -Transfer

---

## AWS Application Discovery Service

- Du willst in die Cloud migrieren, hast jede Menge bestehende Anwendungen und Workloads, aber keine Ahnung, was genau du da hast?
- Der AWS Application Discovery Service hilft dir, **automatisiert Daten über deine lokale IT-Infrastruktur zu erfassen**.
- Somit kannst du **Anwendungen und Workloads identifizieren und analysieren**.
- Das hilft dir die nächsten Schritte für die Migration zu planen.

---

- **Funktionsweise**:
  - Automatisierte Erfassung von Daten über lokale IT-Infrastruktur.
  - Installiere Agenten (ein einfaches Programm) auf deinen Servern
  - Die Agenten sammeln Daten über die installierten Anwendungen und Leistungen
  - Die Daten werden an den AWS Application Discovery Service gesendet
  - Der Service analysiert die Daten und erstellt Berichte über die Anwendungen und Workloads
- **Beispiel**:
  - Inventarisierung von Legacy-Anwendungen vor Cloud-Migration.

- Link [AWS Application Discovery Service](https://aws.amazon.com/de/application-discovery/)

---

## AWS Application Migration Service

- Nachdem du deine Anwendungen und Workloads identifiziert und analysiert hast, ist es Zeit, sie in die Cloud zu migrieren.
- Der AWS Application Migration Service hilft dir dabei, **Anwendungen und Workloads automatisiert in die Cloud zu migrieren**.
- Das spart Zeit und Ressourcen und reduziert das Risiko von Fehlern.

---

- **Funktionsweise**:
  - Automatisierte Migration von Anwendungen und Workloads in die Cloud.
  - Kann auch genutzt werden um Anwendungen zwischen verschiedenen Cloud-Plattformen zu migrieren.
  - Kann auch genutzt werden um Anwendungen auf EC2 Instanzen in eine andere AWS Region zu migrieren.
- **Vorteile**: Zeit- und Ressourceneinsparung, Risikoreduktion.
- **Anwendungsfälle**: Schnelle und nahtlose Migration von Anwendungen.
- **Beispiel**: Migration einer Webanwendung von lokalem Server in AWS-Cloud.

- Link [AWS Application Migration Service](https://aws.amazon.com/de/application-migration-service/)

---

## AWS Database Migration Service (AWS DMS)

- Du hast eine Datenbank, die du in die Cloud migrieren möchtest?
- Der AWS Database Migration Service (AWS DMS) hilft dir, **Datenbanken in die AWS Cloud zu übertragen**.
- Das minimiert Ausfallzeiten und ist kosteneffizient.
- Du kannst damit Datenbanken zwischen verschiedenen Plattformen migrieren.

---

- **Funktionsweise**:
  - Übertragung von Datenbanken in die AWS Cloud.
  - **Während der Migration bleibt die Datenbank in Betrieb**
  - Die Datenbank wird während der Migration synchronisiert (Replikation)

- **Vorteile**:
  - Minimierung von Ausfallzeiten
  - Kosteneffizienz
  - Kann auch zwischen Datenbanken verschiedener Hersteller migrieren
- **Beispiel**: Migration einer SQL Server-Datenbank in Amazon RDS.

- Link [AWS Database Migration Service (AWS DMS)](https://aws.amazon.com/de/dms/)

---

## AWS Schema Conversion Tool (AWS SCT)

- Teil des AWS Database Migration Service (AWS DMS).
- Wird genutzt um Datenbankschemas für Cloud-Zielsysteme zu konvertieren.
- Entweder als eigenständiges Tool oder als Teil des AWS DMS.

---

- **Funktionsweise**: Konvertierung von Datenbankschemas für Cloud-Zielsysteme.
- **Vorteile**: Automatisierung, Minimierung von Konvertierungsfehlern.
- **Anwendungsfälle**: Konvertierung von Datenbankschemas zwischen verschiedenen Plattformen.
- **Beispiel**: Konvertierung eines Oracle-Datenbankschemas in ein Amazon Aurora-Schema.

---

## AWS Migration Hub

- Eine zentrale Kontrolle und Überwachung von Migrationen ist wichtig, um den Überblick zu behalten und Probleme frühzeitig zu erkennen.
- Der AWS Migration Hub bietet **Transparenz, Nachverfolgbarkeit und Fehlererkennung** für deine Migrationsprojekte.
- Stell dir vor das ist dein **Migrations-Command-Center**

---

- **Funktionsweise**:
  - Zentralisierte Kontrolle und Überwachung von Migrationen.
  - Du kannst andere Services wie AWS DMS und Application Migration Service integrieren
  - Du kannst den Fortschritt deiner Migrationen überwachen
  - Du kannst Probleme erkennen und lösen

- **Vorteile**: Transparenz, Nachverfolgbarkeit, Fehlererkennung.
- 
**Anwendungsfälle**: Verwaltung und Koordination komplexer Migrationsprojekte.
- **Beispiel**: Überwachung der Fortschritte und Problemlösung während der Migration.

- Link [AWS Migration Hub](https://aws.amazon.com/de/migration-hub/)

---

## AWS Snow Family

- Dein Unternehmen hat riesige Datenmengen und will gerne in die Cloud migrieren?
- Die AWS Snow Family bietet **physische Geräte für große Datenmengen und Offline-Migrationen**.
- Das große Problem bei der Migration von riesigen Datenmengen ist die Netzwerkverbindung.
- Selbst bei einer schnellen Leitung (1 GBit) dauert der Upload von 100 TB Daten ewig (ca. 222 Stunden 13 Minuten)
- Deshalb gibt es die AWS Snow Family

---

- **Funktionsweise**:
  - Physische Geräte für große Datenmengen und Offline-Migrationen.
  - Diese Geräte werden dir von Amazon zugeschickt
  - Du kopierst deine Daten auf das Gerät
  - Du schickst das Gerät zurück
- **Vorteile**: Übertragung großer Datenmengen in die Cloud ohne Netzwerkverbindung.
- **Anwendungsfälle**: Datenmigration in entlegenen oder isolierten Umgebungen.
- **Beispiel**: Stell dir vor du hast 100 TB Daten, die du in die Cloud migrieren möchtest. Amazon sendet dir Externe Festplatten mit 100 TB Kapazität und du sendest die Platten wieder mit der Post zurück.

- Link [AWS Snow Family](https://aws.amazon.com/de/snow/)

---

### AWS Snowcone

- Speicher HDD: 8 TB
- Speicher SSD: 14 TB
- Integrierter Prozessor: 2 vCPUs
- Integrierter RAM: 4 GB

- Link [AWS Snowcone](https://aws.amazon.com/de/snowcone/)

---

### AWS Snowball

- Es gibt verschiedene Optionen:
  - EDGE SPEICHEROPTIMIERT 80 TB
  - EDGE SPEICHEROPTIMIERT 210 TB
  - EDGE DATENVERARBEITUNGSOPTIMIERT
- Größe: 80 TB - 210 TB (Je nach Modell)
- RAM: 80 GB - 416 GB (Je nach Modell)
- CPU: 40 - 104 vCPUs (Je nach Modell)

- Link [AWS Snowball](https://aws.amazon.com/de/snowball/)

---

### AWS Snowmobile

- Speicher: 100 PB
- Größe: 45 Fuß Container
- Übertragungsgeschwindigkeit: 1 TB/s
- Das ist ein LKW, der zu dir kommt und deine Daten abholt
- Nur in den USA verfügbar

- Link [AWS Snowmobile](https://aws.amazon.com/de/snowmobile/)

---

## AWS Transfer Family

- Du möchtest gerne regelmäßig Dateien zwischen Buisness-Partnern oder anderen AWS-Services übertragen?
- Lade Dateien über FTP oder SFTP hoch und AWS leitet sie entweder an S3 oder EFS weiter.

---

- **Funktionsweise**: Verwaltung von Datei- und Datenübertragungen in die AWS Cloud.
- **Vorteile**: Sichere und skalierbare Übertragung von Dateien.
- **Anwendungsfälle**: Austausch von Dateien mit AWS-Services.
- **Beispiel**: Bereitstellung von AWS Transfer Family zur sicheren Übertragung von Dateien.

- Link [AWS Transfer Family](https://aws.amazon.com/de/transfer/)

---

## Zusammenfassung des Gelernten

- Daten-Migration und -Transfer sind entscheidende Prozesse für Unternehmen, um ihre Daten effizient zu verwalten, zu sichern und zu nutzen.
- AWS bietet eine Vielzahl von Diensten und Tools, die Unternehmen dabei unterstützen, ihre Daten nahtlos in die Cloud zu migrieren und zwischen verschiedenen Systemen zu transferieren.
