---

class: invert

---

# Einführung in die Netzwerktechnologie

---

## Was ist ein Netzwerk?

---

- **Definition**: Eine Sammlung von Computern, Servern, Hauptrechnern, Netzwerkgeräten, Peripheriegeräten oder anderen Geräten, die miteinander verbunden sind, um Daten und Ressourcen auszutauschen.
- Denke an ein Netzwerk wie an ein Postsystem.
- Jedes **Haus** (Computer) kann **Briefe** (Daten) an andere Häuser senden,
- indem es das Netz der **Straßen** (Verbindungen)
- und die **Postdienste** (Netzwerkprotokolle) nutzt.

---

### Das Grundprinzip von Netzwerken

---

- **Zweck**: Ermöglicht die Kommunikation und den Ressourcenaustausch über Distanzen hinweg.
- **Funktionsweise**: Durch das Senden und Empfangen von Datenpaketen über verschiedene Übertragungsmedien (Kabel, WLAN, etc.).

---

### Die Bedeutung von Netzwerken im Alltag

- **Allgegenwärtigkeit**: Vom Surfen im Internet über das Streamen von Filmen bis hin zur Nutzung sozialer Netzwerke - all dies wird durch Netzwerktechnologie ermöglicht.
- **Verbesserung der Lebensqualität**: Ermöglicht Homeoffice, Online-Bildung und den Zugriff auf digitale Ressourcen von überall auf der Welt.
- **Wirtschaftliche Bedeutung**: Stellt die Basis für E-Commerce, Cloud-Computing und viele andere Geschäftsmodelle dar.

---

## Netzwerk grundlegend erklärt

---

### Was ist ein Netzwerk?

- **Definition**: Eine Verbindung zwischen zwei oder mehr Computern, um Ressourcen zu teilen und Informationen auszutauschen.

---

### Beispiele von Computernetzwerken in der Praxis

- **Heimnetzwerke**: Verbinden persönliche Geräte für den Zugriff auf das Internet und gemeinsame Ressourcen.
- **Unternehmensnetzwerke**: Ermöglichen die Kommunikation und Ressourcenteilung innerhalb eines Unternehmens.

---

### Grundlegende Netzwerkkonzepte

- **Datenübertragung**: Der Prozess des Sendens und Empfangens von Daten zwischen Netzwerkteilnehmern.
- **Netzwerkprotokolle**: Regeln und Standards, die festlegen, wie Daten über das Netzwerk gesendet werden (z.B. TCP/IP).

---

### Arten von Netzwerken

---

#### Local Area Network (LAN)

- **Beschreibung**: Ein Netzwerk, das sich über ein kleines geografisches Gebiet erstreckt, typischerweise innerhalb eines einzigen Gebäudes oder Campus.
- Wie ein kleines Dorf, in dem die Bewohner (Geräte) miteinander kommunizieren und Ressourcen teilen.

---

#### Wide Area Network (WAN)

- **Beschreibung**: Ein Netzwerk, das große geografische Gebiete abdeckt, oft durch die Verbindung mehrerer LANs.
- Wie ein Land, in dem Städte (LANs) durch Autobahnen und Straßen (WAN) miteinander verbunden sind.

---

## Einführung in das OSI-Modell

---

### Grundlagen des OSI-Referenzmodells

- **Zweck**: Vereinfacht das Design und die Verwaltung von Netzwerksystemen, indem es die Kommunikation in Schichten unterteilt.
- Jede Schicht hat spezifische Aufgaben, z.B. physische Verbindungen herstellen, sichere Datenübertragungen gewährleisten, die Darstellung der Daten handhaben.
- Stelle dir das OSI-Modell wie ein mehrstöckiges Gebäude vor, bei dem jede Schicht eine spezifische Funktion erfüllt.

---

### Die 7 Schichten des OSI-Modells

- **Die 7 Schichten**: 
  1. Physical Layer / Bitübertragungsschicht
  2. Data Link Layer / Sicherungsschicht
  3. Network Layer / Vermittlungsschicht
  4. Transport Layer / Transportschicht
  5. Session Layer / Sitzungsschicht
  6. Presentation Layer / Darstellungsschicht
  7. Application Layer / Anwendungsschicht

---


## 1. Physische Schicht (Physical Layer)

- **Übertragungsmedium**: Diese Schicht befasst sich mit der Übertragung von Rohdatenbits über ein physisches Medium (z.B. Kupferkabel, Glasfaser).
- **Signalisierung und Binärübertragung**: Sie konvertiert die digitalen Daten in elektrische, optische oder Funk-Signale und umgekehrt.
- **Hardware-Spezifikationen**: Dazu gehören Kabel, Karten, Spannungslevel und andere physische Aspekte.

---

### Eine einfache Metapher

Denke an die Physische Schicht als das Fundament eines Hauses – ohne dieses solide Fundament könnten keine weiteren Stockwerke (Schichten) sicher aufgebaut werden. Es legt die grundlegenden Bausteine fest, auf denen alles andere aufbaut.

---

## 2. Datenverbindungsschicht (Data Link Layer)

- **Rahmenbildung**: Diese Schicht nimmt reine Daten vom Netzwerk und verpackt sie in Datenframes, die zusätzliche Informationen wie Header und Footer enthalten.
- **Adressierung auf MAC-Ebene**: Jedes Gerät auf der Netzwerkschicht ist durch eine einzigartige MAC-Adresse identifizierbar.
- **Fehlererkennung und -korrektur**: Durch Prüfsummen und Sequenznummern wird sichergestellt, dass die Daten korrekt übertragen wurden.

---

### Eine einfache Metapher

Die Datenverbindungsschicht kann man sich wie das Verpacken eines Geschenks vorstellen. Du nimmst das Produkt (die Daten), verpackst es sorgfältig (Rahmenbildung), klebst eine Adresse darauf (MAC-Adresse), und versiehst es mit einem Qualitätszertifikat, um sicherzustellen, dass es unbeschadet ankommt (Fehlererkennung).

---

## 3. Netzwerkschicht (Network Layer)

- **Routing**: Diese Schicht bestimmt den besten Weg für die Datenpakete, um ihr Ziel über verschiedene Netzwerke hinweg zu erreichen.
- **Logische Adressierung**: Statt physischer Adressen (wie MAC) verwendet diese Schicht IP-Adressen, um Geräte eindeutig zu identifizieren.
- **Paketumschlag**: Sie ist verantwortlich für die Paketweiterleitung und -routing, einschließlich der Aufteilung von Daten in kleinere Einheiten, falls notwendig.

---

### Eine einfache Metapher

Die Netzwerkschicht ist wie der Postdienst einer Stadt, der entscheidet, welcher Weg der schnellste oder effizienteste für die Zustellung eines Pakets (Datenpaket) ist. Es kümmert sich darum, dass deine Post an die richtige Adresse (IP-Adresse) geliefert wird, egal wie viele Umwege sie dafür nehmen muss.

---

## 4. Transportschicht (Transport Layer)

- **Segmentierung und Wiederzusammenstellung**: Diese Schicht teilt lange Nachrichten in kleinere Segmente für die Übertragung und setzt sie am Zielort wieder zusammen.
- **Ende-zu-Ende-Kommunikation**: Stellt eine zuverlässige Datenübertragung zwischen Endsystemen sicher, einschließlich Fehlerkorrektur und Flusskontrolle.
- **Port-Adressierung**: Ermöglicht die Kommunikation zwischen spezifischen Prozessen oder Anwendungen auf den Geräten durch die Verwendung von Ports.

---

### Eine einfache Metapher

Stelle dir die Transportschicht als den Paketkurier vor, der sicherstellt, dass dein Paket (die Daten) nicht nur zum richtigen Haus, sondern auch an die richtige Wohnungstür (Port) geliefert wird. Er übernimmt die Verantwortung dafür, dass das Paket in gutem Zustand ankommt und bei Bedarf repariert oder erneut gesendet wird.

---

## 5. Sitzungsschicht (Session Layer)

- **Sitzungsmanagement**: Diese Schicht ist verantwortlich für den Aufbau, die Verwaltung und den Abbau von Sitzungen zwischen Endbenutzeranwendungen.
- **Synchronisation**: Sie ermöglicht es, Sitzungen zu synchronisieren und bei Unterbrechungen an einem vorherigen Punkt wieder anzusetzen, um sicherzustellen, dass Informationen nicht verloren gehen.
- **Authentifizierung und Autorisierung**: Bestimmt, welche Nutzer Zugang zu bestimmten Daten auf einem Netzwerk haben.

---

### Eine einfache Metapher

Die Sitzungsschicht ist wie der Veranstaltungsplaner eines Konzerts. Sie organisiert, wer wann und wo auftritt (Sitzungsmanagement), sorgt dafür, dass die Show nach einer Pause nahtlos weitergeht (Synchronisation) und kontrolliert, wer backstage darf (Authentifizierung und Autorisierung).

---

## 6. Darstellungsschicht (Presentation Layer)

- **Datenübersetzung**: Konvertiert Daten vom Anwendungsformat in ein Netzwerkformat und umgekehrt, um sicherzustellen, dass die Daten zwischen verschiedenen Systemen kompatibel sind.
- **Datenkomprimierung**: Reduziert die Größe der Daten, um die Bandbreitennutzung zu minimieren und die Übertragungseffizienz zu verbessern.
- **Datenverschlüsselung und -entschlüsselung**: Schützt Informationen während ihrer Übertragung vor unbefugtem Zugriff durch Verschlüsselung.

---

### Eine einfache Metapher

Denke an die Darstellungsschicht wie an einen Dolmetscher bei einem internationalen Treffen. Er übersetzt die Gespräche (Daten) zwischen den Teilnehmern, sorgt dafür, dass die Botschaft (Daten) in der kürzesten Form übermittelt wird (Komprimierung), und hält vertrauliche Informationen geheim, indem er sie in einer Sprache spricht, die nur die berechtigten Teilnehmer verstehen (Verschlüsselung).

---

## 7. Anwendungsschicht (Application Layer)

- **Anwendungsdienste**: Diese oberste Schicht bietet Netzwerkdienste direkt den Endbenutzern an. Dazu gehören E-Mail, Dateiübertragung und Webbrowser.
- **Netzwerk-APIs**: Schnittstellen, über die Anwendungen auf Netzwerkdienste zugreifen können.
- **Benutzerinteraktion**: Ermöglicht es den Nutzern, mit Netzwerkanwendungen und -diensten zu interagieren.

---

### Eine einfache Metapher
Die Anwendungsschicht ist wie der Kundenservice eines Unternehmens. Sie ist der erste Ansprechpartner für den Kunden (Benutzer), bietet eine Vielzahl von Dienstleistungen an (E-Mail, Web-Browsing) und sorgt dafür, dass der Kunde die Hilfe bekommt, die er benötigt, in einer Weise, die er versteht.


---

## Client-Server Netzwerke

---

### Was ist ein Client-Server Netzwerk?

- **Definition**: Ein Netzwerkmodell, bei dem ein zentraler Server Dienste oder Ressourcen für mehrere Clients bereitstellt.

---

### Wie funktioniert ein Client-Server Netzwerk?

- **Prozess**: Clients senden Anfragen an den Server, der diese verarbeitet und die gewünschten Informationen oder Dienste bereitstellt.

---

### Vorteile von Client-Server Netzwerken

- **Zentralisierte Verwaltung**, **Skalierbarkeit**, **Effizienz**.

---

### Beispiele von Client-Server Anwendungen

- **Webbrowsing**, **E-Mail**, **Online-Datenbanken**.
- **Metapher**: Wie ein Restaurant, in dem der Kellner (Server) die Bestellungen (Anfragen) der Gäste (Clients) aufnimmt und ihnen ihr Essen (Ressourcen/Dienste) serviert.

---

## Die Reichweite von Netzwerken (Netzwerk Topologie)

---

### Was ist eine Netzwerk Topologie?

- **Definition**: Die physische oder logische Anordnung von Netzwerkkomponenten.

---

### Die verschiedenen Arten von Netzwerk Topologien

- **Bus**, **Stern**, **Ring**, **Mesh**.
- **Metapher**: Verschiedene Topologien können als unterschiedliche Stadtlayouts betrachtet werden, bei denen Straßen und Wege (Verbindungen) Häuser und Gebäude (Netzwerkgeräte) auf verschiedene Weisen verbinden.

---
<!---->
<!-- ## IP-Adressierung und Subnetting -->
<!---->
<!-- ### IP-Adressierung -->
<!-- - **Definition**: Eindeutige Identifikation eines Geräts in einem Netzwerk. -->
<!-- - **IPv4 vs. IPv6**: IPv4 verwendet 32-Bit-Adressen, begrenzt auf etwa 4 Milliarden Adressen. IPv6 verwendet 128-Bit-Adressen, was eine praktisch unbegrenzte Anzahl von Adressen ermöglicht. -->
<!-- ### Subnetting und Classless Inter-Domain Routing (CIDR) -->
<!-- - **Zweck**: Ermöglicht eine effizientere Nutzung des IP-Adressraums und eine verbesserte Netzwerksicherheit. -->
<!-- - **CIDR Notation**: Vereinfacht die Adressierung und das Routing im Internet. -->
<!-- - **Metapher**: IP-Adressierung und Subnetting können wie die Postleitzahl und Straßenadressen in einem Postsystem betrachtet werden, die sicherstellen, dass die Post (Daten) genau dort ankommt, wo sie soll. -->
<!---->
<!-- --- -->
<!-- ### IP-Adressierung und Subnetting -->

---

### IP-Adressierung

- **Eindeutige Identifikation**: Jedes Gerät in einem Netzwerk, wie dein Smartphone oder Laptop, benötigt eine einzigartige Adresse, um Daten senden und empfangen zu können. Diese wird als IP-Adresse bezeichnet.
- **IPv4 vs. IPv6**:
  - **IPv4** nutzt 32-Bit-Adressen und kann somit rund 4 Milliarden einzigartige Adressen bieten. Diese sehen aus wie 192.168.1.1.
  - **IPv6** wurde eingeführt, um dem drohenden Mangel an verfügbaren IPv4-Adressen zu begegnen. Mit 128-Bit-Adressen bietet es eine nahezu unendliche Anzahl von IP-Adressen. Eine IPv6-Adresse sieht beispielsweise so aus: 2001:0db8:85a3:0000:0000:8a2e:0370:7334.

---

#### Eine einfache Metapher

Stelle dir vor, das Internet ist wie ein riesiges Wohngebiet und jede IP-Adresse ist wie die Hausnummer und Straße für jedes Haus. IPv4 könnte eine kleine Stadt darstellen, während IPv6 genug Adressen für eine ganze Welt voller Städte bietet.


---

#### IP-Adresse

- **4 Zahlen zwischen 0 und 255**
- **Jeweils durch einen Punkt getrennt**
- **Beispiel**:
  - 0.0.0.0
  - 255.255.255.255
  - Und alles dazwischen

---

#### Private vs Öffentliche IP-Adressen

- **Private IP-Adressen**: Werden in lokalen Netzwerken verwendet und sind nicht im Internet sichtbar. Beispiele sind
  - 10.0.0.0 – 10.255.255.255
  - 172.16.0.0 – 172.31.255.255
  - 192.168.0.0 – 192.168.255.255
- **Öffentliche IP-Adressen**: Werden im Internet verwendet und sind eindeutig für jedes Gerät. Sie sind begrenzt und müssen von der Internet Assigned Numbers Authority (IANA) verwaltet werden.

---

### Subnetting und Classless Inter-Domain Routing (CIDR)

---

#### Subnetting

- **Definition**: Die Aufteilung eines IP-Netzwerks in kleinere Netzwerksegmente.
- **Zweck**: Hilft bei der Organisation und effizienten Nutzung von IP-Adressen innerhalb von Organisationen und Netzwerken.
- **Metapher**: Subnetting ist wie die Aufteilung eines großen Grundstücks in kleinere Parzellen, um sie effizienter zu nutzen und zu verwalten.

---

##### Subnetmasken

- **Definition**: Eine 32-Bit-Nummer, die angibt, welche Teile einer IP-Adresse die Netzwerkadresse und den Hostanteil identifizieren.
- **Beispiel**:
  - IP-Adresse:
    - 12.12.12.1
  - Subnetzmaske:
    - 255.255.255.0
- **Das Subnetzwerk wäre**:
  - **von 12.12.12.0 bis 12.12.12.255**

---

### Classless Inter-Domain Routing (CIDR)

- **Zweck**: Eine Methode zur Erstellung von eindeutigen Identifikatoren für Netzwerke und einzelne Geräte.
- **Vorteile**: Ermöglicht eine flexiblere und effizientere Nutzung von IP-Adressen im Internet.
- **Metapher**: CIDR ist wie die Einführung von Postleitzahlen, die es ermöglichen, Briefe (Daten) schnell und effizient in die richtige Gegend (Netzwerk) zu leiten.

---

#### CIDR Notation

- **Definition**: Eine kurze Darstellung des Netzwerks und seiner zugehörigen Routing-Präfixgröße.
- **Kombination aus IP-Adresse und Präfix**: Zum Beispiel
  - 127.0.0.1/32
  - 0.0.0.0/0

---

### Die CIDR Notation kann als Mischung zwischen einer IP-Adresse und einer Subnetzmaske betrachtet werden.

**Beispiel**:

- **IP-Adresse**: 1.1.1.1
- **Subnetzmaske**: 255.255.255.0
- **CIDR Notation**: 1.1.1.1/24

---

### Wie funktioniert CIDR?

- Wenn es **genau eine IP-Adresse** gibt, wird die CIDR-Notation wie folgt aussehen: **IP-Adresse/32**.
- Wenn sich **nur die letzte Zahl (der IP Addresse) ändert**, wird die CIDR-Notation wie folgt aussehen: **IP-Adresse/24**.
- Wenn sich **die letzten zwei Zahlen (der IP Addresse) ändern**, wird die CIDR-Notation wie folgt aussehen: **IP-Adresse/16**.
- Wenn sich **die letzten drei Zahlen (der IP Addresse) ändern**, wird die CIDR-Notation wie folgt aussehen: **IP-Adresse/8**.
- Wenn sich **alle Zahlen (der IP Addresse) ändern**, wird die CIDR-Notation wie folgt aussehen: **IP-Adresse/0**.

---

IP ADDRESSE

4 bit | 4 bit | 4 bit | 4 bit |
127   . 0     . 0     . 1

CIDR NOTATION

4 bit | 4 bit | 4 bit | 4 bit |
/0    | /8    | /16   | /24   | /32

---

