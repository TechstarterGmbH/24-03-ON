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

