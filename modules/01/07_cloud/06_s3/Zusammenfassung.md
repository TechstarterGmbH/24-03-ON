# AWS Storage

AWS bietet mehrere Speicherdienste an, die speziell für die Implementierung verschiedener Speichertypen wie Objektspeicher, Blockspeicher und Dateispeicher konzipiert sind. Jede dieser Speicherarten hat einzigartige Merkmale und ist für spezifische Anwendungsgebiete geeignet.

## Objektspeicher

Objektspeicher ist ein Ansatz zur Datenspeicherung, bei dem Daten als Objekte gespeichert werden. Im Gegensatz zu traditionellen Datei- oder Blockspeichersystemen, die Daten in einer hierarchischen Dateistruktur oder in festen Speicherblöcken organisieren, behandelt Objektspeicher jede Datei als ein diskretes Objekt. Jedes dieser Objekte enthält drei Hauptkomponenten: die Daten selbst, Metadaten und eine eindeutige Kennung (Schlüssel).

### Daten

Die Datenkomponente repräsentiert den eigentlichen Inhalt des Objekts. Dies kann alles sein, von Dokumenten und Bildern bis hin zu Videodateien, Archivdateien oder großen Datenmengen für Analysen.

### Metadaten

Die Metadaten bieten detaillierte Informationen über die Daten, wie z.B. den Dateityp, den Erstellungszeitpunkt, Zugriffsberechtigungen und andere spezifische Daten, die zur Verwaltung oder Kategorisierung des Objekts nützlich sein können. Im Gegensatz zu traditionellen Dateisystemen, bei denen Metadaten meist auf vordefinierte Attribute beschränkt sind, erlaubt Objektspeicher benutzerdefinierte Metadaten, wodurch eine viel reichhaltigere und flexiblere Datenspeicherung möglich wird.

### Eindeutige Kennung (Schlüssel)

Jedes Objekt erhält eine eindeutige Kennung, oft als Objekt-ID oder Schlüssel bezeichnet. Diese Kennung ermöglicht einen direkten, schnellen Zugriff auf das Objekt über HTTP/HTTPS-Protokolle, unabhängig von der physischen Speicherlocation. Dieser Ansatz vereinfacht die Datenabfrage und -manipulation in sehr großem Maßstab beim Speichern von Milliarden von Objekten.

### Vorteile des Objektspeichers

- **Skalierbarkeit**: Objektspeicher kann sehr einfach skaliert werden, sowohl hinsichtlich der Speicherkapazität als auch der Zugriffsanforderungen. Dies macht ihn ideal für Cloud-Speicherlösungen, wo Anforderungen dynamisch ändern können.
- **Kosteneffizienz**: Durch seine Fähigkeit, massive Mengen unstrukturierter Daten zu speichern und zu verwalten, bietet Objektspeicher eine kosteneffiziente Lösung für Unternehmen, die mit exponentiell wachsenden Datenmengen konfrontiert sind.
- **Datenhaltbarkeit und Verfügbarkeit**: Objektspeichersysteme sind oft über mehrere physische Standorte verteilt, was die Datenhaltbarkeit und Verfügbarkeit verbessert und gleichzeitig das Risiko von Datenverlusten minimiert.
- **Flexibilität und Einfachheit**: Der Zugriff auf Objekte über standardisierte APIs vereinfacht die Integration mit Anwendungen und Diensten. Benutzer können Daten hochladen, herunterladen und verwalten, ohne sich um die darunter liegende Architektur kümmern zu müssen.

### **Nachteile** des Objektspeichers

- Die Daten können nicht direkt im Speicher verändert werden. Um eine Datei, die in einem Objektspeicher gespeichert ist zu verändern, muss man diese Datei auf herunterladen, wie nötig verändern, und die veränderte Version nochmal hochladen.
- Nicht geeignet für Anwendungen, die Transaktionen oder schnellen, blockweisen Zugriff erfordern.
- Kann höhere Latenzen im Vergleich zu Blockspeicher aufweisen.

### Anwendungsfälle

Objektspeicher ist besonders nützlich für:

- Webanwendungen, die Mediendateien speichern und verteilen
- Backups und Archivierung großer Datenmengen
- Big Data und Analytics; Data Lakes, die unstrukturierte Daten für Analysezwecke sammeln
- Verteilung von großen Inhalten

### Objektspeicher auf AWS

**Amazon Simple Storage Service (S3)** ist ein hochskalierbarer Objektspeicherdienst, der für die Speicherung und Abrufung jeglicher Menge von Daten aus dem Internet oder von Anwendungen auf AWS optimiert ist. Es wird häufig für Datensicherung, Archivierung, Data Lakes, Websites und mobile Anwendungen verwendet.

## Amazon Simple Storage Service (Amazon S3)

Amazon Simple Storage Service (Amazon S3) ist einer der grundlegenden und weit verbreiteten Dienste innerhalb des AWS Ökosystems. Entwickelt, um eine skalierbare, hochverfügbare und sichere Infrastruktur für die Speicherung und das Retrieval beliebiger Mengen von Daten zu bieten, dient S3 einer Vielzahl von Anwendungsfällen, von Websites und mobilen Anwendungen bis hin zu Backup- und Wiederherstellungslösungen, Archivierung, Unternehmensanwendungen und IoT-Geräten.

### Kernfunktionen von Amazon S3

- **Skalierbarkeit**: Amazon S3 kann eine praktisch unbegrenzte Menge an Daten speichern, von kleinen Dateien bis hin zu Petabytes an Daten. Nutzer können jederzeit und ohne vorherige Kapazitätsplanung Daten hinzufügen oder entfernen.
- **Verfügbarkeit und Datenhaltbarkeit**: S3 bietet eine hohe Verfügbarkeit und Datenhaltbarkeit von 99,999999999% (11 9's) über die Zeit. Daten werden automatisch über mehrere Einrichtungen und Geräte innerhalb einer AWS-Region in mindestens 3 Availability Zones repliziert.
- **Sicherheit**: S3 bietet umfassende Sicherheits- und Compliance-Funktionen, die es Nutzern ermöglichen, den Zugriff auf Daten zu kontrollieren. Dazu gehören Zugriffskontrollen, Verschlüsselung in Ruhe und im Transit sowie die Möglichkeit, Daten mit AWS Identity and Access Management (IAM) zu verwalten.
- **Performance**: S3 unterstützt verschiedene Speicherklassen für unterschiedliche Anwendungsfälle, wie häufig oder selten auf Daten zugegriffen wird, was die Kostenoptimierung und Performance beeinflusst.

### Anwendungsfälle

- **Webhosting**: Speicherung von statischen Inhalten wie Bildern, Stylesheets und JavaScript für Webseiten.
- **Backup und Archivierung**: Sicherung von Datenbanken, Anwendungen und persönlichen Dateien in der Cloud.
- **Big Data und Analytics, Data Lakes**: Speicherung und Analyse großer Datenmengen.
- **Content Delivery Network (CDN)**: Integration mit Amazon CloudFront, um Inhalte weltweit schnell und sicher auszuliefern.
- **Disaster Recovery**: Speicherung von Sicherungskopien kritischer Daten zur Wiederherstellung im Falle eines Ausfalls.

### Amazon S3 Speicherklassen

Amazon S3 bietet mehrere Speicherklassen, um unterschiedliche Bedürfnisse hinsichtlich Zugriffshäufigkeit, Speicherkosten und Zugriffszeit zu erfüllen.

### S3 Standard

**Eigenschaften und Besonderheiten:**

- Hohe Verfügbarkeit und Haltbarkeit von 99,999999999% (11 9's).
- Entwickelt für Daten, auf die häufig zugegriffen wird (öfter als einmal pro 30 Tage).
- Daten werden automatisch über mindestens drei geografisch getrennte Availability Zones innerhalb einer AWS-Region repliziert.

**Anwendungsbeispiele:**

- Webseiten, Content Delivery Networks (CDNs) und mobile Anwendungen, die schnellen und jederzeitigen Zugriff benötigen.
- Speicherung von Unternehmensdaten für operative Analysen.

### S3 Intelligent-Tiering

**Eigenschaften und Besonderheiten:**

- Automatische Verschieben von Daten zwischen Standard, Infrequent Access, Glacier und Galcier Deep Archive basierend auf Zugriffsmustern, um die Speicherkosten zu optimieren
- Keine Abrufgebühren und keine Notwendigkeit, Datenzugriffsmuster zu lernen oder zu vorhersagen.
- Gleiche Haltbarkeit und Verfügbarkeit wie S3 Standard.

**Anwendungsbeispiele:**

- Daten mit unbekannten oder sich ändernden Zugriffsmustern, wie z.B. Datenarchive oder Medienbibliotheken.

### S3 Standard-IA (Infrequent Access)

**Eigenschaften und Besonderheiten:**

- Für Daten konzipiert, auf die weniger häufig zugegriffen wird, aber schnell verfügbar sein müssen, wenn darauf zugegriffen wird (seltener, als einmal pro 30 Tage).
- Niedrigere Speicherkosten im Vergleich zu S3 Standard, jedoch mit einer Abrufgebühr.
- Hohe Haltbarkeit und Verfügbarkeit, ähnlich S3 Standard.

**Anwendungsbeispiele:**

- Langfristige Speicherung von Geschäftsdaten, auf die regelmäßig, aber nicht häufig zugegriffen wird.
- Disaster Recovery-Kopien.

### S3 One Zone-IA

**Eigenschaften und Besonderheiten:**

- Geringere Kosten als S3 Standard-IA, da Daten nur in einer einzigen Availability Zone gespeichert werden.
- Geeignet für Daten, die nicht häufig benötigt werden und für die keine Replikation über mehrere Availability Zones erforderlich ist.
- Etwas höheres Risiko im Vergleich zu anderen Klassen, da Daten nicht geografisch verteilt sind.

**Anwendungsbeispiele:**

- Speicherung von sekundären Backup-Kopien oder temporären Daten, bei denen niedrigere Kosten wichtiger sind als die Ausfallsicherheit.

### S3 Glacier Instant Retrieval

**Eigenschaften und Besonderheiten:**

- Kosteneffiziente Speicherung für selten abgerufene Daten mit sofortiger Verfügbarkeit.
- Datenabruf in Millisekunden.
- Ideal für Daten, auf die weniger als einmal im Quartal zugegriffen wird.

**Anwendungsbeispiele:**

- Archive digitaler Medien für gelegentlichen, schnellen Zugriff.
- Aufbewahrung von Finanz- und Gesundheitsdaten, die schnellen Zugriff für Audits erfordern.
- Sekundäre Backup-Daten für schnelle Disaster-Recovery-Operationen.

### S3 Glacier Flexible Retrieval

**Eigenschaften und Besonderheiten:**

- Sehr niedrige Speicherkosten, entworfen für Archivierung und Langzeitspeicherung.
- Zugriffszeit von Minuten (5 Minuten) bis Stunden (3-5 Stunden Standardabruf; 12 Stunden Bulk-Abruf)
- Sichere, dauerhafte Speicherung mit der Möglichkeit, Compliance-Anforderungen zu erfüllen.

**Anwendungsbeispiele:**

- Archivierung von Finanzdokumenten, medizinischen Aufzeichnungen oder wissenschaftlichen Daten, die selten abgerufen werden.

### S3 Glacier Deep Archive

**Eigenschaften und Besonderheiten:**

- AWS' kostengünstigste Speicherlösung für Langzeitarchivierung.
- Zugriffszeit von 12 Stunden oder länger (48 Stunden Bulk-Abruf).
- Entwickelt für Daten, die einmal im Jahr oder seltener abgerufen werden.

**Anwendungsbeispiele:**

- Digitale Bewahrung von Medieninhalten, historischen Daten und Archivierung von Regierungsdaten.

### Auswahl der richtigen Speicherklasse

Bei der Auswahl der richtigen S3-Speicherklasse sollten die Faktoren wie die Zugriffshäufigkeit auf Ihre Daten, die erforderliche Verfügbarkeit, Haltbarkeit und natürlich die Kosten berücksichtigt werden.

### Amazon S3 Sicherheit

Amazon S3 bietet viele Sicherheitsfunktionen, die darauf abzielen, Daten zu schützen, den Zugriff zu kontrollieren und die Compliance mit verschiedenen Standards zu gewährleisten. Hier sind die wichtigsten Sicherheitsfeatures von Amazon S3:

### 1. Verschlüsselung

- **Verschlüsselung**: Amazon S3 bietet mehrere Optionen zur Verschlüsselung von Daten, einschließlich der serverseitigen Verschlüsselung und die Möglichkeit zur clientseitigen Verschlüsselung, bei der die Daten bereits verschlüsselt sind, bevor sie zu S3 übertragen werden.
- **Verschlüsselung während der Übertragung (In-Transit)**: Amazon S3 unterstützt HTTPS für die sichere Übertragung von Daten zwischen Clients und S3.

### 2. Zugriffskontrolle

- **Bucket Policies**: Ermöglicht Ihnen, detaillierte Zugriffsberechtigungen auf Buckets und die darin enthaltenen Objekte zu definieren.

### 3. Block Public Access

- **Block Public Access-Einstellungen**: Diese Einstellungen bieten Kontrollen, um sicherzustellen, dass Ihre S3-Daten nicht versehentlich öffentlich zugänglich gemacht werden. Sie können auf Konten-, Bucket- und sogar Objektebene angewendet werden.

Diese Sicherheitsfeatures ermöglichen es Organisationen, ihre Daten in Amazon S3 effektiv zu schützen und gleichzeitig die Anforderungen an Compliance und Datenschutz zu erfüllen.

## Objektspeicher vs. Blockspeicher 

Objekt -und Blockspeicher sind zwei grundlegende Arten von Datenspeichertechnologien, die unterschiedliche Anforderungen und Einsatzszenarien in der IT-Infrastruktur abdecken. Jede Speicherart hat einzigartige Merkmale, Vor- und Nachteile sowie typische Anwendungsfälle. Hier ist ein detaillierter Vergleich:

### Objektspeicher

**Merkmale:**

- Speichert Daten als Objekte in einem flachen Namespace.
- Jedes Objekt enthält die Daten selbst, eine Menge an Metadaten und eine eindeutige ID.
- Zugriff typischerweise über HTTP/HTTPS-Protokolle.

**Vorteile:**

- Extrem skalierbar, eignet sich für Petabytes an Daten und Milliarden von Objekten.
- Flexible Metadaten erhöhen die Such- und Verwaltungseffizienz.
- Ideal für unstrukturierte Daten wie Bilder, Videos und Backups.

**Nachteile:**

- Nicht geeignet für Anwendungen, die Transaktionen oder schnellen, blockweisen Zugriff erfordern.
- Kann höhere Latenzen im Vergleich zu Block- und Dateispeicher aufweisen.

**Typische Anwendungsfälle:**

- Webanwendungen
- Datensicherung und -archivierung
- Big Data-Analysen

### Blockspeicher

**Merkmale:**

- Speichert Daten in festen Größenblöcken (z.B. 4 KB, 8 KB).
- Jeder Block kann unabhängig adressiert werden, was den direkten Zugriff ermöglicht.
- Wird oft in SAN-Umgebungen (Storage Area Network) verwendet.

**Vorteile:**

- Hohe Leistung und geringe Latenz, ideal für leistungskritische Anwendungen.
- Unterstützt das Booten von Betriebssystemen und das Ausführen von Datenbanken.
- Flexibel und effizient in der Handhabung von Transaktionssystemen.

**Nachteile:**

- Weniger skalierbar im Vergleich zum Objektspeicher, kann teurer in der Verwaltung sein.
- Erfordert ein Dateisystem, um Daten zu organisieren.

**Typische Anwendungsfälle:**

- Datenbanken
- E-Mail-Server
- Hochleistungs-Computing

### Zusammenfassung der Unterschiede

- **Skalierbarkeit**: Objektspeicher ist am skalierbarsten, Dateispeicher eignet sich für mittlere Skalierung, und Blockspeicher ist am wenigsten skalierbar, aber bietet die höchste Leistung.
- **Datenstruktur**: Objektspeicher verwendet einen flachen Namespace, Blockspeicher behandelt Daten in individuellen Blöcken, und Dateispeicher organisiert Daten in einer hierarchischen Datei- und Ordnerstruktur.
- **Zugriffsmethode**: Objektspeicher nutzt Web-Protokolle (HTTP/HTTPS), Blockspeicher ermöglicht direkten, blockweisen Zugriff, und Dateispeicher verwendet Netzwerkprotokolle für den Dateizugriff.
- **Anwendungsfälle**: Objektspeicher eignet sich für unstrukturierte Daten und Webinhalte, Blockspeicher ist ideal für Datenbanken und Transaktionssysteme, und Dateispeicher wird für die gemeinsame Nutzung und Verwaltung von Dateien verwendet.

Die Auswahl zwischen Objekt- und Blockspeicher hängt letztendlich von den spezifischen Anforderungen der Anwendung, der erforderlichen Leistung, der Skalierbarkeit und den Kosten ab.