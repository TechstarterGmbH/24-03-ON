# Migration und Transfer

## AWS Application Discovery Service

- Erstelle ein Inventar deiner Anwendungen und Workloads.
- Installiere ein Programm auf deinen Servern, was Daten sammelt (Agent)
- Der Agent sendet die Daten an den AWS Application Discovery Service.

## AWS Application Migration Service

- Automatisierte Migration von Anwendungen und Workloads in die Cloud.
- Ermöglicht schnelle und nahtlose Migration von Anwendungen.

## AWS Database Migration Service (AWS DMS)

- Übertrage Datenbanken in die AWS Cloud.
- Minimierung von Ausfallzeiten und Kosteneffizienz (durch Replikation).
- Migration von Datenbanken zwischen verschiedenen Plattformen.

### AWS Schema Conversion Tool (AWS SCT)

- Im AWS Database Migration Service enthalten.
- Konvertierung zwischen Datenbankschemas verschiedener Plattformen.
- Kann auch als lokal installiertes Tool genutzt werden.

## AWS Migration Hub

- Zentrale Kontrolle und Überwachung
- Verwaltung und Koordination komplexer Migrationsprojekte.

## AWS Snow Family

- Physische Geräte für große Datenmengen und Offline-Migrationen.
- Übertragung großer Datenmengen in die Cloud ohne Netzwerkverbindung.

### AWS Snowcone

- Kleinstes Gerät der Snow Family
- 8 TB Speicherplatz

### AWS Snowball

- Je nach Modell 80 TB Speicher

### AWS Snowmobile

- LKW mit 100 PB Speicherplatz

## AWS Transfer Family

- Optimierung von regelmäßigen Dateiübertragungen.
- Zum Beispiel Buisness-to-Buisness-Transfers.
- FTP, FTPS und SFTP werden nach S3 oder EFS übertragen.
