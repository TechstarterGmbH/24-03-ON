# AWS Datenbanken

Die Speicherung von Daten auf der Festplatte (EBS, EC2-Instanzspeicher, S3) kann ihre Grenzen haben.
Manchmal möchtest du Daten in einer Datenbank speichern.

## Relationale Datenbanken

Sieht aus wie Excel-Tabellen, mit Verknüpfungen zwischen ihnen!
Kann die SQL-Sprache verwenden, um Abfragen / Suchvorgänge durchzuführen

## No-SQL Datenbanken

NoSQL = Nicht-SQL = Nicht-relationale Datenbanken
NoSQL-Datenbanken sind für bestimmte Datenmodelle entwickelt und verfügen über flexible Schemata für die Erstellung moderner Anwendungen.
Vorteile:
    Flexibilität: einfache Anpassung des Datenmodells
    Skalierbarkeit: ausgelegt auf Skalierung durch verteilte Cluster
    Hohe Leistung: optimiert für ein bestimmtes Datenmodell
    Hohe Funktionalität: Typen optimiert für das Datenmodell
Beispiele: Schlüssel-Wert, Dokument, Graph, In-Memory, Suchdatenbanken

## Datenbanken in AWS

AWS bietet die Verwaltung verschiedener Datenbanken an
Vorteile sind unter anderem:
    Schnelle Bereitstellung, hohe Verfügbarkeit, vertikales und horizontales Skalieren
    Automatisierte Sicherung & Wiederherstellung, Betrieb, Upgrades
    Betriebssystem-Patching wird von AWS behandelt
    Überwachung, Alarmierung
Hinweis: Viele Datenbanktechnologien könnten auf EC2 ausgeführt werden, aber du müsstest selbst die Widerstandsfähigkeit, Sicherungskopien, das Patchen, die hohe Verfügbarkeit und die Skalierung übernehmen.

## RDS

RDS steht für Relational Database Service
Es handelt sich um einen verwalteten DB-Dienst für DBs, die SQL als Abfragesprache verwenden.
Es ermöglicht Ihnen, Datenbanken in der Cloud zu erstellen, die von AWS verwaltet werden
    Postgres
    MySQL
    MariaDB
    Oracle
    Microsoft SQL Server
    Aurora (AWS-eigene Datenbank)

### Vorteile der Verwendung von RDS gegenüber der Bereitstellung von DB auf EC2

RDS ist ein verwalteter Dienst:
    Automatisierte Bereitstellung, OS-Patching
    Kontinuierliche Sicherungen und Wiederherstellung zu einem bestimmten Zeitpunkt (Wiederherstellung zu einem Zeitpunkt)!
    Überwachungs-Dashboards
    Lese-Repliken für verbesserte Leseleistung
    Multi-AZ-Einrichtung für DR (Desaster-Recovery)
    Wartungsfenster für Upgrades
    Skalierungsfähigkeit (vertikal und horizontal)
    Speicherung unterstützt durch EBS (gp2 oder io1)
ABER man kann sich nicht in Instanzen einloggen

### RDS-Bereitstellungen: 

| Read Replicas                                              | Multi-AZ                                                    |
| ---------------------------------------------------------- | ----------------------------------------------------------- |
| Skalieren der Lese-Arbeitslast                             | Failover-DB im Falle eines AZ-Ausfalls (hohe Verfügbarkeit) |
| Können bis zu 5 Lese-Repliken erstellen                    | Daten werden gelesen/geschrieben in die Haupt-DB            |
| Daten werden nur in die Hauptdatenbank geschrieben/gelesen | Nur 1 AZ als Failover                                       |
**Multi-Region**

- Desaster-Wiederherstellung im Falle eines Region-Problems
- Lokale Leistung für globale Lesevorgänge
- Replikationskosten

## Amazon Aurora

Aurora ist eine proprietäre Technologie von AWS (nicht Open Source)
PostgreSQL und MySQL werden beide als Aurora-DB unterstützt
Aurora ist "AWS-Cloud-optimiert" und behauptet eine 5-fache Leistungssteigerung gegenüber MySQL auf RDS, über 3-fache Leistung von Postgres auf RDS
Aurora-Speicher wächst automatisch in Schritten von 10 GB, bis zu 64 TB.
Aurora kostet mehr als RDS (20% mehr) – ist aber effizienter
Nicht im kostenlosen Tarif enthalten

## DynamoDB

Vollständig verwaltet, hoch verfügbar mit Replikation über 3 AZ
NoSQL-Datenbank - keine relationale Datenbank
Skaliert für massive Workloads, verteilte "serverlose" Datenbank
Millionen von Anfragen pro Sekunde, Billionen von Zeilen, Hunderte von TB Speicher
Schnell und konsistent in der Leistung
Latenz im einstelligen Millisekundenbereich – schnelle Abrufzeit
Integriert mit IAM für Sicherheit, Autorisierung und Administration
Geringe Kosten und automatische Skalierungsfähigkeiten
Standard- & Zugriffsklasse "Selten"

### DynamoDB Accelerator - DAX

Vollständig verwalteter In-Memory-Cache für DynamoDB
10-fache Leistungssteigerung 

## Amazon Neptune

Vollständig verwaltete Graphdatenbank
Ein beliebter Graphdatensatz wäre ein soziales Netzwerk
    Benutzer haben Freunde
    Beiträge haben Kommentare
    Kommentare haben Likes von Benutzern
    Benutzer teilen und liken Beiträge…
Hoch verfügbar über 3 AZ, mit bis zu 15 Lese-Repliken
Erstellen und Ausführen von Anwendungen, die mit hoch vernetzten Datensätzen arbeiten - optimiert für diese komplexen und schwierigen Abfragen
Kann bis zu Milliarden von Beziehungen speichern und den Graphen mit Millisekunden-Latenz abfragen
Hoch verfügbar mit Replikationen über mehrere AZs
Ideal für Wissensgraphen (Wikipedia), Betrugserkennung, Empfehlungsmaschinen, soziale Netzwerke

## Memory DB für Redis

MemoryDB ist eine In-Memory-Datenbank, die auf dem Arbeitsspeicher basiert und extrem schnelle Lese- und Schreibzugriffe bietet. Sie ist speziell für die Verwendung mit Redis optimiert und ermöglicht Echtzeitanwendungen wie Echtzeit-Analytik, Transaktionsverarbeitung und Caching. Mit horizontaler Skalierbarkeit und integrierten Funktionen für Datenbankoperationen ist MemoryDB eine leistungsfähige Lösung für Anwendungen, die eine hohe Leistung und geringe Latenzzeiten erfordern.
