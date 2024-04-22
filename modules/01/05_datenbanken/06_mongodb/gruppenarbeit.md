# Einführung in MongoDB

In diesem Guide lernst du die Grundlagen von MongoDB und MongoDB Atlas kennen.

## Grundlagen der Datenbanken

Lese dir im ersten Schritt folgenden Artikel durch: [MongoDB](https://datascientest.com/de/mongodb)

### Dokumentenorientierte Datenbanken und NoSQL

#### Was ist eine dokumentenorientierte Datenbank?

Eine dokumentenorientierte Datenbank ist eine Art von NoSQL-Datenbank, die Dokumente als Grundlage für die Datenmodellierung verwendet. Diese Dokumente sind in der Regel JSON-ähnlich und können komplexe Datenstrukturen enthalten.

#### Was sind Dokumente in MongoDB?

In MongoDB sind Dokumente die grundlegenden Dateneinheiten, die in einer Collection gespeichert werden. Jedes Dokument besteht aus Feldern und Werten, ähnlich wie ein JSON-Objekt.

```json
{
  "name": "John Doe",
  "email": "john@doe.de",
}
```

## Einstieg in MongoDB

### Erstelle einen Account bei MongoDB Atlas

1. **Besuche die MongoDB Atlas Webseite**: Gehe auf die offizielle MongoDB Atlas Webseite und erstelle einen Account.
2. **Erstelle einen kostenlosen Cluster / Datenbank**: Wähle den kostenlosen Plan und erstelle einen Cluster in der Region deiner Wahl.
3. **Öffne die Einstellungen der Datenbank**: Unter `Deployment -> Database` klicke auf den Namen deines Clusters. 
4. **High Availability**: Unter dem Reiter `Overview` siehst du Informationen zu den verschiedenen Replicas und Nodes in deinem Cluster.
5. **Erstelle eine neue Collection**: Klicke auf `Collections` und danach auf `+ Create Database` `Database Name: MeinAdressbuch` und `Collection Name: Adressbuch`.
6. **Füge Dokumente hinzu**: Klicke auf `Insert Document` und füge einige Beispieldokumente hinzu.

```text
name: "John Doe" <string>
street: "123 Main Street" <string>
city: "Anytown" <string>
zip: 12345 <int32>
```

7. Kannst du verschiedene Addresstypen in deinem Adressbuch speichern?
  - Manchmal mit country, manchmal ohne
  - Manchmal mit phone, manchmal ohne
8. **Read**: Im Reiter Find kannst du nach Dokumenten suchen.
  - Füge folgende Query ein: `{"name": "John Doe"}`
  - Jetzt sollte das Dokument mit dem Namen "John Doe" angezeigt werden.
9. **Update**: Ändere die Straße von "123 Main Street" auf "456 Elm Street".
10. **Delete**: Lösche das Dokument mit dem Namen "John Doe".

