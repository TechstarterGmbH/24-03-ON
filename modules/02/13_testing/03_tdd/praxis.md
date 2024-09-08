# Praxis

## Ziel

- Entwicklung einer Mathematik-Bibliothek
- Implementierung der Funktionen `add`, `subtract`, `multiply`, `divide`, `square`, `squareRoot`
- Schreiben von Tests für jede Funktion, bevor der Code geschrieben wird

## Schritte

1. Erstelle einen neuen Ordner und öffne diesen in deinem Editor
2. Initialisiere ein neues NPM Projekt
```bash
npm init -y
```

3. Installiere Jest als Dev-Dependency
```bash
npm install --save-dev jest
```

4. Erstelle das NPM Test-Script für Jest in der `package.json`
```json
{
  "scripts": {
    "test": "jest"
  }
}
```

5. Unsere Bibliothek wird sich in der Datei `math.js` befinden. Erstelle die Datei und füge folgenden Inhalt ein.
  - Die Funktionen sind definiert aber noch nicht implementiert

```javascript
function add(a, b) {

}

function subtract(a, b) {

}

function multiply(a, b) {

}

function divide(a, b) {

}

function square(a) {

}

function squareRoot(a) {

}

module.exports = {
  add,
  subtract,
  multiply,
  divide,
  square,
  squareRoot,
}
```

6. Erstelle die Test-Datei `math.test.js`
7. Als ertses müssen wir unsere Mathematik-Bibliothek importieren
```javascript
const math = require("./math")
```

8. Damit können wir unseren ersten Test für unsere `add` - Function schreiben
```javascript
describe("testing add function", () => {
  test("2 plus 2 is 4", () => {
    expect(math.add(2,2)).toBe(4);
  })
})
```

9. Jetzt können wir die Tests ausführen. Da wir den eigentlichen Code noch nicht geschrieben haben, failed der Test (Red Stage)
```bash
npm test
```

10. Jetzt können wir die `add` Function mit Leben füllen
```javascript
function add(a, b) {
  return a + b;
}
```

11. Wie sieht es mit negativen Zahlen aus?
```javascript
describe("testing add function", () => {
  test("2 plus 2 is 4", () => {
    expect(math.add(2,2)).toBe(4);
  })

  test("-2 plus -2 is -4", () => {
    expect(math.add(-2,-2)).toBe(-4);
  })

})
```

```bash
npm test
```

12. Man sollte auch immer einen Fehler-Case abdecken. Unsere Math Library soll nur mit Zahlen umgehen. Was passiert wenn wir Strings oder Undefined übergeben? Wir erwarten einen Fehler
```javascript
describe("testing add function", () => {
  test("2 plus 2 is 4", () => {
    expect(math.add(2,2)).toBe(4);
  })

  test("-2 plus -2 is -4", () => {
    expect(math.add(-2,-2)).toBe(-4);
  })

  test("'a' plus 'b' should throw error", () => {
    expect(() => math.add("a", "b")).toThrow()
  })

  test("undefined plus undefined should throw error", () => {
    expect(() => math.add(undefined, undefined)).toThrow()
  })
})
```

- **Es ist wichtig immer verschiedene Szenarien zu testen! Überlege dir immer wo sollen Fehler auftreten und teste diese Fälle gesondert**

13. Unsere Funktion behandelt strings gerade noch ohne Probleme, daher müssen wir die Logik erweitern
```javascript

function failIfNotANumber(args) {
  for (let i = 0; i < args.length; i++) {
    const val = args[i];
    if (typeof val !== "number") {
      throw new Error(`Argument ${val} is not a number`)
    }
  }
}

function add(a, b) {
  failIfNotANumber([a, b])
  return a + b;
}
```

14. Wir testen die `subtract`-Function:
```javascript
describe("testing subtract function", () => {
  test("2 minus 2 is 0", () => {
    expect(math.subtract(2, 2)).toBe(0)
  })

  test("-2 minus -2 is 0", () => {
    expect(math.subtract(-2, -2)).toBe(0)
  })

  test("undefined minus 'a' should throw", () => {
    expect(() => math.subtract(undefined, "a")).toThrow()
  })
})
```

```bash
npm test
```

15. Wir schreiben den Inhalt der Funktion
```javascript

function subtract(a, b) {
  failIfNotANumber([a, b])
  return a - b;
}
```

```bash
npm test
```
- Jetzt sollten alle Tests grün sein

16. Wir testen `multiply`
```javascript

describe("testing multiply function", () => {
  test("2 times 2 is 4", () => {
    expect(math.multiply(2, 2)).toBe(4)
  })

  test("-2 times 2 is -4", () => {
    expect(math.multiply(-2, 2)).toBe(-4)
  })

  test("undefined times 'a' should throw", () => {
    expect(() => math.multiply(undefined, "a")).toThrow()
  })
})
```

- Und dann den Inhalt:

```javascript
function multiply(a, b) {
  failIfNotANumber([a, b])
  return a * b;
}
```

17. Und jetzt die `divide`-Function
```javascript
describe("testing divide function", () => {
  test("2 divided by 2 is 1", () => {
    expect(math.divide(2, 2)).toBe(1)
  })

  test("-2 divided 2 is -1", () => {
    expect(math.divide(-2, 2)).toBe(-1)
  })

  test("undefined times 'a' should throw", () => {
    expect(() => math.divide(undefined, "a")).toThrow()
  })
})
```

- Und der Inhalt:
```javascript
function divide(a, b) {
  failIfNotANumber([a, b])
  return a / b;
}
```

18. Und jetzt die `square`-Function
```javascript
describe("testing square function", () => {
  test("2 square is 4", () => {
    expect(math.square(2)).toBe(4)
  })

  test("-2 square is 4", () => {
    expect(math.square(-2)).toBe(4)
  })

  test("undefined square should throw", () => {
    expect(() => math.square(undefined)).toThrow()
  })
})
```

- Und der Inhalt:
```javascript
function square(a) {
  failIfNotANumber([a])
  return a * a;
}
```

19. Und zu letzt die `squareRoot`-Function
- Hier ist es wichtig, das wir ohne komplexe Mathematik keine Wurzel aus negativen Zahlen ziehen können.
- Daher sollten wir einen Test-Case erstellen der überprüft ob wir bei negativen Zahlen einen Fehler bekommen.
```javascript
describe("testing squareRoot function", () => {
  test("squareRoot of 4 is 2", () => {
    expect(math.squareRoot(4)).toBe(2)
  })

  test("squareRoot of -4 should throw", () => {
    expect(() => math.squareRoot(-4)).toThrow()
  })

  test("undefined square should throw", () => {
    expect(() => math.square(undefined)).toThrow()
  })
})
```

- Und der Code:
```javascript
function squareRoot(a) {
  failIfNotANumber([a])
  if (a < 0) {
    throw new Error("Can't get squareRoot of negative number");
  }
  return Math.sqrt(a);
}
```
