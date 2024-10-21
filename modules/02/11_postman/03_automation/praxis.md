<img src="Techstarter.svg" style="height: 50px; width: auto">
# Praxis

Ihr findet hier die Beispiele der ersten Tests, die wir gemeinsam erstellt haben. 

## Teil 1: gültige Daten 

Erstellt in Gruppen noch die fehlenden Tests für folgende Endpunkte

- `GET /todos/:id`: Ein einzelnes Todo abfragen
- `PUT /todos/:id`: Ein Todo aktualisieren
- `DELETE /todos/:id`: Ein Todo löschen

#### GET Alle Todos

**URL:** `http://localhost:5000/todos`  
**Methode:** GET

**Testskript:**

```javascript
pm.test("Statuscode ist 200 für alle Todos", function () {
    pm.response.to.have.status(200);
});

pm.test("Antwort enthält eine Liste von Todos", function () {
    var jsonData = pm.response.json();
    pm.expect(jsonData).to.be.an('array');
    if (jsonData.length > 0) {
        pm.expect(jsonData[0]).to.have.property('id');
        pm.expect(jsonData[0]).to.have.property('text');
        pm.expect(jsonData[0]).to.have.property('isComplete');
    }
});
```

Dieses Skript überprüft, ob der Statuscode 200 ist und ob die Antwort eine Liste von Todos enthält. Falls die Liste nicht leer ist, überprüft der Test auch, ob die ersten Elemente die erwarteten Eigenschaften (`id`, `text`, `isComplete`) besitzen.

#### POST Ein Todo aktualisieren (vorhanden)

**URL:** `http://localhost:5000/todos/1`  
**Methode:** PUT

**Body (raw, JSON):**

```json
{
    "text": "Aktualisiertes Todo",
    "isComplete": true
}
```

**Testskript:**

```javascript
pm.test("Statuscode ist 201 für aktualisiertes Todo", function () {
    pm.response.to.have.status(201);
});

pm.test("Antwort enthält Bestätigungsnachricht", function () {
    pm.response.to.have.body("New Entry created");
});
```

**Erklärung:**
- Dieser Test überprüft, ob die API ein bestehendes Todo mit der ID 1 erfolgreich aktualisiert.
- Der Statuscode sollte 200 sein, was bedeutet, dass die Anfrage erfolgreich war.
- Die Antwort sollte eine Bestätigungsnachricht enthalten.

----

## Teil 2: ungültige Daten 

Erstellt in Gruppen noch die fehlenden Tests für folgende Endpunkte

- `GET /todos/:id`: Ein einzelnes Todo abfragen
- `PUT /todos/:id`: Ein Todo aktualisieren
- `DELETE /todos/:id`: Ein Todo löschen


#### POST Ein Todo mit ungültigen Daten
**URL:** `http://localhost:5000/todos`
**Methode:** POST

**Body (raw, JSON):**
```json
{
    "text": "",
    "isComplete": "string"
}
```

**Erklärung:**
- Dieser Test überprüft, ob die API korrekt reagiert, wenn versucht wird, ein Todo mit ungültigen Daten hinzuzufügen.
- Der Statuscode sollte 400 sein, was bedeutet, dass die Anfrage fehlerhafte Daten enthält.

**Testskript:**
```javascript
pm.test("Statuscode ist 400 für ungültige Eingabedaten", function () {
    pm.response.to.have.status(400);
});
```
