# AWS Services Cheat Sheet

## Networking / Content Delivery

### Amazon API Gateway

- Erstellen, veröffentlichen, verwalten und sichern von APIs.
- Nach dem Serverless-Prinzip, und integriert mit AWS Lambda.

### Amazon CloudFront

- Content Delivery Network (CDN) zur schnellen Auslieferung von Daten, Videos, Anwendungen.
- Integration mit AWS-Sicherheitsservices für sichere Inhaltsauslieferung.

### AWS Direct Connect

- Dedizierte Netzwerkverbindung von On-Premises zu AWS. (Hybrid Cloud)
- Reduziert Netzwerkkosten, erhöht Bandbreite und bietet konsistentere Netzwerkleistung.

### AWS Global Accelerator

- Verbesserung der Anwendungsverfügbarkeit und Leistung durch Verkehrsumleitung auf optimierte Pfade.
- Zwei feste IP-Adressen als einziger Einstiegspunkt für Anwendungen.

### Amazon Route 53

- Skalierbarer Domain Name System (DNS) Web Service.
- Routing von Endnutzern zu Internetanwendungen durch übersetzen von Namen wie www.beispiel.com in IP-Adressen.

### Amazon VPC

- Isolierte Netzwerkumgebung innerhalb der AWS-Cloud.
- Vollständige Kontrolle über das virtuelle Netzwerken, einschließlich IP-Adressbereiche, Subnetze und Routentabellen.

### AWS VPN

- Sicherer Verbindungsaufbau zwischen dem eigenen Rechenzentrum und der AWS-Cloud.
- Unterstützt Site-to-Site VPN und Remote-Access VPN.

## Serverless

### AWS Fargate

- Serverless Compute-Engine für Container.
- Automatische Skalierung und Verwaltung der Server-Infrastruktur.

### AWS Lambda

- Ausführung von Code in Reaktion auf Ereignisse.
- Automatisches Management der Computing-Ressourcen.

## App Integration

### Amazon EventBridge

- Serverloser Event-Bus zur Verbindung von Anwendungsdaten aus eigenen Apps, SaaS und AWS-Services.
- Ermöglicht einfache Erstellung von ereignisgesteuerten Architekturen.

### Amazon SNS (Simple Notification Service)

- Vollständig verwalteter Pub/Sub-Nachrichtendienst.
- Automatische Skalierung, sofortige Nachrichtenübermittlung.

### Amazon SQS (Simple Queue Service)

- Nachrichtenwarteschlangendienst zur Entkopplung und Skalierung von Mikroservices, verteilten Systemen und serverlosen Anwendungen.
- Automatisches Löschen von Nachrichten nach erfolgreicher Verarbeitung.

### AWS Step Functions

- Koordination von Komponenten und Mikroservices durch Visualisierung als Workflows.
- Automatisierung von Prozessen und Fehlerbehandlung.

## Data

### Amazon Aurora

- MySQL- und PostgreSQL-kompatible relationale Datenbank.
- Bis zu fünfmal schneller als Standard-MySQL-Datenbanken auf der gleichen Hardware.

### Amazon DynamoDB

- Vollständig verwaltete NoSQL-Datenbank.
- Unterstützt sowohl Dokumenten- als auch Schlüssel-Wert-Speichermodelle.

### Amazon MemoryDB for Redis

- Redis-kompatibler In-Memory-Datenspeicher.
- Langlebige, schnell lesbare und beschreibbare Daten.

### Amazon Neptune

- Vollständig verwalteter Graph-Datenbank-Service.
- Ermöglicht einfache Erstellung und Ausführung von Anwendungen, die mit hoch verbundenen Datensätzen arbeiten.

### Amazon RDS

- Relationale Datenbank-Service, der das Einrichten, Betreiben und Skalieren einer relationalen Datenbank in der Cloud erleichtert.
- Unterstützt mehrere Datenbank-Engines.

## Analytics

### Amazon Athena

- SQL-Abfragen direkt auf Daten in Amazon S3 ausführen.
- Pay-per-query Modell, keine Infrastruktur zum Verwalten.

### AWS Data Exchange

- Finden, Abonnieren und Nutzen von Datenprodukten von Drittanbietern in der Cloud.
- Einfache Integration und Verwaltung von Abonnementdaten.

### Amazon EMR

- Hadoop-Framework zur Verarbeitung großer Datenmengen.
- Unterstützt andere beliebte verteilte Frameworks wie Apache Spark und HBase.

### AWS Glue

- Serverloser Datenintegrationsdienst zur Vorbereitung und Beladung von Daten für Analysen.
- Automatisierte ETL-Jobs, die einfach zu finden, zu verbinden und zu koordinieren sind.

### Amazon Kinesis

- Streaming-Daten in Echtzeit sammeln, verarbeiten und analysieren.
- Ermöglicht zeitnahe und kontinuierliche Datenverarbeitung.

### Amazon MSK (Managed Streaming for Apache Kafka)

- Vollständig verwaltetes Apache Kafka, das den Aufbau und die Ausführung von Anwendungen erleichtert, die Daten in Echtzeit verarbeiten.
- Hohe Verfügbarkeit und Sicherheit ohne Verwaltungsaufwand.

### Amazon OpenSearch Service

- Skalierbare Such-, Analyse- und Dashboard-Lösungen.
- Kompatibel mit OpenSearch und Elasticsearch.

### Amazon QuickSight

- Business Intelligence-Service zur visuellen Erstellung von Analysen und Dashboards.
- Schnelle, serverlose Einrichtung und automatische Skalierung.

### Amazon Redshift

- Schnelles, vollständig verwaltetes Data-Warehouse.
- Ermöglicht die Ausführung komplexer Abfragen und den Zugriff auf große Datenmengen.

## ML (Machine Learning)

### Amazon Comprehend

- Natürliche Sprachverarbeitung (NLP) zur Extraktion von Informationen.
- Identifizierung von Schlüsselphrasen, Orten, Personen, Marken oder Ereignissen.

### Amazon Kendra

- Intelligente Suchfunktion auf Basis von Machine Learning.
- Bietet relevante Antworten auf natürliche Sprachfragen.

### Amazon Lex

- Erstellung von Konversations-Schnittstellen für Anwendungen.
- Nutzt die gleiche tiefe Lernfunktionalität wie Alexa.

### Amazon Polly

- Text-in-Sprache-Service, der Text in lebensechte Sprache umwandelt.
- Unterstützt mehrere Sprachen und Stimmen.

### Amazon Rekognition

- Analysiert Bilder und Videos, um Objekte, Personen, Texte und Aktivitäten zu erkennen.
- Sicherheit und Benutzerüberprüfung durch Gesichtserkennung.

### Amazon SageMaker

- Plattform zum Erstellen, Trainieren und Bereitstellen von Machine-Learning-Modellen in jeder Größenordnung.
- Integrierte Jupyter-Notebooks für einfache Datenexploration und Modellierung.

## Business Apps

### Amazon Connect

- Cloud-basiertes Contact-Center, das einfache Skalierung und Anpassung ermöglicht.
- Integration mit anderen AWS-Services.

### Amazon SES (Simple Email Service)

- Plattform für das E-Mail-Marketing und die Transaktions-E-Mail-Kommunikation.
- Zuverlässige Zustellung und Skalierbarkeit für große E-Mail-Volumen.

## IoT (Internet of Things)

### AWS IoT Core

- Verbindung von Internet-of-Things-Geräten sicher und einfach mit der Cloud.
- Unterstützt Milliarden von Geräten und Billionen von Nachrichten.

### AWS IoT Greengrass

- Lokale Ausführung von AWS Lambda-Funktionen und Daten-Caching auf IoT-Geräten.
- Synchronisiert die Gerätedaten mit der Cloud und kommuniziert sicher mit anderen Geräten.

## Security

### AWS Artifact

- Zugriff auf Compliance-Berichte und Sicherheitsdokumentationen von AWS.
- Online-Ressource für die Überprüfung der Compliance-Status.

### AWS Audit Manager

- Automatisiert die Sammlung von Beweisen, die zur Überprüfung der Einhaltung von Vorschriften erforderlich sind.
- Erleichtert das Audit-Management.

### AWS Certificate Manager (ACM)

- Provision, Management und Bereitstellung von SSL/TLS-Zertifikaten.
- Sicherung von Netzwerkverkehr und einfache API-Aufrufe.

### AWS CloudHSM

- Hardware-Sicherheitsmodul (HSM) zur Speicherung von Schlüsseln innerhalb von AWS.
- Erfüllt Compliance-Anforderungen für die Datensicherheit.

### Amazon Cognito

- Bereitstellung von Authentifizierung, Autorisierung und Benutzerverwaltung für Web- und Mobilanwendungen.
- Unterstützt die Anmeldung über soziale Identitätsanbieter wie Facebook, Google und Amazon.

### Amazon Detective

- Analyse von Sicherheitsdaten zur schnellen Untersuchung von Sicherheitsvorfällen.
- Visualisierung von Beziehungen und Mustern in den Daten.

### AWS Directory Service

- Verwaltung von Benutzeridentitäten und Gruppen mit Microsoft Active Directory in der AWS Cloud.
- Unterstützt das Einrichten und Verwalten von AWS-Ressourcen über Unternehmensanmeldedaten.

### AWS Firewall Manager

- Zentralisierte Verwaltung von Firewall-Regeln über AWS-Konten und Anwendungen hinweg.
- Automatisiert die Sicherheitsrichtlinienverwaltung.

### Amazon GuardDuty

- Bedrohungsüberwachung und -erkennung zum Schutz von AWS-Konten und Workloads.
- Maschinelles Lernen und Bedrohungsintelligenz zur Identifizierung verdächtiger Aktivitäten.

### AWS Identity and Access Management (IAM)

- Verwaltung des Zugriffs auf AWS-Ressourcen.
- Feingranulare Zugriffskontrolle und Sicherheitskonfiguration.

### AWS IAM Identity Center (AWS Single Sign-On)

- Zentralisiertes Management des Zugriffs auf AWS und Drittanbieter-Anwendungen.
- Unterstützt Single Sign-On (SSO).

### Amazon Inspector

- Automatisierte Sicherheitsbewertung, um die Sicherheit und Compliance von Anwendungen zu verbessern.
- Überprüft Anwendungen auf Schwachstellen oder Abweichungen von Best Practices.

### AWS Key Management Service (AWS KMS)

- Verwaltung von Verschlüsselungsschlüsseln für Daten in AWS-Diensten.
- Integrierte Kontrolle über die Verwendung von Schlüsseln zur Datenverschlüsselung.

### Amazon Macie

- Entdeckung und Schutz sensibler Daten in AWS.
- Automatische Klassifizierung und kontinuierliche Überwachung von Datenzugriffen.

### AWS Network Firewall

- Hochverfügbarer, skalierbarer Netzwerk-Firewall-Service für VPCs.
- Filterung des Verkehrs auf Anwendungsebene und Erstellung von Regeln zur Kontrolle des Netzwerkzugriffs.

### AWS Resource Access Manager (AWS RAM)

- Gemeinsame Nutzung von AWS-Ressourcen zwischen AWS-Konten.
- Sicherstellung der Einhaltung von Richtlinien und Optimierung der Ressourcennutzung.

### AWS Secrets Manager

- Verwaltung des Zugriffs auf Geheimnisse, die zum Zugriff auf Anwendungen, Dienste und IT-Ressourcen benötigt werden.
- Automatisierte Rotation von Geheimnissen zur Verbesserung der Sicherheit.

### AWS Security Hub

- Umfassende Sicht auf die Sicherheitslage in AWS.
- Aggregiert, organisiert und priorisiert Sicherheitswarnungen und Verbesserungsempfehlungen.

### AWS Shield

- Schutz vor Distributed Denial of Service (DDoS)-Angriffen.
- Kostenlose Standardversion und erweiterte kostenpflichtige Version verfügbar.

### AWS WAF (Web Application Firewall)

- Schutz von Webanwendungen vor häufigen Web-Exploits und -Angriffen.
- Regelbasierte Steuerung des HTTP/S-Verkehrs zum Blockieren, Zulassen oder Überwachen.

## Financial Services

### AWS Billing Conductor

- Personalisierte und vorhersehbare AWS-Kostenrechnung.
- Anpassung von Abrechnungsinformationen und -berichten für Endkunden.

### AWS Budgets

- Erstellung von benutzerdefinierten Budgets zur Überwachung von AWS-Kosten und -Nutzung.
- Einstellung von Alarmen bei Budgetüberschreitungen.

### AWS Cost and Usage Report

- Detaillierte Informationen über die Nutzung und Kosten von AWS-Ressourcen.
- Unterstützung für die Datenanalyse und Kostenoptimierung.

### AWS Cost Explorer

- Visualisierung, Verständnis und Verwaltung von AWS-Kosten und -Nutzung über die Zeit.
- Berichte zur Identifizierung von Trends und Kostentreibern.

### AWS Marketplace

- Online-Shop für den Kauf und Verkauf von Software, die auf AWS läuft.
- Einfacher Zugang zu Softwarelösungen, die für die Ausführung auf AWS optimiert sind.
