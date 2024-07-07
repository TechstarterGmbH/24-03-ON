# Gruppenaufgabe: Explorieren von HTTP-Methoden mit Postman

## Ziel

- Installation von Postman
- Verwendung von HTTP-Methoden (GET, POST, PUT, DELETE, HEAD)

## Voraussetzungen

- Alle Teilnehmer sollten Postman auf ihren Windows-Computern installiert haben. Postman kann von [hier](https://www.postman.com/downloads/) heruntergeladen werden.
- Grundlegendes Verständnis der HTTP-Methoden und Statuscodes.

## Aufgabenbeschreibung:

1. Lest euch folgende Website durch [https://jsonplaceholder.typicode.com/](https://jsonplaceholder.typicode.com/)
2. Sendet folgende Anfragen an die API mit Postman:

```
GET	/posts
GET	/posts/1
GET	/posts/1/comments
GET	/comments?postId=1
POST	/posts
PUT	/posts/1
PATCH	/posts/1
DELETE	/posts/1
```

3. **Statuscodes Überprüfen**:
   - Versucht, Fehler zu provozieren (zum Beispiel durch Zugriff auf nicht vorhandene Ressourcen oder durch ungültige Anfragen), um verschiedene 4xx-Fehler zu generieren.
   - Beobachtet, wie die API auf fehlerhafte Anfragen reagiert und welche Statuscodes zurückgegeben werden.
