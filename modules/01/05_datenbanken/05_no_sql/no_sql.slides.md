---

class: invert

---

# Einführung in NoSQL

---

## Einleitung

---

### Was ist NoSQL?

- **Definition**: NoSQL steht für "Not Only SQL".
- Steht für modernere Datenbanktechnologien, die nicht auf traditionellen relationalen Datenbanken basieren.
- **Eigenschaften**: 
  - Unterstützung verschiedener Datenmodelle wie Dokumenten-, Graphen-, Schlüssel-Wert- und Spaltenorientierte Speicher.
  - Oft schema-los, was bedeutet, dass die Struktur der Daten dynamisch und nicht fest vorgegeben ist.

---

### Warum NoSQL? Vorteile und Herausforderungen

- **Vorteile**:
  - **Flexibilität**: Kein festes Schema bedeutet einfache Anpassungen und Erweiterungen.
  - **Skalierbarkeit**: Besonders geeignet für verteilte Datenstrukturen, unterstützt horizontales Skalieren (Erweiterung durch Hinzufügen von Servern).
  - **Performance**: Optimiert für schnelle Lese- und Schreibzugriffe, insbesondere bei großen Datenmengen.
- **Herausforderungen**:
  - **Konsistenz**: Einige NoSQL-Datenbanken opfern Transaktionskonsistenz für Geschwindigkeit und Skalierbarkeit.
  - **Management**: Unterschiedliche Systeme erfordern spezifisches technisches Know-how.

---

## Schlüsselkonzepte

---

### High Availability: Eine Einführung

---

#### Definition von High Availability

- **Definition**: High Availability (HA) bezieht sich auf Systeme, die so konzipiert sind, dass sie auch bei Ausfällen oder Störungen weiterhin verfügbar sind.
- **Bedeutung**: Wichtig für Geschäftsanwendungen, bei denen Ausfallzeiten zu erheblichem finanziellen Verlust führen können.
- **Metapher**: Denke an HA wie an eine Stadt mit mehreren Straßen zu jedem Ziel; wenn eine Straße gesperrt wird, gibt es immer eine alternative Route.

---

### NoSQL vs SQL: Vergleich und Unterschiede

#### Was ist SQL?

- **Definition**: SQL (Structured Query Language) ist die Standardsprache für die Verwaltung und Abfrage von relationalen Datenbanken.
- **Eigenschaften**: 
  - Starke Struktur mit definierten Schemata.
  - Beziehungen zwischen Daten sind genau festgelegt und durch Tabellen verbunden.
- **Metapher**: SQL kann man sich wie eine traditionelle Bücherei vorstellen, in der Bücher nach einem strikten System kategorisiert und abgelegt werden.

---

#### Was ist NoSQL?

- NoSQL-Datenbanken sind nicht-relaational und bieten flexible Schemata.
- **Viele verschiedene Datenmodelle**: Unterstützt eine breite Palette von Datenformaten und Speichermodellen.
- **Metapher**: NoSQL ist wie ein persönliches Notizbuch, in dem man seie Notizen in jeder beliebigen Form und Struktur festhalten können.

---

#### Hauptunterschiede zwischen SQL und NoSQL

- **Datenstruktur**: SQL erfordert feste Schemata und Beziehungen, NoSQL ist flexibel und oft schema-los.
- **Skalierbarkeit**: **SQL-Datenbanken sind typischerweise schwerer skalierbar und erfordern kostspielige Server-Upgrades.**
- **Anwendungsfälle**: SQL eignet sich für komplexe Abfragen und Transaktionssicherheit, NoSQL für schnelle, skalierbare Operationen in verteilten Umgebungen.
- **Metapher**: SQL ist wie ein streng regulierter Schulunterricht, während NoSQL einem freien Studienprogramm gleicht.

---

### NoSQL Datenmodelle

#### Dokumentenorientierte Datenbanken

- **Beispiele**: MongoDB, CouchDB
- **Eigenschaften**: Speichern Daten in Dokumentenformaten wie JSON. Ideal für unstrukturierte Daten.
- **Metapher**: Wie ein detailliertes Tagebuch, in dem jede Eintragung eigene Informationen und Details enthält.

---

#### Spaltenorientierte Datenbanken

- **Beispiele**: Apache Cassandra, Google BigTable
- **Eigenschaften**: Optimiert für das Lesen und Schreiben großer Mengen von Daten über viele Maschinen hinweg.
- **Metapher**: Denken Sie an eine Datenbank wie eine gigantische Tabelle, die auf viele Räume verteilt ist, wobei jeder Raum eine Spalte mit Daten beherbergt.

---

#### Schlüssel-Wert Datenbanken

- **Beispiele**: Redis, Amazon DynamoDB
- **Eigenschaften**: Speichern Daten als Schlüssel-Wert-Paare. Schnelle Lese- und Schreibzugriffe.
- **Metapher**: Wie eine Umkleidekabine mit vielen Schließfächern, in denen Sie Gegenstände schnell verstauen und abrufen können.

---
