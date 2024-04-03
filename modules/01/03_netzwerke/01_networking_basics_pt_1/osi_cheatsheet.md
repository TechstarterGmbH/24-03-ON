# OSI-Modell Cheat Sheet

## Basics

- **Allgemeine Beschreibung:** Das OSI (Open Systems Interconnection) Modell ist eine Metapher für die Kommunikation zwischen Computern in einem Netzwerk. Es teilt die Kommunikation in sieben Schichten auf, die jeweils spezifische Funktionen und Protokolle haben.

### Metapher

- **Was wird gebraucht um eine Nachricht zu senden?**
- Stell dir vor, du möchtest eine neue Stadt gründen und eine Nachricht versenden...
  - Du musst Straßen und Wege bauen (Physische Ebene).
  - Du musst Verkehrsregeln festlegen, um Unfälle zu vermeiden (Sicherungsebene).
  - Du musst entscheiden, welchen Weg die Nachricht nehmen soll (Netzwerkebene).
  - Du musst sicherstellen, dass die Nachricht ankommt (Transportschicht).
  - Du musst Telefonleitungen einrichten, halten und abbauen (Sitzungsebene).
  - Du musst die Nachricht in das richtige Format bringen (Darstellungsebene).
  - Du musst die Nachricht an den Empfänger liefern (Anwendungsebene)J


## OSI-Modell

### 1. Physische Ebene (Physical Layer)

- Legt die Hardware- und Übertragungsmedien-Spezifikationen fest, um die binären Daten über Netzwerkmedien zu transportieren.
- **Metapher:** Die Straßen und Wege der Stadt, über die die Nachrichten gehen.
- **Elemente und Fähigkeiten:**
  - Kabeltypen (Koaxial, Twisted-Pair, Glasfaser)
  - Drahtlose Übertragungsmedien (Radio, Mikrowelle, Infrarot)
  - Physikalische Spezifikationen von Geräten
- **Protokolle/Standards:** Ethernet, IEEE 802.11 (Funkstandard genutz in WLAN)

### 2. Sicherungsebene (Data Link Layer)

- Verantwortlich für die Datenübertragung zwischen benachbarten Netzwerkknoten und Fehlererkennung sowie -korrektur.
- **Metapher:** Die Verkehrsregeln, die sicherstellen, dass die Datenpakete nicht zusammenstoßen.
- **Elemente und Fähigkeiten:**
  - Fehlererkennung und -korrektur
  - MAC-Adressen (Media Access Control)
- **Protokolle:** Ethernet, PPP (Point-to-Point Protocol), Switching

### 3. Netzwerkebene (Network Layer)

- Bestimmt den physischen Pfad, den die Daten nehmen sollen, basierend auf Netzwerkbedingungen, Priorität von Diensten und anderen Faktoren.
- **Metapher:** Die Stadtplanung, die entscheidet, welchen Weg die Nachricht nimmt.
- **Elemente und Fähigkeiten:**
  - Routing und Weiterleitung von Paketen
  - IP-Adressen (IPv4, IPv6)
- **Protokolle:** IP (Internet Protocol), ICMP (Internet Control Message Protocol -> Ping)

### 4. Transportschicht (Transport Layer)

- Stellt die transparente Übertragung von Daten zwischen Endsystemen sicher und sorgt für eine zuverlässige Datenübertragung.
- **Metapher:** Der Lieferdienst, der sicherstellt, dass die gesamte Nachricht ankommt.
- **Elemente und Fähigkeiten:**
  - Aufteilung von Daten in Segmente
  - Zuverlässige Datenübertragung, Fluss- und Staukontrolle
- **Protokolle:** TCP (Transmission Control Protocol), UDP (User Datagram Protocol)

### 5. Sitzungsebene (Session Layer)

- Steuert die Dialoge (Sitzungen) zwischen Computern, verwaltet deren Aufbau, Steuerung und Beendigung.
- **Metapher:** Einrichten, Halten und Abbauen von Telefonleitungen.
- **Elemente und Fähigkeiten:**
  - Aufbau, Steuerung und Beendigung von Sitzungen
  - Synchronisation von Datenströmen
- **Protokolle:** NFS (Network File System), SQL (Structured Query Language)

### 6. Darstellungsebene (Presentation Layer)

- Transformiert Daten in das Format, das das Anwendungsschichtprogramm erwartet, und umgekehrt. Kümmert sich um die Datenverschlüsselung, -komprimierung und -konvertierung.
- **Metapher:** Der Übersetzer der Stadt, der die Daten in das richtige Format bringt.
- **Elemente und Fähigkeiten:**
  - Datenverschlüsselung und -komprimierung
  - Umwandlung von Datenformaten
- **Protokolle:** SSL (Secure Socket Layer)

### 7. Anwendungsebene (Application Layer)

- Ermöglicht den Zugriff auf Netzwerkdienste, die Endbenutzeranwendungen unterstützen. Diese Ebene arbeitet direkt mit Softwareanwendungen.
- **Metapher:** Die Anwendungen, mit denen der Benutzer direkt interagiert.
- **Elemente und Fähigkeiten:**
  - Bereitstellung von Netzwerkdiensten für Endanwender-Programme
  - HTTP, FTP, DNS, SMTP, DHCP
- **Protokolle:** HTTP (Hypertext Transfer Protocol), FTP (File Transfer Protocol), DNS (Domain Name System)

