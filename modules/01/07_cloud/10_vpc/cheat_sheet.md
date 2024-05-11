# Cheat Sheet: AWS VPC

## VPC (Virtual Private Cloud)

- **Isolation:** Bietet eine isolierte Umgebung innerhalb der AWS-Cloud, die getrennt von anderen Nutzern ist.
- **Ressourcenkontrolle:** Ermöglicht volle Kontrolle über das Netzwerkumfeld, einschließlich IP-Adressbereichen, Subnetzen, Netzwerkgateways und Routing.
- **Sicherheit:** Erhöht die Sicherheit durch Kontrolle des Netzwerkzugriffs auf EC2-Instanzen und anderen AWS-Diensten.
- **Skalierbarkeit:** Ermöglicht es, die Netzwerkinfrastruktur nach Bedarf zu skalieren und anzupassen.
- **Mehrere Konnektivitätsoptionen:** Unterstützt die Verbindung mit dem Internet, Rechenzentren und anderen VPCs.

## Subnetze

- **Netzwerkpartitionierung:** Teilt eine VPC in mehrere Subnetze, die in verschiedenen Verfügbarkeitszonen (Availability Zone (AZ)) liegen können.
- **Verkehrskontrolle:** Ermöglicht detaillierte Kontrolle über den Routingverkehr für jede Subnetzgruppe.
- **Sicherheitsverbesserung:** Ermöglicht das Implementieren von Sicherheitsregeln auf Subnetzebene.
- **Flexibilität:** Unterstützt öffentliche und private Subnetzkonfigurationen für unterschiedliche Sicherheits- und Zugriffsanforderungen.
- **Verfügbarkeitszonen:** Erhöht die Verfügbarkeit und Fehlertoleranz von Anwendungen durch Verteilung der Subnetze über mehrere Zonen.

## Internet Gateway

- **Zugangspunkt:** Dient als Tor zwischen der VPC und dem Internet.
- **Bidirektionale Kommunikation:** Ermöglicht ausgehenden Internetverkehr (wenn Routen dafür eingerichtet sind) und eingehenden Internetverkehr.
- **Einfache Einrichtung:** Kann schnell über die AWS-Managementkonsole erstellt und konfiguriert werden.
- **Stateful Filtering:** Behält den Zustand von Netzwerksitzungen (z.B. TCP-Streams) und ermöglicht reibungslose Kommunikation.
- **Unverzichtbar für öffentliche Subnetze:** Notwendig, um EC2-Instanzen in öffentlichen Subnetzen mit dem Internet zu verbinden.

## Route Tables

- **Routingentscheidungen:** Bestimmen, wohin Netzwerkverkehr basierend auf der Ziel-IP-Adresse geleitet wird.
- **Mehrere Routen:** Unterstützen das Hinzufügen mehrerer Routen in einer Tabelle, um den Verkehr unterschiedlich zu leiten.
- **Subnetz-Verbindung:** Jedes Subnetz in einer VPC muss einer Route Table zugeordnet sein.
- **Internet-Routing:** Spezielle Routen für das Senden des Traffics an das Internet Gateway.
- **Private und öffentliche Routing-Optionen:** Unterscheidung zwischen internem VPC-Traffic und dem Traffic, der das Internet erreichen soll.

## Security Groups

- **Firewall auf Instanzebene:** Funktioniert als Firewall für EC2-Instanzen, um eingehenden und ausgehenden Verkehr zu steuern.
- **Zustandsbehaftete Filterung:** Behält den Zustand von Netzwerkverbindungen und automatisiert die Rückantwortregeln.
- **Regelbasierte Zugriffskontrolle:** Erlaubt das Erstellen von Regeln, die auf Protokoll, Port und Quell- oder Zieladressen basieren.
- **Standardmäßige Ablehnung:** Alle eingehenden Verkehre sind standardmäßig blockiert, es sei denn, Regeln werden definiert, die sie zulassen.
- **Separate Einstellungen für eingehenden und ausgehenden Verkehr:** Bietet die Möglichkeit, unterschiedliche Regeln für eingehende und ausgehende Verbindungen festzulegen.

## NAT Gateways

- **Internetzugriff für private Subnetze:** Ermöglicht Instanzen in privaten Subnetzen den Zugriff auf das Internet, ohne von außen direkt erreichbar zu sein.
- **Redundanz und hohe Verfügbarkeit:** AWS empfiehlt, in jeder Verfügbarkeitszone ein NAT-Gateway zu platzieren.
- **Kosten und Durchsatz:** NAT-Gateways sind kostenpflichtig und bieten hohen Durchsatz und geringe Latenz.
- **Elastische IP-Adressen:** Nutzen eine oder mehrere Elastische IP-Adressen, um eine konstante öffentliche IP-Adresse zu gewährleisten.
- **Automatische Skalierung:** Skaliert automatisch bis zu 45 Gbps, ohne dass eine manuelle Eingriff erforderlich ist.

## Bastion Host

- **Sicherer Zugriffspunkt:** Dient als Gateway für den Zugriff auf Instanzen in privaten Subnetzen.
- **Zwischeninstanz:** Ermöglicht die Verbindung zu privaten Instanzen über SSH
- **Sicherheitsmaßnahmen:** Muss mit starken Sicherheitsmaßnahmen geschützt werden, um unerwünschte Zugriffe zu verhindern.

## Network Access Control Lists (NACLs)

- **Netzwerksicherheit auf Subnetzebene:** Funktionieren als Firewall auf Subnetzebene, um eingehenden und ausgehenden Verkehr zu steuern.
- **Stateless Filtering:** Filtern den Verkehr basierend auf Regeln, ohne den Zustand der Verbindung zu berücksichtigen.
- **Regelbasierte Zugriffskontrolle:** Erlaubt das Erstellen von Regeln, die auf Protokoll, Port und Quell- oder Zieladressen basieren.
- **Priorisierung von Regeln:** Regeln werden in der Reihenfolge ihrer Nummerierung angewendet, wobei die niedrigste Nummer zuerst angewendet wird.
- **Separate Einstellungen für eingehenden und ausgehenden Verkehr:** Bietet die Möglichkeit, unterschiedliche Regeln für eingehende und ausgehende Verbindungen festzulegen.
