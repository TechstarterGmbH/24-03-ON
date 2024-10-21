# Datenanalyse mit AWS Cheat Sheet

---

### Prozess:

**Datensammlung und -speicherung**: Sammeln von Daten aus verschiedenen Quellen und Datenspeicherung
**Datenbereinigung und -vorbereitung**: Verwenden von Tools, um Daten zu bereinigen, zu formatieren und für die Analyse vorzubereiten
**Datenanalyse**: Datenabfragen durchführen, um Einsichten zu gewinnen
**Visualisierung und Berichterstattung**: Erstellung von Dashboards und Berichten, um die Analyseergebnisse darzustellen und zu teilen

---

### Data Warehouse

- **Strukturierte Datenorganisation**: Sammlung von Daten aus verschiedenen Quellen für Analysen und Berichte
- **Anwendung**: Geschäftseintscheidungen & -analysen

### Data Lake

- **Rohdatensammlung**: Beinhaltet strukturierte und unstrukturierte Daten
- **Flexibilität**: Sammlung von Daten ohne vorherige Festlegung des Formats oder der Struktur

---

## Daten verarbeiten

### Anpassungen:

- Einheitliches Datenformat
    - Beispiel: Datum im Format DD-MM-YYYY
- Doppelte oder fehlerhafte Daten entfernen
- Merkmale zusammenfassen oder hinzufügen
- Daten aussortieren

### Verarbeitungsarten:

#### Stream Processing

- **Echtzeitverarbeitung**: Kontinuierliche Datenverarbeitung und Analyse
- **Beispiele**: Finanzmarktdaten, IoT-Sensordaten, Log-Daten, Video/Audio-Streams

#### Batch-Processing

- **Intervallbasierte Verarbeitung**: Verarbeitung von Daten in großen, vordefinierten Intervallen
- **Anwendungen**: Datenbereinigung, Transformation, maschinelles Lernen

---

## AWS Services für Data Analytics

### Data Warehouse: Amazon Redshift

- **Strukturierte Analyse**: Speicherung und Analyse strukturierter Daten aus verschiedenen Quellen
- **Optimiert für Analytik**: Schnelle Abfrageleistung
- **Skalierbarkeit**: Dynamische Anpassung der Ressourcen

### Stream Processing mit AWS

- **Amazon Kinesis & Apache Kafka**: Echtzeit-Datenverarbeitung
- **Anwendungen**: Echtzeit-Analysen, Betrugserkennung, Systemüberwachung

### Amazon Managed Streaming für Apache Kafka (Amazon MSK)

- **Verwaltetes Apache Kafka**: Ausführung und Skalierung von Kafka-Clustern
- **Echtzeit-Datenverarbeitung**: Publizieren, Abonnieren, Speichern und Verarbeiten von Datenströmen

### Amazon OpenSearch Service

- **Management von OpenSearch-Clustern**: Unterstützung von Log-Analytics, Echtzeitanwendungen und Suchfunktionen

### Amazon EMR

- **Elastic MapReduce**: Erstellung von Hadoop-Clustern für Big Data Analyse und Verarbeitung
- **Anwendungsfälle**: Datenverarbeitung, maschinelles Lernen, Webindizierung

### Vergleich der Clusterarten

| Merkmal                    | Hadoop-Cluster          | OpenSearch-Cluster        | Apache Kafka-Cluster     |
|----------------------------|-------------------------|---------------------------|--------------------------|
| Zweck                      | Batch-Verarbeitung      | Echtzeit-Suche und -Analyse | Echtzeit-Datenströme     |
| AWS-Service                | Amazon EMR              | Amazon OpenSearch Service | Amazon MSK               |

### AWS Glue

- **ETL-Dienst**: Extrahieren, Transformieren und Laden von Daten
- **Serverlos**: Einfaches Datenmanagement für Analysen

### Analytics / Query

- **Amazon Athena**: Ausführen von SQL-Abfragen auf Daten in Amazon S3
    - **Serverlos**: Keine Datenbankverwaltung erforderlich

### Visualisierung

- **Amazon QuickSight**: Echtzeit-Visualisierung und Analyse von Daten
    - **Dashboards**: Intuitive Benutzeroberfläche zur Erstellung von Berichten

### AWS Data Exchange

- **Zugang zu Drittanbieterdaten**: Integration in AWS-Anwendungen
- **Verbesserte Analysen**: Nutzung externer Daten für Machine Learning und Analysen

---


**Datensammlung und -speicherung**: Daten aus verschiedenen Quellen sammeln und in Amazon S3 speichern
**Datenbereinigung und -vorbereitung**: Nutzung von AWS Glue zur Datenbereinigung und -vorbereitung
**Datenanalyse**: Verwendung von Amazon Athena oder Amazon Redshift für Abfragen und Einsichten
**Visualisierung und Berichterstattung**: Erstellung von Dashboards und Berichten mit Amazon QuickSight