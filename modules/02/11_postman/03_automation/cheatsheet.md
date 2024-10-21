

# Leitfaden für automatisierte API-Tests mit Postman

### Einleitung
Dieser Leitfaden hilft, automatisierte Tests für eine Todo-API in Postman zu erstellen. Du lernst, wie du verschiedene API-Endpunkte testest, einschließlich der Validierung von Antworten und dem Testen von Fehlerfällen.

Postman verwendet zur Nutzung von Tests Chai, eine Assertionsbibliothek, die eine anschauliche und gut lesbare Syntax für Test-Assertions bereitstellt.

#### Was sind Assertions?

Assertions sind Prüfungen oder Behauptungen in Tests, die sicherstellen, dass bestimmte Bedingungen erfüllt sind. Wenn eine Assertion fehlschlägt, wird der Test als fehlgeschlagen betrachtet. Assertions helfen dabei, Fehler und unerwartetes Verhalten in der Software zu identifizieren, indem sie bestimmte Erwartungen an den Code stellen.


Dabei folgt jeder Test folgender Syntax: 

```JavaScript
pm.test("Hier wird in Worten beschrieben, welches Verhalten erwartet wird", function () { 
    // Testfunktionen folgen hier
```

#### Häufig verwendete Assertion-Methoden in Chai

1. **`equal`**
   - Überprüft, ob zwei Werte gleich sind.

2. **`not.equal`**
   - Überprüft, ob zwei Werte ungleich sind.

3. **`be.a`**
   - Überprüft den Typ eines Wertes.

4. **`include`**
   - Überprüft, ob ein Wert in einem Array oder String enthalten ist.

5. **`lengthOf`**
   - Überprüft die Länge eines Arrays oder Strings.

6. **`exist`**
   - Überprüft, ob ein Wert existiert (nicht `null` oder `undefined`).

7. **`be.true`**
   - Überprüft, ob ein Wert `true` ist.

8. **`be.false`**
   - Überprüft, ob ein Wert `false` ist.

### Anwendung von Chai in Postman

In Postman-Skripten können diese Assertions verwendet werden, um zu überprüfen, ob die API-Antworten den Erwartungen entsprechen. 

**Beispiel für die Verwendung von Chai in Postman:**

```javascript
pm.test("Statuscode ist 200 für die erfolgreiche Abfrage aller Todos", function () {

    pm.response.to.have.status(200);

});

pm.test("Statuscode ist 500, weil es einen Serverfehler gibt", function() {

    pm.response.to.have.status(500);

});
```

### Erklärung der Syntax von Postman-Tests

In Postman können Tests geschrieben werden, um die API-Antworten zu überprüfen. Die Syntax für Postman-Tests verwendet die `pm.test` Funktion und die Chai-Assertion-Bibliothek für die Überprüfungen. 
### Erklärung der Syntax von Postman-Tests

In Postman können Tests geschrieben werden, um die API-Antworten zu überprüfen. Die Syntax für Postman-Tests verwendet die `pm.test` Funktion und die Chai-Assertion-Bibliothek für die Überprüfungen.

Hier sind zwei Beispiele für Postman-Testskripte:

```javascript
pm.test("Statuscode ist 200 für die erfolgreiche Abfrage aller Todos", function () {
    pm.response.to.have.status(200);
});

pm.test("Statuscode ist 500, weil es einen Serverfehler gibt", function () {
    pm.response.to.have.status(500);
});
```

### Detaillierte Erklärung der Syntax

#### Beispiel 1: Überprüfung des Statuscodes 200

```javascript
pm.test("Statuscode ist 200 für die erfolgreiche Abfrage aller Todos", function () {
    pm.response.to.have.status(200);
});
```

- **`pm.test("Statuscode ist 200 für die erfolgreiche Abfrage aller Todos", function () { ... });`**
  - **`pm.test`**: Dies ist eine Funktion in Postman, die einen Test definiert.
  - **`"Statuscode ist 200 für die erfolgreiche Abfrage aller Todos"`**: Dies ist eine beschreibende Nachricht, die erklärt, was der Test überprüft. In diesem Fall überprüft der Test, ob der Statuscode der Antwort 200 ist, was einen erfolgreichen Abruf aller Todos bedeutet.
  - **`function () { ... }`**: Dies ist die Funktion, die den Test enthält. Alle Assertions innerhalb dieser Funktion werden als Teil dieses Tests ausgeführt.

- **`pm.response.to.have.status(200);`**
  - **`pm.response`**: Dies ist ein Objekt, das die Antwort der API-Anfrage repräsentiert.
  - **`.to.have.status(200)`**: Dies ist eine Assertion, die überprüft, ob der Statuscode der Antwort 200 ist. 
    - **`.to`** und **`.have`** sind Kettenfunktionen, die die Lesbarkeit der Assertion erhöhen.
    - **`.status(200)`** ist die eigentliche Überprüfung, die sicherstellt, dass der Statuscode 200 ist. Wenn der Statuscode nicht 200 ist, schlägt der Test fehl.

#### Beispiel 2: Überprüfung des Statuscodes 500

```javascript
pm.test("Statuscode ist 500, weil es einen Serverfehler gibt", function () {
    pm.response.to.have.status(500);
});
```

- **`pm.test("Statuscode ist 500, weil es einen Serverfehler gibt", function () { ... });`**
  - **`pm.test`**: Dies ist eine Funktion in Postman, die einen Test definiert.
  - **`"Statuscode ist 500, weil es einen Serverfehler gibt"`**: Dies ist eine beschreibende Nachricht, die erklärt, was der Test überprüft. In diesem Fall überprüft der Test, ob der Statuscode der Antwort 500 ist, was auf einen Serverfehler hinweist.
  - **`function () { ... }`**: Dies ist die Funktion, die den Test enthält. Alle Assertions innerhalb dieser Funktion werden als Teil dieses Tests ausgeführt.

- **`pm.response.to.have.status(500);`**
  - **`pm.response`**: Dies ist ein Objekt, das die Antwort der API-Anfrage repräsentiert.
  - **`.to.have.status(500)`**: Dies ist eine Assertion, die überprüft, ob der Statuscode der Antwort 500 ist.
    - **`.to`** und **`.have`** sind Kettenfunktionen, die die Lesbarkeit der Assertion erhöhen.
    - **`.status(500)`** ist die eigentliche Überprüfung, die sicherstellt, dass der Statuscode 500 ist. Wenn der Statuscode nicht 500 ist, schlägt der Test fehl.
### Ein weiteres Beispiel

```javascript
pm.test("Antwort enthält den erwarteten Text", function () {  pm.response.to.have.body("Erwarteter Text");
});
```

### Zusammenfassung

In diesem Leitfaden hast du gelernt, wie du automatisierte Tests für eine Todo-API in Postman erstellen kannst. Diese Tests überprüfen sowohl erfolgreiche Anfragen mit vorhandenen IDs als auch absichtlich fehlschlagende Anfragen mit nicht vorhandenen IDs oder ungültigen Daten. Solche Tests sind wichtig, um die Robustheit und Zuverlässigkeit deiner API sicherzustellen.