# JavaScript Arrays und Funktionen Cheat Sheet

## Arrays

- **Definition:** Sammlung von Daten unter einem Namen, zugänglich über Indizes.
- **Erstellung:** `let meineZahlen = [10, 20, 30];`
- **Zugriff:** `let element = meineZahlen[0]; // Zugriff auf das erste Element`
- **Hinzufügen:** `meineZahlen.push(40); // Fügt '40' am Ende hinzu`
- **Entfernen:** `meineZahlen.pop(); // Entfernt das letzte Element`
- **Durchlaufen:**
```javascript
for (let i = 0; i < meineZahlen.length; i++) {
  console.log(meineZahlen[i]);
}
```

## Funktionen

- **Definition:** Wiederverwendbarer Codeblock, der eine spezifische Aufgabe ausführt.
- **Erstellung und Aufruf:**

```javascript
function sagHallo() {
  console.log("Hallo Welt!");
}
sagHallo(); // Ruft die Funktion auf
```

- **Mit Parametern:**

```javascript
function addiere(x, y) {
  return x + y;
}
let ergebnis = addiere(5, 3); // Gibt '8' zurück
```

- **Rückgabewert:**

```javascript
function berechneSumme(x, y) {
  return x + y;
}
let summe = berechneSumme(10, 5); // Rückgabe '15'
```

## Objekte

- **Definition:** Sammlung von Eigenschaften in geschweiften Klammern `{}`.
- **Erstellung:**

```javascript
let benutzer = {
  name: "Max",
  alter: 30,
  email: "test@test.de"
};
```

- **Zugriff und Modifikation:**

```javascript
let name = benutzer.name; // Zugriff auf 'name'
benutzer.name = "Moritz"; // Ändert 'name' zu 'Moritz'
```
