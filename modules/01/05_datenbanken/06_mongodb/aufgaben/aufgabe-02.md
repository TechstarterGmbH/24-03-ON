# Aufgabe 2: MongoDB und Python

## Vorbereitung

1. Stelle sicher, dass du ein MongoDB Atlas Konto hast und einen Cluster erstellt hast.
2. Installiere die `pymongo` Bibliothek, falls noch nicht geschehen, indem du den folgenden Befehl in deiner Python-Umgebung ausführst:

```bash
pip install pymongo
```

## Aufgabenbeschreibung

**Schritt 1: Verbindung zu MongoDB Atlas herstellen**

1. Hole dir die Verbindungsinformationen von deinem MongoDB Atlas Konto.
  - Unter deinen Clustereinstellungen findest du den `Connect`-Button.
  - Beim ersten Mal wirst du aufgefordert, eine IP-Whitelist hinzuzufügen und einen Benutzer zu erstellen.
  - Kopiere den Verbindungsstring, der wie folgt aussieht: `mongodb+srv://<username>:<password>@<cluster-url>/<dbname>?retryWrites=true&w=majority`.
2. Verwende diese Informationen, um eine Verbindung zur Datenbank herzustellen.

```python
from pymongo import MongoClient
# Ersetze '<dein_connection_string>' mit deinem tatsächlichen Verbindungsstring
client = MongoClient('<dein_connection_string>')
```

**Schritt 2: Datenbank und Collection erstellen**

1. Erstelle eine Datenbank namens `MeinAdressbuch` und eine Collection namens `Adressbuch`.

```python
db = client['MeinAddressbuch']
collection = db['Addressbuch']
```

**Schritt 3: Dokumente hinzufügen**

1. Füge mindestens drei verschiedene Dokumente in die `Adressbuch`-Collection ein. Jedes Dokument sollte die Felder `name`, `street`, `city`, und `zip` enthalten. Einige Dokumente können zusätzliche Felder wie `phone` oder `country` enthalten.

```python
documents = [
    {"name": "John Doe", "street": "123 Main Street", "city": "Anytown", "zip": 12345},
    {"name": "Jane Doe", "street": "456 Elm Street", "city": "Othertown", "zip": 23456, "phone": "123-456-7890"},
    {"name": "Max Musterman", "street": "789 Oak Street", "city": "Anytown", "zip": 34567, "country": "USA"}
]
collection.insert_many(documents)
```

**Schritt 4: Dokumente abfragen**

1. Schreibe einen Python-Code, um alle Dokumente abzufragen, die in einer bestimmten Stadt (z.B. "Anytown") liegen.

```python
query_result = collection.find({"city": "Anytown"})
for doc in query_result:
    print(doc)
```

**Schritt 5: Dokumente aktualisieren**

1. Aktualisiere die Adresse eines Kontakts, indem du die `street` und `city` änderst.

```python
collection.update_one({"name": "John Doe"}, {"$set": {"street": "456 Elm Street", "city": "Newtown"}})
```

**Schritt 6: Dokumente löschen**

1. Lösche ein Dokument basierend auf dem Namen.

```python
collection.delete_one({"name": "John Doe"})

```

```python

# Import der benötigten Module
from pymongo import MongoClient

# Dein Connection String (ersetze <password> durch dein Passwort)
conn = "DEIN_CONNECTION_STRING"

# Verbindung zur Datenbank
client = MongoClient(conn)

# Datenbank und Collection
db = client['MeinAddressbuch']
collection = db['Addressbuch']

# Wir definieren 3 Dokumente (Datensätze)
documents = [
    {"name": "John Doe", "street": "123 Main Street", "city": "Anytown", "zip": 12345},
    {"name": "Jane Doe", "street": "456 Elm Street", "city": "Othertown", "zip": 23456, "phone": "123-456-7890"},
    {"name": "Jim Beam", "street": "789 Oak Street", "city": "Anytown", "zip": 34567, "country": "USA"}
]

# Einfügen der Dokumente in die Collection
collection.insert_many(documents)

# Abfragen der Collection, alle Dokumente die in der Stadt "Anytown" wohnen
query_result = collection.find({"city": "Anytown"})

# Ausgabe der gefundenen Dokumente
for doc in query_result:
    print(doc)

# Update eines Dokuments
collection.update_one({"name": "John Doe"}, {"$set": {"street": "456 Elm Street", "city": "Newtown"}})

# Löschen eines Dokuments mit dem Namen "John Doe"
collection.delete_one({"name": "John Doe"})

```

## Aufgabe 2 (Freiwillig)

Erweitere dein Python-Skript, um die folgenden zusätzlichen Operationen durchzuführen:

1. Ändere den Zip-Code aller Kontakte in "Anytown" auf 54321. (Hinweis: Verwende `update_many`)
2. Füge ein neues Feld `email` zu einem bestimmten Kontakt hinzu und setze es auf eine E-Mail-Adresse deiner Wahl.
3. Erstelle 20 zufällige Kontakte und füge sie der Collection hinzu.
4. Lösche alle Kontakte, die den Namen "Jim Beam" haben.
