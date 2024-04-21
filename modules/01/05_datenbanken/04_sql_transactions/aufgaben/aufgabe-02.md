# Praktische Aufgabe: Bestellungsmanagement in einem Online-Shop

## Ziel:

Implementiere eine SQL-Transaktion, um eine Bestellung in einem Online-Shop zu verarbeiten. Die Transaktion soll sicherstellen, dass eine Bestellung nur dann erfolgreich ist, wenn sowohl die Zahlung verarbeitet als auch der Lagerbestand aktualisiert wurde.

## Szenario:

Ein Kunde möchte ein Produkt in einem Online-Shop kaufen. Der Kaufprozess umfasst folgende Schritte:

1. Überprüfung der Verfügbarkeit des Produkts im Lager.
1. Verarbeitung der Zahlung des Kunden.
1. Aktualisierung des Lagerbestands.

## Aufgabe:

Schreibe eine SQL-Transaktion, die die folgenden Schritte umsetzt und sicherstellt, dass entweder alle Schritte erfolgreich durchgeführt werden oder bei einem Fehler in einem der Schritte die Transaktion zurückgerollt wird.

## Vorbereitende SQL-Befehle:

Um die Aufgabe zu beginnen, setze zunächst die folgenden SQL-Befehle ein, um die benötigten Tabellen zu erstellen und sie mit initialen Daten zu füllen:

```sql
-- Tabelle für Produkte erstellen
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    stock INT
);

-- Tabelle für Zahlungen erstellen
CREATE TABLE payments (
    transaction_id INT PRIMARY KEY,
    amount DECIMAL(10, 2)
);

-- Ein Produkt hinzufügen
INSERT INTO products (id, name, stock) VALUES (1, 'Smartphone', 10);

```

### Aufgabenstellung:

1. Starte eine Transaktion.
2. Überprüfe, ob das gewünschte Produkt (mit der id 1) verfügbar ist.
3. Füge einen Eintrag in die `payments` Tabelle ein, um die Zahlung zu verarbeiten (z.B. transaction_id = 123, amount = 55).
4. Aktualisiere den Lagerbestand (`stock = stock - 1`) des Produkts in der `products` Tabelle.
5. Beende die Transaktion.
6. Überprüfe, ob die Transaktion erfolgreich war und ob der Lagerbestand korrekt aktualisiert wurde.
