<img src="Techstarter.svg" style="height: 50px; width: auto">
#### GET Ein einzelnes Todo (vorhanden)
**URL:** `http://localhost:5000/todos/1`
**Methode:** GET

**Erklärung:**
- Dieser Test überprüft, ob die API ein Todo mit der ID 1 erfolgreich zurückgibt.
- Der Statuscode sollte 200 sein, was bedeutet, dass die Anfrage erfolgreich war.
- Die Antwort sollte das Todo-Objekt enthalten.

**Testskript:**
```javascript
pm.test("Statuscode ist 200 für vorhandenes Todo", function () {
    pm.response.to.have.status(200);
});

pm.test("Antwort enthält das Todo-Objekt", function () {
    var jsonData = pm.response.json();
    pm.expect(jsonData).to.have.property('id', 1);
    pm.expect(jsonData).to.have.property('text');
    pm.expect(jsonData).to.have.property('isComplete');
});
```

#### PUT Ein Todo aktualisieren (vorhanden)
**URL:** `http://localhost:5000/todos/1`
**Methode:** PUT

**Body (raw, JSON):**
```json
{
    "text": "Aktualisiertes Todo",
    "isComplete": true
}
```

**Erklärung:**
- Dieser Test überprüft, ob die API ein bestehendes Todo mit der ID 1 erfolgreich aktualisiert.
- Der Statuscode sollte 200 sein, was bedeutet, dass die Anfrage erfolgreich war.
- Die Antwort sollte eine Bestätigungsnachricht enthalten.

**Testskript:**
```javascript
pm.test("Statuscode ist 200 für aktualisiertes Todo", function () {
    pm.response.to.have.status(200);
});

pm.test("Antwort enthält Bestätigungsnachricht", function () {
    pm.response.to.have.body("OK");
});
```

#### DELETE Ein Todo (vorhanden)
**URL:** `http://localhost:5000/todos/1`
**Methode:** DELETE

**Erklärung:**
- Dieser Test überprüft, ob die API ein bestehendes Todo mit der ID 1 erfolgreich löscht.
- Der Statuscode sollte 200 sein, was bedeutet, dass die Anfrage erfolgreich war.
- Die Antwort sollte eine Bestätigungsnachricht enthalten.

**Testskript:**
```javascript
pm.test("Statuscode ist 200 für gelöschtes Todo", function () {
    pm.response.to.have.status(200);
});

pm.test("Antwort enthält Bestätigungsnachricht", function () {
    pm.response.to.have.body("OK");
});
```

### Tests für nicht vorhandene IDs oder fehlschlagende Anfragen

#### GET Ein einzelnes Todo (nicht vorhanden)
**URL:** `http://localhost:5000/todos/9999`
**Methode:** GET

**Erklärung:**
- Dieser Test überprüft, ob die API korrekt reagiert, wenn versucht wird, ein nicht existierendes Todo abzurufen.
- Der Statuscode sollte 404 sein, was bedeutet, dass die Ressource nicht gefunden wurde.

**Testskript:**
```javascript
pm.test("Statuscode ist 404 für nicht existierendes Todo", function () {
    pm.response.to.have.status(404);
});
```


#### PUT Ein Todo mit ungültigen Daten
**URL:** `http://localhost:5000/todos/1`
**Methode:** PUT

**Body (raw, JSON):**
```json
{
    "text": "",
    "isComplete": "string"
}
```

**Erklärung:**
- Dieser Test überprüft, ob die API korrekt reagiert, wenn versucht wird, ein bestehendes Todo mit ungültigen Daten zu aktualisieren.
- Der Statuscode sollte 400 sein, was bedeutet, dass die Anfrage fehlerhafte Daten enthält.

**Testskript:**
```javascript
pm.test("Statuscode ist 400 für ungültige Eingabedaten", function () {
    pm.response.to.have.status(400);
});
```

#### DELETE Ein Todo (nicht vorhanden)
**URL:** `http://localhost:5000/todos/9999`
**Methode:** DELETE

**Erklärung:**
- Dieser Test überprüft, ob die API korrekt reagiert, wenn versucht wird, ein nicht existierendes Todo zu löschen.
- Der Statuscode sollte 404 sein, was bedeutet, dass die Ressource nicht gefunden wurde.

**Testskript:**
```javascript
pm.test("Statuscode ist 404 für nicht existierendes Todo", function () {
    pm.response.to.have.status(404);
});
```