# JavaScript Arrays und Funktionen

## Einführung in JavaScript Arrays

### Was ist ein Array?

- **Definition:** Ein Array ist eine Sammlung von Daten gleichen Typs, die unter einem gemeinsamen Namen gespeichert und über Indizes zugänglich sind.
- **Verwendungszweck:** Speicherung von Datensätzen, wie Listen von Benutzernamen oder Produktpreisen.
- **Metapher**: Ein Regal mit nummerierten Fächern, in denen Daten aufbewahrt werden.

### Arten von Arrays

- **Eindimensionale Arrays:** Eine einfache Liste von Elementen (z.B. Zahlen oder Strings).
- **Mehrdimensionale Arrays:** Arrays, die weitere Arrays enthalten, ähnlich einer Tabelle.

**Mehrdimensionale Arrays werden hier nur der Vollständigkeit halber erwähnt, aber nicht weiter behandelt.**

### Erstellen und Initialisieren von Arrays

- **Erstellen eines Arrays:** Verwendung von eckigen Klammern `[]`.
- Wie jede Variable muss ein Array deklariert werden, bevor es verwendet wird. (Hierfür wird entweder `let`, `const` oder `var` verwendet.)

```javascript
let meineZahlen = [10, 20, 30];
console.log(meineZahlen); // Gibt das gesamte Array aus
```

- **Initialisieren mit Werten:** Direktes Einsetzen der Werte bei der Erstellung.

### Zugriff auf Elemente eines Arrays

- **Indexbasiertes Zugreifen:** Jede Position im Array hat einen Index (Nummer), womit auf das Element zugegriffen wird.
- **Der erste Index eines Arrays ist 0!!!**

```javascript
let erstesElement = meineZahlen[0]; // Zugriff auf das Element '10'
console.log(erstesElement); // Gibt '10' aus
```

## Arbeiten mit Arrays

### Hinzufügen und Löschen von Elementen in einem Array

- **Hinzufügen am Ende:** `push()` fügt Elemente am Ende hinzu.

```javascript
meineZahlen.push(40); // Fügt '40' am Ende hinzu
console.log(meineZahlen); // [10, 20, 30, 40]
```

### Arrays durchlaufen mit Loops

- **Verwendung eines `for`-Loops:** Iterieren über jedes Element des Arrays.

```javascript
for (let i = 0; i < meineZahlen.length; i++) {
  console.log(meineZahlen[i]); // Gibt jedes Element aus
}
```

### Anwendungsbeispiele für Arrays

- **Speichern von Daten:** Listen von E-Mail-Adressen, Produkten oder Spielständen.
- **Datenmanipulation:** Sortieren, Filtern und Umwandeln von Daten.

## Einführung in Funktionen

### Was ist eine Funktion?

- **Definition:** Ein Block von Code, der eine spezifische Aufgabe ausführt und wiederholt verwendet werden kann.
- **Zweck:** Vermeidung von Code-Duplikation **DRY (Don't repeat yourself)**, Organisation des Codes in logische Blöcke.
- **Metapher**: Stell dir ein Kuchenrezept vor, das Schritte enthält, um einen Kuchen zu backen.

### Syntax und Struktur von Funktionen

- **Grundstruktur:** Das Schlüsselwort `function`, gefolgt von einem Namen und einem Codeblock.

```javascript
function sagHallo() {
  console.log("Hallo Welt!");
}
```

### Funktionen erstellen und aufrufen

- **Erstellen einer Funktion:** Definiere die Funktion mit Parametern und Code.
- **Aufrufen einer Funktion:** Verwenden des Funktionsnamens gefolgt von Klammern.

```javascript
sagHallo(); // Ruft die Funktion auf und gibt 'Hallo Welt!' aus
```

## Arbeiten mit Funktionen

### Funktionen mit Parametern

- **Parameterübergabe:** Funktionen können Daten über Parameter erhalten.

```javascript
function addiere(x, y) {
  const ergebnis = x + y;
  console.log(ergebnis);
}
```

### Funktionen mit Rückgabewert

- **Rückgabe von Werten:** Funktionen können Ergebnisse zurückgeben, die anderweitig verwendet werden.
- Nutze hierfür das Schlüsselwort `return`.

```javascript
function addiere(x, y) {
  const ergebnis = x + y;
  return ergebnis;
}

let ergebnis = addiere(5, 3); // Gibt '8' zurück
console.log(ergebnis); // Zeigt '8'
```

## Objekte in JavaScript

### Was ist ein Objekt?

- **Definition:** Ein Objekt ist eine Sammlung von Eigenschaften, die unter einem gemeinsamen Namen gespeichert
- **Verwendungszweck:** Speicherung von zusammengehörigen Daten, wie Benutzerinformationen oder Produktinformationen.

### Erstellen und Initialisieren von Objekten

- **Erstellen eines Objekts:** Verwendung von geschweiften Klammern `{}`.

```javascript
let benutzer = {
  name: "Max",
  alter: 30,
  email: "test@test.de"
};
console.log(benutzer); // Gibt das gesamte Objekt aus
```

- **Zugriff auf Eigenschaften:** Verwendung des Punktnotation `.` oder der Klammernotation `[]`.

```javascript
let benutzerName = benutzer.name; // Zugriff auf die Eigenschaft 'name'
console.log(benutzerName); // Gibt 'Max' aus

let benutzerAlter = benutzer["alter"]; // Zugriff auf die Eigenschaft 'alter'
console.log(benutzerAlter); // Gibt '30' aus

benutzer.name = "Moritz"; // Ändert den Wert der Eigenschaft 'name'
```
