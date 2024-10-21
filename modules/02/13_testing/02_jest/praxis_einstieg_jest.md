### **Einführung in Jest: Wie starte ich mit Unit Tests?**

**Jest** ist ein JavaScript-Testing-Framework, das von Facebook entwickelt wurde und häufig für das Testen von JavaScript-Anwendungen verwendet wird. Es ist besonders nützlich für Unit-Tests, die das Verhalten von einzelnen Funktionen und Modulen in einer Anwendung überprüfen.

Dazu erstellen wir einen Ordner namen `praxis` , und initialisieren unser Projekt mit `npm init -y`

### **Schritt 1: Installation von Jest**

Um mit Jest zu starten, musst du Jest zuerst in deinem Projekt installieren. Öffne das Terminal oder die Kommandozeile in deinem Projektverzeichnis und führe den folgenden Befehl aus:

```bash
npm install --save-dev jest
```

Der `--save-dev`-Flag sorgt dafür, dass Jest als Entwicklungsabhängigkeit (`devDependency`) in deiner `package.json` hinzugefügt wird.

### **Schritt 2: Konfiguration der `package.json`**

Nach der Installation von Jest kannst du dein Projekt so konfigurieren, dass es Jest verwendet, um Tests auszuführen. Öffne deine `package.json` und füge ein neues `test`-Script hinzu:

**`package.json`**

```json
{
  "name": "praxis",
  "version": "1.0.0",
  "main": "index.js",
  "scripts": {
    "test": "jest"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "description": "",
  "devDependencies": {
    "jest": "^29.7.0"
  }
}
```

Dieser Eintrag ermöglicht es dir, Tests mit dem Befehl `npm test` oder `npm run test` auszuführen.

### **Schritt 3: Erstelle deinen ersten Test**

Lass uns nun unseren allerersten Test schreiben! Erstelle eine neue Datei namens `sum.test.js` im Projektverzeichnis oder in einem speziellen `tests`-Ordner.

**Datei: `sum.test.js`**

```JavaScript
test('1 + 2 sollte 3 sein', () => {
  expect(1 + 2).toBe(3);
});
```

### **Erklärung:**

- **`test`**: Dies ist die Testfunktion von Jest. Sie nimmt zwei Parameter an:
    1. Eine Beschreibung des Tests als Zeichenkette: `'1 + 2 sollte 3 sein'`.
    2. Eine Callback-Funktion, die die eigentliche Testlogik enthält.
- **`expect`**: Dies ist eine Assertion-Funktion, die einen Ausdruck erwartet und überprüft, ob dieser Ausdruck die erwarteten Werte erfüllt.
- **`toBe`**: Dies ist ein Matcher, der überprüft, ob das erwartete Ergebnis gleich dem tatsächlichen Ergebnis ist.

### **Schritt 4: Führe den Test aus**

Um den Test auszuführen, geh zurück in dein Terminal und gib den folgenden Befehl ein:

```bash
npm test
```

Jest wird nun alle Testdateien in deinem Projekt suchen (alle Dateien, die auf `.test.js` oder `.spec.js` enden) und die Tests darin ausführen.

Du solltest eine Ausgabe wie diese sehen:

```bash
> mein-projekt@1.0.0 test
> jest

 PASS  ./sum.test.js
  ✓ 1 + 2 sollte 3 sein (5 ms)

Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        1.234s
```

Das bedeutet, dass Jest erfolgreich alle Tests ausgeführt hat und dass der Test `1 + 2 sollte 3 sein` bestanden hat.

### **Zusammenfassung:**

1. Installiere Jest mit `npm install --save-dev jest`.
2. Konfiguriere die `package.json` mit einem `test`Script.
3. Schreibe deinen ersten Test in einer `.test.js` Datei.
4. Führe den Test mit `npm test` aus.

Jetzt bist du bereit, mit Jest Tests zu schreiben und auszuführen!

---
### **Level 1: Unit Tests ohne Funktionen**

### **Beispiele:**

1. **Testen einer Addition**
    
    ```JavaScript
    test('1 + 2 sollte 3 sein', () => {
      expect(1 + 2).toBe(3);
    });
    
    ```
    
    **Erklärung:** Dieser Test überprüft, ob die Addition von 1 und 2 das erwartete Ergebnis 3 ergibt. Die Methode `expect` nimmt den Ausdruck `1 + 2` und die Methode `toBe` überprüft, ob dieser Ausdruck gleich 3 ist.
    
2. **Testen eines Booleans**
    
    ```JavaScript
    test('true sollte wahr sein', () => {
      expect(true).toBe(true);
    });
    
    ```
    
    **Erklärung:** Dieser Test überprüft, ob der Boolean-Wert `true` tatsächlich wahr ist. Es handelt sich um einen sehr einfachen Test, der sicherstellt, dass `true` mit `true` übereinstimmt.
    
3. **Testen von Zeichenkettenlängen**
    
    ```JavaScript
    test('Länge von "Hello" sollte 5 sein', () => {
      expect('Hello'.length).toBe(5);
    });
    
    ```
    
    **Erklärung:** Hier wird die Länge der Zeichenkette `"Hello"` getestet. Der Test überprüft, ob die Länge der Zeichenkette gleich 5 ist.
    
4. **Testen, ob ein Array ein Element enthält**
    
    ```JavaScript
    test('Array sollte die Zahl 4 enthalten', () => {
      expect([1, 2, 3, 4]).toContain(4);
    });
    
    ```
    
    **Erklärung:** Dieser Test prüft, ob das Array `[1, 2, 3, 4]` das Element `4` enthält. Die Methode `toContain` wird verwendet, um sicherzustellen, dass ein bestimmtes Element in einem Array vorhanden ist.
    
5. **Testen einer Multiplikation**
    
    ```JavaScript
    test('3 * 3 sollte 9 sein', () => {
      expect(3 * 3).toBe(9);
    });
    
    ```
    
    **Erklärung:** Hier wird getestet, ob das Produkt von 3 und 3 das erwartete Ergebnis 9 liefert. Auch hier wird `expect` verwendet, um den Ausdruck zu überprüfen, und `toBe` vergleicht das Ergebnis.
    

### **Level 2: Unit Tests mit Funktionen**

### **Beispiele:**

1. **Addition testen mit einer Funktion**
    
    ```JavaScript
    function add(a, b) {
      return a + b;
    }
    ```
    
    **Erklärung:** Eine Funktion `add` wird definiert, die zwei Zahlen addiert und das Ergebnis zurückgibt.
    
    **Testdatei: `mathFunctions.test.js`**
    
    ```JavaScript
    
    test('add(1, 2) sollte 3 sein', () => {
      expect(add(1, 2)).toBe(3);
    });
    
    ```
    
    **Erklärung:** Hier wird die `add`-Funktion getestet, um sicherzustellen, dass `add(1, 2)` das erwartete Ergebnis 3 liefert.

	Der gesamte Code ist:
    
```JavaScript
function add(a, b) {
      return a + b;
}

test('add(1, 2) sollte 3 sein', () => {
      expect(add(1, 2)).toBe(3);
    });
```
    
2. **Subtraktion testenDatei: `mathFunctions.js`**
    
    ```JavaScript
    function subtract(a, b) {
      return a - b;
    }
    
    ```
    
    **Erklärung:** Die Funktion `subtract` berechnet die Differenz von zwei Zahlen.
    
    **Testdatei: `mathFunctions.test.js`**
    
    ```JavaScript
    
    test('subtract(5, 3) sollte 2 sein', () => {
      expect(subtract(5, 3)).toBe(2);
    });
    
    ```
    
    **Erklärung:** Dieser Test prüft, ob die `subtract`-Funktion das erwartete Ergebnis von 2 liefert, wenn 5 und 3 eingegeben werden.

Eine Möglichkeit wie der Gesamtcode aussehen könnte wäre:

```JavaScript
function add(a, b) {
      return a + b;
}
function subtract(a, b) {
      return a - b;
    }

test('add(1, 2) sollte 3 sein', () => {
      expect(add(1, 2)).toBe(3);
    });
    
test('subtract(5, 3) sollte 2 sein', () => {
      expect(subtract(5, 3)).toBe(2);
    });
```

Eine andere Möglichkeit wäre die Tests zu gruppieren

**Gruppieren von Tests**

- Die `describe`-Funktion lässt uns mehrere Tests gruppieren
- Nützlich, um eine Test-Datei mit vielen Tests zu organisieren, z.B. nach Funktion, die getestet wird

```JavaScript
describe("Beschreibung", () => {   
	test("should return correct...", () => {     
		// Test-Implementierung   
	}); 
});
```

Dann könnte unser Code wie folgt aussehen:

```JavaScript
function add(a, b) {
      return a + b;
}
function subtract(a, b) {
      return a - b;
    }

describe("Prüfung der mathematischen Funktionen", () => {   

	test('add(1, 2) sollte 3 sein', () => {
	      expect(add(1, 2)).toBe(3);
	    });
	    
	test('subtract(5, 3) sollte 2 sein', () => {
	      expect(subtract(5, 3)).toBe(2);
	    });
});
```

3. **Testen einer Funktion zur Überprüfung auf Gerade ZahlDatei: `numberFunctions.js`**
    
    ```JavaScript
    function isEven(number) {
      return number % 2 === 0;
    }
    module.exports = { isEven };
    
    ```
    
    **Erklärung:** Die Funktion `isEven` prüft, ob eine gegebene Zahl gerade ist (Rest 0 bei Division durch 2).
    
    **Testdatei: `numberFunctions.test.js`**
    
    ```JavaScript
    const { isEven } = require('./numberFunctions');
    
    test('isEven(4) sollte true sein', () => {
      expect(isEven(4)).toBe(true);
    });
    
    ```
    
    **Erklärung:** Der Test überprüft, ob `isEven(4)` wahr zurückgibt, was bedeutet, dass 4 eine gerade Zahl ist.
    
5. **Testen einer Funktion zur Konvertierung in GroßbuchstabenDatei: `stringFunctions.js`**
    
    ```JavaScript
    function toUpperCase(str) {
      return str.toUpperCase();
    }
    module.exports = { toUpperCase };
    
    ```
    
    **Erklärung:** Die Funktion `toUpperCase` konvertiert eine gegebene Zeichenkette in Großbuchstaben.
    
    **Testdatei: `stringFunctions.test.js`**
    
    ```JavaScript
    const { toUpperCase } = require('./stringFunctions');
    
    test('toUpperCase("hello") sollte "HELLO" sein', () => {
      expect(toUpperCase('hello')).toBe('HELLO');
    });
    
    ```
    
    **Erklärung:** Der Test prüft, ob die `toUpperCase`-Funktion `"hello"` korrekt in `"HELLO"` umwandelt.
    

### **Level 3: Unit Tests mit Funktionen aus anderen Dateien**

### **Beispiele:**

1. **Funktion zur Berechnung der FlächeDatei: `mathFunctions.js`**
    
    ```JavaScript
    // Definiert die Funktion zum Multiplizieren von zwei Zahlen
    function multiply(a, b) {
      return a * b;
    }
    module.exports = { multiply };
    
    ```
    
    **Erklärung:** Die Funktion `multiply` wird definiert, um zwei Zahlen zu multiplizieren. Sie wird exportiert, damit sie in anderen Dateien verwendet werden kann.
    
    **Datei: `mathOperations.js`**
    
    ```JavaScript
    // Importiert die Funktion multiply aus mathFunctions.js
    const mathFunctions = require('./mathFunctions');
    
    // Berechnet die Fläche durch Multiplikation von Länge und Breite
    function calculateArea(length, width) {
      return mathFunctions.multiply(length, width);
    }
    
    module.exports = { calculateArea };
    
    ```
    
    **Erklärung:** Die `multiply`-Funktion wird in `mathOperations.js` importiert und verwendet, um die Fläche zu berechnen.
    
    **Testdatei: `mathOperations.test.js`**
    
    ```JavaScript
    const { calculateArea } = require('./mathOperations');
    
    test('calculateArea(5, 4) sollte 20 sein', () => {
      expect(calculateArea(5, 4)).toBe(20);
    });
    
    ```
    
    **Erklärung:** Der Test überprüft, ob die Funktion `calculateArea` die Fläche korrekt berechnet, indem sie die Funktion `multiply` verwendet.
    
2. **Funktion zur Validierung von Benutzereingaben testenDatei: `validation.js`**
    
    ```JavaScript
    function isValidEmail(email) {
      return email.includes('@');
    }
    module.exports = { isValidEmail };
    
    ```
    
    **Erklärung:** Die Funktion `isValidEmail` überprüft, ob eine gegebene E-Mail-Adresse ein "@"-Zeichen enthält.
    
    **Datei: `user.js`**
    
    ```JavaScript
    const { isValidEmail } = require('./validation');
    
    function createUser(email) {
      if (!isValidEmail(email)) throw new Error('Ungültige E-Mail');
      return { email };
    }
    module.exports = { createUser };
    
    ```
    
    **Erklärung:** Die `createUser`-Funktion verwendet `isValidEmail`, um zu überprüfen, ob eine gegebene E-Mail gültig ist.
    
    **Testdatei: `user.test.js`**
    
    ```JavaScript
    const { createUser } = require('./user');

	describe("User überprüfung", () => {
    
    test('createUser sollte eine gültige E-Mail akzeptieren', () => {
      expect(createUser('test@example.com')).toEqual({ email: 'test@example.com'   });
    });
    
    test('createUser sollte eine ungültige E-Mail ablehnen', () => {
    expect(() => createUser('invalidEmail')).toThrow('Ungültige E-Mail');
    });

	})
    
    ```

---
### Synonyme Funktionen: `it` und `test`

In Jest sind die Funktionen `it` und `test` synonym und können austauschbar verwendet werden. Beide Funktionen dienen dazu, einen einzelnen Testfall zu definieren.

#### Beispiele:

```javascript
// Verwendung von `test`
test("should return true for valid input", () => {
  const input = true;
  expect(input).toBe(true);
});

// Verwendung von `it`
it("should return true for valid input", () => {
  const input = true;
  expect(input).toBe(true);
});
```

Beide Tests machen dasselbe: Sie prüfen, ob der `input`-Wert `true` ist.

### Test-Suffixe in Jest

In Jest können spezielle Suffixe an `test` und `describe` angehängt werden, um die Testausführung zu steuern:

1. **`.only`**: Führt nur diesen spezifischen Test oder alle Tests in einem Block aus.

   ```javascript
   // Nur dieser Test wird ausgeführt
   test.only("should run only this test", () => {
     expect(2 + 2).toBe(4);
   });

   describe.only("only this block will run", () => {
     test("should run this test", () => {
       expect(true).toBe(true);
     });
   });
   ```

2. **`.skip`**: Überspringt diesen Test oder Block.

   ```javascript
   // Dieser Test wird übersprungen
   test.skip("this test will be skipped", () => {
     expect(2 + 2).toBe(5); // Falscher Test, wird nicht ausgeführt
   });

   describe.skip("skip these tests", () => {
     test("this test will also be skipped", () => {
       expect(true).toBe(false); // Dieser Test wird übersprungen
     });
   });
   ```

3. **`.todo`**: Platzhalter für einen zukünftigen Test, der noch implementiert werden muss.

   ```javascript
   // Platzhalter für einen zukünftigen Test
   test.todo("should implement this test for edge cases");
   ```

4. **`.failing`**: Der Test schlägt fehl, wenn kein Fehler auftritt, und läuft erfolgreich durch, wenn ein Fehler auftritt.

   ```javascript
   test.failing("this test should fail unless an error is thrown", () => {
     throw new Error("This is an expected error");
   });
   ```

#### Zusammenfassung

- Verwende `.only`, um bestimmte Tests oder Blöcke gezielt auszuführen.
- Nutze `.skip`, um bestimmte Tests oder Blöcke zu überspringen.
- Verwende `.todo` für zukünftige Testimplementierungen.
- Setze `.failing` ein, um sicherzustellen, dass ein Test fehlschlägt, es sei denn, ein Fehler tritt auf.