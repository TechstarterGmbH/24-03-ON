# Cheat Sheet

## Grundlegende AWS-Konzepte

### APIs

- **API (Application Programming Interface):** Schnittstelle, die die Kommunikation zwischen Softwareanwendungen ermöglicht.
  - **Metapher:** Menü in einem Restaurant – du bestellst (Anfrage) und die Küche liefert (Antwort).
- **REST API:**
  - **Ressourcen:** Einzigartige Identifikatoren für Datenobjekte.
  - **HTTP-Methoden:** GET (Daten abrufen), POST (Daten erstellen), PUT (Daten aktualisieren), DELETE (Daten löschen).
  - **Vorteile:** Einfachheit, Skalierbarkeit, Flexibilität.

### Internet und Netzwerke

- **Internet:** Globales Netzwerk von Computern, die Daten austauschen.
  - **Komponenten:** Server, Clients, Router, Protokolle (HTTP, TCP/IP).
  - **Metapher:** Riesiges Spinnennetz, bei dem jeder Knotenpunkt ein Computer ist.
- **Öffentliches Internet vs. Privates Netzwerk:**
  - **Öffentlich:** Weltweit zugänglich, weniger sicher.
  - **Privat:** Nur für bestimmte Benutzer zugänglich, sicherer durch Firewalls und VPNs.
  - **Metapher:** Öffentliches Internet ist wie ein öffentlicher Park, privates Netzwerk wie dein Haus.
- **Edge Computing:** Verlagerung der Datenverarbeitung näher an den Erzeugungsort.
  - **Anwendungsbereiche:** IoT, Echtzeitanalysen, autonome Fahrzeuge, Smart Cities.
  - **Metapher:** Mini-Supermarkt in der Nähe, um lange Wege zu vermeiden.

### Serverless Computing

- **Serverless Computing:** Cloud-Anbieter übernimmt die Serververwaltung.
  - **Vorteile:** Kostenersparnis, automatische Skalierung, weniger Verwaltungsaufwand, schnellere Markteinführung.
  - **Metapher:** Mieten eines Autos ohne Wartung – du nutzt es nur, wenn du es brauchst.

## AWS Networking und Content Delivery Services

### Amazon API Gateway

- **Funktionen:** Erstellung, Bereitstellung und Verwaltung von APIs.
  - **Unterstützt:** RESTful APIs und WebSocket APIs.
  - **Sicherheit:** Authentifizierung und Autorisierung mit AWS IAM, Amazon Cognito und Lambda Authorizers.
  - **Überwachung:** Integration mit Amazon CloudWatch.
- **Nutzung:** Leitet Anfragen an verschiedene Ziele weiter (z.B. AWS Lambda, EC2, öffentliche APIs).
- **Kosten:** Bezahlung pro Anfrage und Datenübertragung ins Internet.

### AWS Global Accelerator

- **Funktionen:** Verbesserung der Anwendungsleistung durch Nutzung des globalen AWS-Netzwerks.
  - **Vorteile:** Beschleunigte Netzwerkpfade, intelligente Verkehrslenkung, Schutz vor DDoS-Angriffen.
  - **Metapher:** Anfrage geht über das interne AWS-Netzwerk statt über das Internet, wie eine Abkürzung.
- **Anlaufpunkt:** Zwei statische Anycast-IP-Adressen für den schnellsten Weg.

### Amazon Route 53

- **Funktionen:** Skalierbarer DNS-Webservice.
  - **DNS-Auflösung:** Übersetzung von Domänennamen in IP-Adressen.
  - **Verkehrsmanagement:** Latency-based, Geo-DNS und Failover-Routing.
  - **Domain-Registrierung:** Verwaltung von Domänennamen.
- **DNS-Routing:**
  - **Simple Routing:** Direkte Zuordnung eines Domänennamens zu einem einzigen Endpunkt.
  - **Latency Routing:** Weiterleitung basierend auf der geringsten Latenz für den Benutzer.
  - **Geo DNS:** Weiterleitung basierend auf dem geografischen Standort des Benutzers.
  - **Failover-Routing:** Sicherstellung der Verfügbarkeit durch Weiterleitung zu Backup-Endpunkten bei Ausfällen.
- **Sicherheit:** Unterstützung für DNSSEC zur Verhinderung von DNS-Manipulationen, Health Checks zur Überwachung der Endpunkte.

### AWS VPN

- **Site-to-Site VPN:** Verbindung zwischen lokalem Rechenzentrum und AWS VPC.
  - **Sicherheit:** Verschlüsselung des Datenverkehrs.
  - **Verwendung:** Hybride Cloud-Architekturen.
- **Client VPN:** Sicherer Remote-Zugriff für Benutzer auf AWS-Ressourcen.
  - **Client VPN Endpoint:** Erstellung eines Endpunkts für den Remote-Zugriff.
  - **Zertifikate und Authentifizierung:** Verwendung von TLS-Zertifikaten und optionalen Authentifizierungsmechanismen wie Active Directory.
  - **Verbindungsrichtlinien:** Netzwerkzugriffsrichtlinien für verbundene Clients.
  - **Download von VPN-Clients:** Bereitstellung von VPN-Software für verschiedene Betriebssysteme.
