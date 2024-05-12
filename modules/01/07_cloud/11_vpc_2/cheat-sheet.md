# AWS VPC Netzwerkdienste Cheat-Sheet

## Network Access Control Lists (NACLs)

- **Virtuelle Firewalls** zur Steuerung des Datenverkehrs **in und aus einem Subnetz** eines VPC.
- **Schutz vor unerwünschtem Verkehr und Angriffen** durch feinere Steuerung des Datenverkehrs.
- **Regelbasierte Kontrolle**: Jede Regel definiert, welcher Datenverkehr basierend auf IP-Adressen, Ports und Protokollen zugelassen oder abgelehnt wird.
- **Zustandslosigkeit**: Behandelt jedes Paket unabhängig voneinander, im Gegensatz zu Sicherheitsgruppen.
- **Allow vs. Deny**: Regeln werden in nummerierter Reihenfolge evaluiert, wobei die niedrigste Nummer zuerst kommt.

## VPC Peering

- **Direkte Netzwerkverbindung** zwischen zwei VPCs, die Ressourcen als einheitliches Netz sehen lässt.
- **Internes Routing**: Verkehr zwischen den VPCs bleibt innerhalb des AWS-Netzwerks, nutzt nicht das öffentliche Internet.
- **Routing-Konfiguration**: Notwendigkeit, Routen in den VPC Route Tables zu aktualisieren, um den Verkehr zwischen den Peered VPCs zu ermöglichen.
- **Beschränkung**: Keine transitive Peering-Fähigkeit; jede VPC-Paarung benötigt eine eigene Peering-Verbindung.
- **Regionenübergreifend**: Unterstützt Peering zwischen VPCs in verschiedenen AWS-Regionen.

## VPC Endpoints

- **Privater Zugang zu AWS-Services** innerhalb der VPC, ohne das öffentliche Internet zu nutzen.
- **Zwei Haupttypen**:
  - **Interface Endpoints (AWS PrivateLink)**: Einrichtung eines privaten Verbindungspunkts zu Services, gesteuert durch elastische Netzwerkinterfaces mit privaten IP-Adressen.
  - **Gateway Endpoints**: Für Amazon S3 und DynamoDB optimiert, integriert in die VPC-Route Tables.
- **Sicherheitskontrolle**: Interface Endpoints verwenden Security Groups, während Gateway Endpoints über angehängte Zugriffsrichtlinien kontrolliert werden.

## AWS Direct Connect

- **Dedizierte Netzwerkverbindung** von einem Unternehmensstandort zu AWS, um Internetkosten zu senken und die Leistung zu verbessern.
- **Bandbreitenflexibilität**: Wählbare Kapazität von 50 Mbps bis 100 Gbps, abhängig von den Unternehmensanforderungen.
- **Zuverlässigkeit und niedrige Latenz**: Bietet eine konsistente Netzwerkleistung im Vergleich zu internetbasierten Verbindungen.
- **Erweiterter Zugriff**: Ermöglicht die Verbindung mit sowohl privaten Ressourcen in der VPC als auch mit öffentlichen AWS-Diensten.
- **Setup-Anforderungen**: Involviert die Installation durch AWS und einen AWS Direct Connect-Partner.

## Site-to-Site VPN

- **Sichere Verbindung** zwischen einem Firmennetzwerk und einer AWS VPC über das Internet mittels VPN.
- **Wichtige Komponenten**:
  - **Customer Gateway (CGW)**: Die Kundenseite des VPN, kann eine physische oder softwarebasierte Anwendung sein.
  - **Virtual Private Gateway (VGW)**: Das AWS-Seitige VPN-Gateway, das an die VPC angehängt ist.
- **Datenverschlüsselung**: Schützt alle Daten, die zwischen den Netzwerken übertragen werden, mittels starker Verschlüsselungsprotokolle.
- **Routing-Optionen**: Unterstützt sowohl statische Routen als auch dynamische Routen (mittels BGP).
- **Hochverfügbarkeit**: Automatischer Failover zwischen zwei VPN-Tunneln für hohe Verfügbarkeit und Redundanz.
