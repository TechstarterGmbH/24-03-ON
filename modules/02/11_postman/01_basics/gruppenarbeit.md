# Gruppenarbeit

## Ziel

- Erstelle eine simple CRUD API mit Express
- Jeder Endpunkt soll mit Postbank getestet werden
- Ziel soll es sein eine Buchliste zu erstellen
- Es soll keine Datenbank erstellt werden, sondern die Daten sollen in einem Array gespeichert werden

## Endpunkte

1. `GET /books` - Gibt alle Bücher zurück
2. `GET /books/:id` - Gibt ein Buch anhand der ID zurück
3. `POST /books` - Fügt ein neues Buch hinzu
4. `PUT /books/:id` - Aktualisiert ein Buch anhand der ID
5. `DELETE /books/:id` - Löscht ein Buch anhand der ID

## Anforderungen

- Jedes buch soll folgende Eigenschaften haben:
  - `id`
  - `title`
  - `author`
