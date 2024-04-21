---

class: invert

---

# Einführung in SQL-Transaktionen

---

## 1. Szenario - Problemstellung

---

### Welches Problem wird von SQL-Transaktionen gelöst?

- Manchmal ist es notwendig, mehrere Schritte einer Datenbankoperation als eine Einheit zu behandeln.
- **SQL-Transaktionen stellen sicher, dass mehrere Schritte einer Datenbankoperation entweder komplett erfolgreich sind oder im Fehlerfall nichts verändern.**
- **Transaktionen sorgen dafür, dass die Datenbank in einem konsistenten Zustand bleibt.**

---

## 1.2 Beispiel Szenario

### Beispiel: Geldüberweisung

- Man kann sich eine Geldüberweisung als Transaktion vorstellen, bei der Geld von einem Konto abgebucht und auf ein anderes Konto gutgeschrieben wird.
- Das Geld sollte entweder vollständig von einem Konto abgebucht und auf das andere Konto gutgeschrieben werden oder gar nicht.
- **Problem**: Ohne Transaktionen könnte Geld von einem Konto abgebucht werden, ohne dass es einem anderen Konto gutgeschrieben wird.

---

## 1.3 Lösung mit Transaktionen

- Das System stellt sicher, dass **beide Schritte** (Abbuchung und Gutschrift) erfolgreich sind, bevor die Änderungen bestätigt werden.

---

## 2.2 Warum sind SQL-Transaktionen wichtig?

---

### Bedeutung von SQL-Transaktionen

- **Datenintegrität**: SQL-Transaktionen sorgen für die Richtigkeit und Vollständigkeit der Datenbankdaten, auch bei Fehlern.
- **Isolation**: Sie isolieren die Ausführung einzelner Transaktionen, so dass sie unabhängig von gleichzeitigen Benutzeraktivitäten ausgeführt werden.

---

## 3. Arbeiten mit SQL-Transaktionen

---

### 3.1 Starten einer Transaktion

- Eine Transaktion wird mit dem SQL-Befehl `BEGIN TRANSACTION` eingeleitet.
- Dies markiert den Anfang einer Serie von Operationen, die als eine Einheit behandelt werden sollen.

---

## 3.2 Ausführen von Operationen innerhalb einer Transaktion

### Durchführung von Datenoperationen

- Innerhalb einer Transaktion können Befehle wie `INSERT`, `UPDATE` und `DELETE` ausgeführt werden.
- Jeder Befehl ist Teil der Transaktion und wird nur endgültig umgesetzt, wenn alle Befehle erfolgreich sind.

---

## 3.3 Beenden einer Transaktion

### Entscheidungspunkte beim Beenden

- **`COMMIT`**: Bestätigt alle innerhalb der Transaktion gemachten Änderungen.
- **`ROLLBACK`**: Bricht die Transaktion ab und setzt alle Änderungen zurück, wenn während der Transaktion ein Fehler auftritt.

---

## 4. Beispiel

---

### 4.1 Online Shop Beispiel

- Stelle dir einen Online-Shop wie Amazon vor, in dem Kunden Produkte kaufen und bezahlen.
- Jedes Mal, wenn ein Kunde ein Produkt kauft, müssen mehrere Schritte ausgeführt werden, um den Kauf abzuschließen.
  - Schauen ob das Produkt verfügbar ist.
  - Die Zahlung verarbeiten.
  - Den Lagerbestand aktualisieren.
- **Frage**: Was passiert, wenn ein Schritt fehlschlägt?

---

#### 4.1.1 Ohne Transaktionen

- Bei Problemen in einem der Schritte könnte es zu **Inkonsistenzen in den Daten** kommen.
- **Beispiel**: Ein Kunde zahlt für ein Produkt, das nicht mehr auf Lager ist.
- Alle Schritte müssen im Applikationscode behandelt werden, was zu **komplexem und fehleranfälligem Code** führen kann.

---

Beispiel SQL-Code

```sql
-- Schritt 1: Schauen ob das Produkt verfügbar ist
SELECT * FROM products WHERE id = 123;

-- Schritt 2: Die Zahlung verarbeiten
INSERT INTO payments (customer_id, amount) VALUES (456, 100.00);

-- Schritt 3: Den Lagerbestand aktualisieren
UPDATE products SET stock = stock - 1 WHERE id = 123;

```

---

## 4.1.3 Mit Transaktionen

- Mit Transaktionen können alle Schritte als eine Einheit behandelt werden.
- Wenn ein Schritt fehlschlägt, können alle Änderungen rückgängig gemacht werden.


### Sicherung des Kaufprozesses

- In einer Transaktion wird die Zahlung nur dann als erfolgreich betrachtet, wenn auch der Lagerbestand erfolgreich aktualisiert wurde.

---

## 4.1.4 Vorteile mit Transaktionen

### Warum Transaktionen den Unterschied machen

- **Kundenzufriedenheit**: Garantiert, dass Kunden nur dann belastet werden, wenn alle Aspekte des Kaufs bestätigt sind.
- **Betriebssicherheit**: Reduziert Fehler in Daten und sorgt für eine stabilere Betriebsumgebung.

---

Beispiel SQL-Code

```sql
-- Starte die Transaktion
BEGIN TRANSACTION;

SELECT * FROM products WHERE id = 123;
INSERT INTO payments (customer_id, amount) VALUES (456, 100.00);
UPDATE products SET stock = stock - 1 WHERE id = 123;

-- Bestätige die Transaktion
COMMIT;

```

---

Beispiel SQL-Code mit Rollback

```sql
-- Starte die Transaktion
BEGIN TRANSACTION;

SELECT * FROM products WHERE id = 123;
INSERT INTO payments (customer_id, amount) VALUES (456, 100.00);
UPDATE products SET stock = stock - 1 WHERE id = 123;

-- Bestätige die Transaktion
ROLLBACK;

```
