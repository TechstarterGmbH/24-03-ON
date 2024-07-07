---

class: invert

---

# Einführung in TCP, HTTP(S), FTP, SSL, DNS und HTTP Funktionen

---

## Einleitung

---

### Was ist ein Netzwerk?

---

### Was ist ein Netzwerk?

- Ein **Netzwerk** ist eine Struktur aus miteinander verbundenen Computern und Geräten, die Daten und Ressourcen über physikalische (Kabel, Wi-Fi) und virtuelle (Internet) Wege austauschen.

---

### Grundprinzipien digitaler Kommunikation

---

### Grundprinzipien digitaler Kommunikation

- **Digitale Kommunikation** 
  - erfolgt durch das **Senden und Empfangen von Datenpaketen**
  - zwischen Endgeräten
  - über unterschiedliche Kommunikationsprotokolle.
  - Diese Protokolle definieren die Regeln und Formate für den Datenversand und -empfang.

---

## TCP (Transmission Control Protocol)

---

### Was ist TCP?

- **TCP** ist eines der Hauptprotokolle der Internetprotokollfamilie. Es ermöglicht zwei Hosts, eine zuverlässige und geordnete Verbindung aufzubauen und sicherzustellen, dass Daten fehlerfrei übertragen werden.

---

### Wie funktioniert TCP?

---

#### TCP-Pakete und -Segmente

- Daten, die über TCP gesendet werden, werden in **Segmente** unterteilt. Jedes Segment enthält einen Header mit Steuerinformationen und einen Datenbereich.

---

#### TCP-Header

- Der **TCP-Header** enthält Felder wie Quell- und Zielport, Sequenz- und Bestätigungsnummer, die zusammen die korrekte Übertragung und Zusammenstellung der Daten sicherstellen.

---

#### TCP-Verbindungsaufbau und -Abbau

---

- Der **Verbindungsaufbau** erfolgt über ein Drei-Wege-Handshake-Verfahren, das die Synchronisation der Sequenznummern und den Austausch von Startparametern umfasst.

---

#### Handshake-Prozess

- Der **Handshake** beginnt mit einem SYN-Paket vom Client, gefolgt von einem SYN-ACK vom Server und endet mit einem ACK vom Client.

---

#### Data-Transfer-Prozess

- Nach dem Handshake erfolgt die **Datenübertragung**, bei der TCP die Fluss- und Staukontrolle übernimmt, um eine effiziente und geregelte Datenübermittlung zu gewährleisten.

---

#### TCP-Flusskontrolle und Staukontrolle

- **Flusskontrolle** wird mittels des Sliding-Window-Mechanismus erreicht, der die Menge der unbestätigten Daten begrenzt. **Staukontrolle** vermeidet Netzwerküberlastung durch Anpassung der Datenrate.

---

## HTTP(S) (HyperText Transfer Protocol (Secure))

---

### Was ist HTTP?

---

### Was ist HTTP?

- **HTTP** ist das Protokoll zur Übertragung von Hypertext-Dokumenten, wie sie auf Webseiten verwendet werden. Es ist ein anfragebasiertes Protokoll, das auf TCP/IP basiert.

---

### Wie funktioniert HTTP?

---

#### HTTP-Anfragen und -Antworten

- Eine **HTTP-Anfrage** von einem Client beinhaltet eine Methode (z.B. GET, POST), eine URL und Protokolldetails. Die **HTTP-Antwort** des Servers enthält einen Statuscode, Headers und optional einen Body.

---

#### HTTP-Methoden

- **Methoden** wie GET (Daten anfordern), POST (Daten senden), PUT (Daten aktualisieren) und DELETE (Daten entfernen) definieren die Art der Aktion, die ausgeführt werden soll.

---

#### HTTP-Statuscodes

- **Statuscodes**
  - informieren über den Ausgang der Anfrage,
  - z.B. 200 (Erfolg),
  - 404 (Nicht gefunden)
  - 503 (Service nicht verfügbar).

---

### Die Rolle von HTTP(S) in der modernen Webentwicklung

- HTTP ist fundamental für das Funktionieren des Webs. **HTTPS** erweitert HTTP durch die Integration von SSL/TLS, um eine verschlüsselte und sichere Kommunikation zu gewährleisten.

---

### Einführung in HTTPS

---

#### Unterschiede zwischen HTTP und HTTPS

- **HTTPS** verwendet SSL/TLS zur Verschlüsselung der Daten, die zwischen Client und Server übertragen werden, was die Sicherheit gegenüber HTTP verbessert.

---

#### SSL/TLS und HTTPS

- SSL/TLS sichert die Datenintegrität und schützt vor Man-in-the-Middle-Angriffen durch Verschlüsselung und Authentifizierung mittels Zertifikaten.

---

## FTP (File Transfer Protocol)

---

### Was ist FTP?

- **FTP** ist ein Protokoll zum Übertragen von Dateien zwischen Computern in einem Netzwerk, das es ermöglicht, Dateien hoch- und herunterzuladen sowie Verzeichnisse zu durchsuchen und zu manipulieren.

---

### Wie funktioniert FTP?

---

#### Passive und aktive FTP

- **Aktiver Modus**: Der Server initiiert die Verbindung zum Client.
- **Passiver Modus**: Der Client initiiert die Verbindung, nützlich hinter Firewalls.

---

#### FTP-Befehle und Antworten

- FTP-Kommandos wie `LIST`, `RETR` (download), `STOR` (upload) steuern die Dateiübertragung und Navigation.

---

### Anwendungen und Einsatz von FTP

- FTP wird in Umgebungen verwendet, wo große Dateien regelmäßig zwischen Standorten übertragen werden, inklusive Backup-Systemen und Content-Management.

---

## SSL (Secure Sockets Layer)

---

### Was ist SSL?

- **SSL** ist ein Verschlüsselungsprotokoll, das in den frühen Tagen des Internets entwickelt wurde, um die Sicherheit und Datenschutz in der Kommunikation zu erhöhen.

---

### Wie funktioniert SSL?

#### Verschlüsselung im SSL

- SSL verwendet symmetrische Kryptographie zur Verschlüsselung der Daten, unterstützt durch asymmetrische Schlüsselaustauschmechanismen und digitale Signaturen für Authentizität.

---

#### Authentifizierung und Zertifikate

- SSL nutzt **Zertifikate**, die von vertrauenswürdigen Zertifizierungsstellen ausgestellt werden, um die Identität der beteiligten Parteien zu bestätigen.

---

### SSL in der Praxis

- SSL wird eingesetzt, um die Datenübertragung über offene Netzwerke wie das Internet zu sichern, insbesondere für E-Commerce und Online-Banking.

---

## DNS (Domain Name System)

---

### Was ist DNS?

- **DNS** konvertiert benutzerfreundliche Domain-Namen in die numerischen IP-Adressen, die Computer zum Auffinden von Websites verwenden.

---

### Wie funktioniert DNS?

---

#### DNS-Abfragen

- Eine **DNS-Abfrage** wird ausgelöst, wenn ein Benutzer eine URL in seinen Browser eingibt, um die zugehörige IP-Adresse zu ermitteln.

---

#### DNS-Zonendateien und -Records

- **Zonendateien** speichern Records wie A, AAAA, MX, und CNAME, die detaillierte Informationen über die Domain und ihre Konfiguration enthalten.

---

### Funktion und Bedeutung von DNS

- DNS ist essentiell für das Internet, da es die Umsetzung von leicht merkbaren Domain-Namen zu technischen Adressen ermöglicht, was die Nutzung des Internets vereinfacht.

---

## HTTP Funktionen

---

### HTTP-Cookies

- **Cookies** sind kleine Textdateien, die benutzt werden, um Nutzerdaten zu speichern und den Zustand der Sitzung zwischen den Seitenanfragen zu erhalten.

---

### HTTP-Header

- **Header** übermitteln Informationen zwischen Client und Server, wie z.B. Cookies, Anforderungs-/Antworttypen und Verhaltensanweisungen.

---

#### HTTP-Sessionhandling

- Das **Sessionhandling** ermöglicht es, den Zustand eines Nutzers über mehrere Anfragen hinweg zu verwalten, was insbesondere bei E-Commerce-Sites kritisch ist.


