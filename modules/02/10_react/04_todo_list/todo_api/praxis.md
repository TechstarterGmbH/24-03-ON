# Praxisaufgabe

Heute wollen wir eine Datenbank und die API-Endpunkte für unsere To-do Liste implementieren.

Bei der Tier-API hatten wir folgendes Tabellenschema:

| id  | tierart | name  | krankheit | geburtstag | gewicht |
|-----|---------|-------|-----------|------------|---------|
| 1   | Hund    | Bello | Fieber    | 01.01.2020 | 5.5     |

In unserer To-Do Liste haben wir folgendes Schema:

```JavaScript
{ id: 1, text: 'Einkaufen gehen', isComplete: false },
{ id: 2, text: 'Waschen', isComplete: false },
{ id: 3, text: 'React lernen', isComplete: false },
```

Dies entspricht folgendem Tabellenschema:

| id  | text            | isComplete |     |
| --- | --------------- | ---------- | --- |
| 1   | Einkaufen gehen | false      |     |
| 2   | Waschen         | false      |     |
| 3   | React lernen    | false      |     |

Geht nun in Partnerarbeit noch einmal die Schritte der Tier-API durch. Ihr findet diese im Dokument `Tier-API-Recap`. Danach sollt ihr diese Schritte auf die To-Do-Liste API übertragen

Wir brauchen dafür folgende API Endpunkte

## API- Endpunkte

## 1. Alle Todos abfragen

- Erstelle einen neuen GET-Endpunkt `/todos in deiner Express-Anwendung.
- Dieser Endpunkt soll alle Todos aus der Datenbank zurückgeben.

## 2. Ein Todo abfragen

- Erstelle einen neuen GET-Endpunkt `/todos/:id` in deiner Express-Anwendung.
- Das `:id` bedeutet, dass hier ein Parameter übergeben wird.
- Zum Beispiel für `/todos/1` soll das Todo mit der ID 1 zurückgegeben werden.
## 3. Ein neues Todo hinzufügen

- Erstelle einen neuen POST-Endpunkt `/todo in deiner Express-Anwendung.
- Dieser Endpunkt soll ein neues Todo in die Datenbank einfügen.
- Die Daten für das neue Todo werden im Body der Anfrage erwartet.

## 4. Ein Todo aktualisieren

- Erstelle einen neuen PUT-Endpunkt `/todos/:id` in deiner Express-Anwendung.
- Dieser Endpunkt soll ein vorhandenes Todo in der Datenbank aktualisieren.
- Die Daten für die Aktualisierung werden im Body der Anfrage erwartet.
## 5. Ein Todo löschen

- Erstelle einen neuen DELETE-Endpunkt `/todos/:id` in deiner Express-Anwendung.
- Dieser Endpunkt soll ein vorhandenes Todo aus der Datenbank löschen.
