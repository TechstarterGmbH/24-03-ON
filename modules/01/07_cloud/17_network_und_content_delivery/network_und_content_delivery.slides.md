---

class: invert

---
# Einführung in Networking and Content Delivery

---

## Grundlagen

---

## 1: Einführung in APIs

---

### Was ist eine API?

- **Definition:**
  - API steht für "Application Programming Interface".
  - Es ist eine Sammlung von Definitionen und Protokollen, die die Interaktion mit einem Programm erlauben (meistens von einem anderen Programm)

---

- **Was ist ein Interface**:
  - Ein Schnittstelle zwischen verschiedenen Bereichen
  - Die Tastatur und Maus sind eine Schnittstelle (Interface) zwischen dir und dem Computer. Das ermöglicht es dir, bestimmte Aktionen auszuführen.
- **Metapher:** Stell dir eine API als ein Menü in einem Restaurant vor. Du bestellst etwas (sendest eine Anfrage) und die Küche (der Server) bereitet es für dich vor (antwortet mit den Daten).
- **Rolle:** APIs ermöglichen es verschiedenen Softwareanwendungen, miteinander zu kommunizieren. Sie definieren die korrekte Art und Weise, wie ein Entwickler eine Anwendung schreiben kann, die auf die Dienste anderer Software zugreift.
- **Beispiele:** Wetter-API für Wetterdaten, Google Maps API für Kartendaten, Twitter API für Tweets.

---

### REST API: Konzepte und Vorteile

- **Konzepte:**
  - **Ressourcen:** Einzigartige Identifikatoren für Datenobjekte.
  - **URI (Uniform Resource Identifier):** Ein Weg, Ressourcen eindeutig zu identifizieren.
  - **HTTP-Methoden:** 
    - **GET:** Abrufen von Daten.
    - **POST:** Erstellen von Daten.
    - **PUT:** Aktualisieren von Daten.
    - **DELETE:** Löschen von Daten.
  - **Statuscodes:** Rückmeldungen des Servers (z.B. 200 OK, 404 Not Found, 500 Internal Server Error).

---

- **Vorteile:**
  - **Einfachheit:** Leicht zu verstehen und zu implementieren.
  - **Skalierbarkeit:** Gut geeignet für verteilte Systeme.
  - **Flexibilität:** Kann verschiedene Datentypen und Formate verarbeiten.

---

## 2: Das Internet und Netzwerke

---

### Was ist das Internet?

- **Definition:** Ein globales Netzwerk von Computern, die über das Internetprotokoll (IP) miteinander verbunden sind und Daten austauschen.
- **Metapher:** Stell dir das Internet als ein riesiges Spinnennetz vor, bei dem jeder Knotenpunkt ein Computer ist. Diese Knotenpunkte sind durch Fäden (Netzwerkverbindungen) miteinander verbunden.
- **Komponenten:**
  - **Server:** Stellen Ressourcen und Dienste bereit.
  - **Clients:** Greifen auf Ressourcen und Dienste zu.
  - **Router:** Leiten Datenpakete durch das Netzwerk.
  - **Protokolle:** Regeln für die Kommunikation, wie HTTP, TCP/IP.

---

### Unterschied zwischen öffentlichem Internet und privatem Netzwerk

- **Öffentliches Internet:**
  - **Zugänglichkeit:** Nicht zuverlässig, keine Garantien für Geschwindigkeit und Durchsatzrate
  - **Sicherheit:** Zero Trust (Null Vetrauen) - Umgebung
  - **Vergleich**: Wie der Wilde Weste, es kann jeder Zeit etwas verloren gehen, langsamer gehen, etc.

---

- **Privates Netzwerk:**
  - **Zugänglichkeit:** Durch unsere Kontrolle können wir Entscheidungen treffen und Leistung planen.
  - **Sicherheit:** Besser geschützt durch Firewalls, VPNs, Zugangskontrollen.
  - **Beispiele:** Firmennetzwerke, Heimnetzwerke.
- **Metapher:** Das öffentliche Internet ist wie ein öffentlicher Park, den jeder betreten kann, während ein privates Netzwerk wie dein eigenes Haus ist, das nur du und eingeladene Gäste betreten können.

---

### Edge: Definition und Anwendungsbereiche

- **Definition:** Edge Computing verlagert die Datenverarbeitung und -speicherung näher an den Ort, an dem die Daten erzeugt werden. Dies reduziert Latenzzeiten und Bandbreitenbedarf.
- **Metapher:** Edge Computing ist wie ein Mini-Supermarkt in deiner Nähe, der die häufig gekauften Artikel vorrätig hat, um lange Wege zu vermeiden.
- **Anwendungsbereiche:**
  - **IoT-Geräte:** Sensoren und Geräte, die Echtzeitdaten verarbeiten müssen.
  - **Echtzeitanalysen:** Daten, die sofort ausgewertet werden müssen, wie in der industriellen Automatisierung.
  - **Autonome Fahrzeuge:** Fahrzeuge, die schnelle Entscheidungen treffen müssen, ohne auf entfernte Rechenzentren zu warten.
  - **Smart Cities:** Infrastruktur, die sofortige Reaktionen auf Verkehrs- und Umweltdaten erfordert.

---

## 3: Was ist Serverless Computing?

---

### Was ist Serverless Computing?

- Früher mussten wir uns selbst um die Inbetriebnahme, Betreuung, Instanthaltung von Servern kümmern!
- Durch Cloud Anbieter `Infrastructure as a Service (IaaS)` zum Beispiel EC2 müssen wir uns zwar nicht um die Infrastruktur kümmern aber die Betriebssystem updaten etc.
- Bei **Serverless** kümmert sich der Cloud Betreiber um jegliche Instandhaltung. Wir liefern unsere Konfiguration / unseren Code und AWS kümmert sich um den Rest.

---

### Vorteile von Serverless Computing

- **Kostenersparnis:** Bezahlung nur für die tatsächlich genutzte Rechenleistung. Keine Kosten für ungenutzte Ressourcen.
- **Skalierbarkeit:** Automatische Anpassung an die benötigte Last. Skaliert nach oben oder unten, je nach Bedarf.
- **Weniger Verwaltungsaufwand:** Keine Notwendigkeit, Server zu verwalten oder zu warten. Der Cloud-Anbieter übernimmt alle Aufgaben der Infrastrukturverwaltung.
- **Schnellere Markteinführung:** Entwickler können sich auf die Funktionalität konzentrieren und Anwendungen schneller bereitstellen.

---

## Amazon Web Services für Networking und Content Delivery

---

## 1: Amazon API Gateway

---

### Einführung in Amazon API Gateway

- Vollständig von **AWS verwaltet**
- Service zur Erstellung APIs
- Wird häufig für Micro-Service Architekturen verwendet um eine zentrale Anlaufstelle zu haben
- **Funktionen:**
  - **Erstellung von APIs:** Unterstützung für RESTful APIs und WebSocket APIs.
  - **Verwaltung des API-Lebenszyklus:** Versionierung, Staging, und API-Dokumentation.
  - **Sicherheit:** Authentifizierung und Autorisierung mit AWS IAM, Amazon Cognito und Lambda Authorizers.
  - **Überwachung und Protokollierung:** Integration mit Amazon CloudWatch zur Überwachung von API-Aufrufen und -Leistung.

---

#### API Gateway Funktionsweise

- API Gateway leitet die Anfrage nur an verscheidene Orte weiter und **verarbeitet diese nicht selbst**
- Dabei kann an verschiedene Ziele weitergeleitet werden:
  - AWS Lambda
  - AWS EC2
  - AWS Kinesis
  - Jede öffentliche API
- **Bezahlung**
  - Pro Anfrage im Monat
  - Datentransfer aus dem Netzwerk ins Internet (Egress)

---

## 2: AWS Global Accelerator

---

### Was ist AWS Global Accelerator?

- Manchmal will man **besonders schnelle Kommunikation zwischen unserer Applikation und dem Endnutzer**
- AWS Global Accelerator schaft das, indem der Verkehr nicht über das Internet geht, sondern über das private AWS Netzwerk
- Damit kann eine **Verschnellerung von BIS ZU 60%** ereicht werden (laut AWS)
- Hierfür werden die Local Zones (Edge Locations) von AWS verwendet (kleinere Rechenzentren, die näher an großen Städten sind)

---

### Funktionsweise

- Die Anfrage des Nutzers geht zur nächsten AWS Location (Local Zone oder normale AZ)
- Von dort aus wird die Anfrage über das interne AWS Netzwerk geleitet
- Und kann zu folgenden AWS Resourcen geleitet werden:
  - Network Load Balancer
  - Application Load Balancer
  - EC2 Instanzen
  - Elastic IPs
- Als Anlaufpunkt erhält man **2 statische IP Adressen**
  - Es handelt sich um Anycast IP Adressen, das bedeutet ist gibt mehrere Geräte die unter dieser Adresse erreichbar sind
  - Das hat zur Folge, dass das Paket immer den kürzesten Weg nimmt.

---

### Vorteile

- **Beschleunigte Netzwerkpfade:** Nutzung des globalen AWS-Netzwerks zur Minimierung der Latenz und Verbesserung der Anwendungserreichbarkeit.
- **Intelligente Verkehrslenkung:** Automatische Verteilung des Datenverkehrs auf die gesündesten und leistungsfähigsten Endpunkte.
- **Sicherheitsfunktionen:** Integrierter Schutz vor DDoS-Angriffen und automatische Lastverteilung.

---

## 4: Amazon Route 53

---

### Wiederholung: Was ist DNS?

- **DNS:** Domain Name System
- **Funktion:** Übersetzung von Domänennamen in IP-Adressen
- **Beispiel:** www.google.com -> 1.2.3.4
- **Vorteile:** Einfacheres Merken von Domains, da IP-Adressen schwer zu merken sind
- **Funktionsweise:** Anfrage an DNS-Server, der die IP-Adresse zurückgibt
- **Typen:** A-Record (IPv4), AAAA-Record (IPv6), CNAME-Record (Alias), MX-Record (Mailserver)

---

### Einführung in Amazon Route 53

- Der **DNS Service** von AWS
- Route53 kommt daher, dass 53 der Standardport für DNS Anfragen ist
- Stell dir vor, du hast ein Unternehmen gegründet was gerne eine Website hätte. Du musst also erstmal eine Domain (z.B. www.meinunternehmen.com) registrieren. Dann musst du die Domain auf einen Server zeigen lassen. Das macht Route53.
- **Funktionen:**
  - **DNS-Auflösung:** Übersetzung von Domänennamen in IP-Adressen.
  - **Verkehrsmanagement:** Nutzung von Routing-Optionen wie Latency-based, Geo-DNS und Failover-Routing.
  - **Domain-Registrierung:** Registrierung und Verwaltung von Domänennamen.

---

### Domain-Registrierung 

- **Registrierung:** Auswahl und Registrierung eines Domänennamens über Route 53.
- **DNS-Einträge:** Konfiguration von DNS-Einträgen wie A, AAAA, CNAME und MX.
- **Verwaltung:** Verwaltung von Domänen und DNS-Einstellungen über die Route 53-Konsole oder API.

---

### DNS-Routing

- **Simple Routing:** Direkte Zuordnung eines Domänennamens zu einem einzigen Endpunkt.
- **Latency Routing:** Weiterleitung basierend auf der geringsten Latenz für den Benutzer.
- **Geo DNS:** Weiterleitung basierend auf dem geografischen Standort des Benutzers.
- **Failover-Routing:** Sicherstellung der Verfügbarkeit durch Weiterleitung zu Backup-Endpunkten bei Ausfällen.

---

### Sicherheit und Verfügbarkeit

- **DNSSEC:** Unterstützung für DNS Security Extensions zur Verhinderung von DNS-Manipulationen.
- **Health Checks:** Überwachung der Erreichbarkeit von Endpunkten und automatische Anpassung der Routing-Entscheidungen.

---

## 6: AWS VPN

---

### VPN (Virtual Private Network)

- **Definition:** Ein VPN ist ein sicherer Tunnel, der zwei oder mehr Netzwerke miteinander verbindet.
- **Funktionen:**
  - **Sicherheit:** Verschlüsselung des Datenverkehrs zwischen den Netzwerken.
  - **Vertraulichkeit:** Schutz der Daten vor unbefugtem Zugriff.
  - **Integrität:** Sicherstellung, dass die Daten während der Übertragung nicht manipuliert wurden.

---

### Site-to-Site VPN

- **Verbindung:** Zwischen deinem lokalen Rechenzentrum und deiner AWS VPC.
- Hybride Cloud: Verbindung zwischen On-Premises und Cloud.
- Wiederholung

---

### Client VPN

- Wie können sich einzelne Benutzer sicher mit der AWS Umgebung verbinden?
- Stell dir vor, du arbeitest für ein Unternehmen wo verschiedene Mitarbeiter (Office + Remote) auf ein internes System zugreifen müssen. Das kann über VPN realisiert werden.
- **Client VPN Endpoint:** Erstellung eines Endpunkts für den Remote-Zugriff.
- Somit kannst du auch private Ressourcen in der Cloud erreichen. (Nicht nur öffentliche)
- **Verschlüsselung:** Schutz des Datenverkehrs durch starke Verschlüsselungsalgorithmen.

---

### Einrichtung und Konfiguration von AWS VPN

- **Client VPN Endpoint:** Erstellung eines Endpunkts für den Remote-Zugriff.
- **Zertifikate und Authentifizierung:** Verwendung von TLS-Zertifikaten und optionalen Authentifizierungsmechanismen wie Active Directory.
- **Verbindungsrichtlinien:** Konfiguration von Netzwerkzugriffsrichtlinien für verbundene Clients.
- **Download von VPN-Clients:** Bereitstellung von VPN-Software für verschiedene Betriebssysteme.
