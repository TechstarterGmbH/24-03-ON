---

class: invert

---

### Netzwerke Unter Linux

---

## Gliederung

1. Einführung
2. Analogie: Inseln und Brücken
3. Layers
4. IPv4 Networking & Konfiguration
5. Routing & DNS
6. Sockets
7. Cisco Packet Tracer

---

## Einführung

- Netzwerke sind in der heutigen Zeit unverzichtbar
- Linux bietet viele Möglichkeiten zur Konfiguration und Analyse von Netzwerken
- In diesem Kapitel werden die wichtigsten Aspekte der Netzwerkkonfiguration unter Linux behandelt

---

## Inseln und Brücken

- Stellt euch ein Netzwerk als ein Ocean vor
- Jedes Gerät ist eine Insel
- Ein Router ist eine Insel zwischen den Inseln

---

- Verbindung zwischen den Inseln: Kabel, WLAN, Glasfaser, etc. (Link)
- Link verbindet sich mit einem Netzwerkgerät (Interface)

---

## Layers

- Link Layer: Ethernet, WLAN, etc.
- Network Layer: IP
- Application Layer: HTTP, SSH, etc.
- Jeder Layer hat seine eigenen Protokolle
- Jeder Layer hat seine eigenen Tools

---

## Link Layer Networking

- Ethernet ist das am weitesten verbreitete Link Layer Protokoll
- Jedes Gerät hat eine MAC Adresse (48 Bit)
- MAC Adressen sollen innerhalb eines Netzwerks eindeutig sein
- 'ifconfig' zeigt Informationen über die Link layer Interfaces
- `ip link` zeigt Informationen über die Link layer Interfaces
- 'lo' ist das Loopback Interface
- 'eth0' ist das erste Ethernet Interface
- 'wlan0' ist das erste WLAN Interface
- 'ens18' ist ein Beispiel für eine Network Interface Name

---

## IPv4 Networking

- IPv4 ist das am weitesten verbreitete Network Layer Protokoll
- Jedes Gerät hat eine IP Adresse (32 Bit)
- IP Adressen sollen innerhalb eines Netzwerks eindeutig sein
- maximal 4.3 Milliarden IP Adressen (2^32)
- Human form 0-255.0-255.0-255.0-255

---

# Subnets

- IP Adressen können in Subnets unterteilt werden
- Subnetzmasken werden verwendet, um die Größe eines Subnets zu definieren
- zwei Formen von Darstellung: CIDR und Netmask
- Netmask: 255.255.255.0
- CIDR: 192.168.0.1/24 (24 bedeutet, dass die ersten 24 Bits der IP Adresse die Netzwerkadresse sind)
---

# NAT

- NAT (Network Address Translation) wird verwendet, um private IP Adressen in öffentliche IP Adressen zu übersetzen
- NAT wird verwendet, um mehrere Geräte mit einer öffentlichen IP Adresse zu verbinden
- NAT wird verwendet, um IPv4 Adressen zu sparen

---

# IPv4 Konfiguration

- Zwei Arten von IP Konfiguration: statisch und dynamisch
- Statische IP Konfiguration: wird manuell konfiguriert
- Dynamische IP Konfiguration: wird automatisch konfiguriert (DHCP)
- `ip addr` zeigt Informationen über die IP Adressen
- 'ip addr add' fügt eine IP Adresse hinzu
- 'ip addr show' löscht eine IP Adresse

---

# Routing

- Routing wird verwendet, um Pakete zwischen verschiedenen Netzwerken zu senden
- Eine zwischeninsel um alle Inseln zu verbinden
- jeder Router hat eine Routing Tabelle
- jeder Router auf dem Weg zum Ziel ist ein Hop
- `ip route show` zeigt Informationen über die Routing Tabelle

---

# DNS

- IP Adressen sind schwer zu merken
- DNS (Domain Name System) wird verwendet, um IP Adressen in Domain Namen zu übersetzen
- 'cat /etc/resolv.conf' zeigt die DNS Server / 'cat /etc/hosts' zeigt die Hosts Datei
- 'host' zeigt die IP Adresse einer Domain
- 'dig' zeigt detaillierte Informationen über eine Domain

---

# Sockets

- Sockets werden verwendet, um eine Verbindung zwischen zwei Progammen herzustellen
- Es gibt drei Arten von Sockets: UNIX, TCP und UDP
- UNIX Sockets werden verwendet, um eine Verbindung zwischen zwei Prozessen auf demselben Gerät herzustellen

- TCP Sockets werden verwendet, um eine Verbindung zwischen zwei Prozessen auf verschiedenen Geräten herzustellen
- UDP Sockets werden verwendet, um eine Verbindung zwischen zwei Prozessen auf verschiedenen Geräten herzustellen

---

# Unterschiede zwischen TCP und UDP

- TCP kann empfangene Pakete bestätigen deshalb ist es zuverlässiger (webseiten, email, etc.)
- UDP ist schneller, aber nicht zuverlässig und kann Pakete verlieren (youtube, skype, etc.)

---

# commands

- 'ss' zeigt Informationen über die Sockets
- 'ss -t' zeigt Informationen über die TCP Sockets
- 'netstat' zeigt Informationen über die Netzwerkstatistik
- 'netstat - r' zeigt die Routing Tabelle
- 'netstat - i' zeigt Informationen über die Interfaces

---

# Cicsco Packet Tracer

- ist ein Netzwerk-Simulationstool
- wird verwendet, um Netzwerke zu entwerfen, zu konfigurieren und zu testen
- wird verwendet, um CCNA Zertifizierungen zu erhalten
- ist ein kostenloser Download

---

# HUB

- ist ein Gerät, das Datenpakete von einem Gerät an alle anderen Geräte sendet
- ist ein Layer 1 Gerät
- ist ein einfaches Gerät, das keine Intelligenz hat
- ist ein veraltetes Gerät

---

# SWITCH

- ist ein Gerät, das Datenpakete von einem Gerät an ein anderes Gerät sendet
- ist ein Layer 2 Gerät
- ist ein intelligentes Gerät, das MAC Adressen lernt
- ist ein modernes Gerät
- ist ein schnelleres Gerät als ein Hub

---

# ROUTER

- ist ein Gerät, das Datenpakete zwischen verschiedenen Netzwerken sendet
- ist ein Layer 3 Gerät
- ist ein intelligentes Gerät, das Routing Tabellen hat
- Zwischeninsel um alle Inseln zu verbinden

---

# Fragen

---
