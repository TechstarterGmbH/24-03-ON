# If-Bedingungen

In JavaScript können wir Aktionen abhängig von bestimmten Bedingungen ausführen. Dafür verwenden wir sogenannte If-Bedingungen.

## If-Bedingung

Die einfachste Form einer If-Bedingung sieht so aus:

```javascript

if (bedingung) {
  // Code, der ausgeführt wird, wenn die Bedingung wahr ist
}

```

Diese Art von Bediung nennt man auch Boolean-Expression. Sie prüft, ob die Bedingung wahr ist. Wenn sie wahr ist, wird der Code innerhalb der geschweiften Klammern ausgeführt.
Man kann aber auch Variablen direkt einen Boolean-Wert zuweisen:

**Boolsche Werte sind entweder `true` oder `false`.**

```javascript

let isTrue = true;

if (isTrue) {
  console.log('Die Bedingung ist wahr');
}

```

## Else-Beding

Wenn die Bedingung nicht wahr ist, können wir einen alternativen Codeblock ausführen. Dafür verwenden wir das `else`-Statement.

```javascript
if (bedingung) {
  // Code, der ausgeführt wird, wenn die Bedingung wahr ist
} else {
  // Code, der ausgeführt wird, wenn die Bedingung falsch ist
}
```

## Else-If-Bedingung

Manchmal möchten wir mehrere Bedingungen prüfen. Dafür verwenden wir das `else if`-Statement.

```javascript
if (bedingung1) {
  // Code, der ausgeführt wird, wenn die Bedingung1 wahr ist
} else if (bedingung2) {
  // Code, der ausgeführt wird, wenn die Bedingung2 wahr ist
} else {
  // Code, der ausgeführt wird, wenn keine der Bedingungen wahr ist
}
```

## Wie kann man verschiedene Werte vergleichen?

In JavaScript gibt es verschiedene Operatoren, um Werte zu vergleichen. Hier sind die wichtigsten:

- `==` - prüft, ob zwei Werte gleich sind
- `!=` - prüft, ob zwei Werte ungleich sind
- `===` - prüft, ob zwei Werte gleich sind und ob sie den gleichen Typ haben
- `!==` - prüft, ob zwei Werte ungleich sind oder ob sie unterschiedliche Typen haben
- `>` - prüft, ob der linke Wert größer ist als der rechte Wert
- `<` - prüft, ob der linke Wert kleiner ist als der rechte Wert
- `>=` - prüft, ob der linke Wert größer oder gleich dem rechten Wert ist
- `<=` - prüft, ob der linke Wert kleiner oder gleich dem rechten Wert ist
- `&&` - logisches UND (beide Bedingungen müssen wahr sein)
- `||` - logisches ODER (mindestens eine der Bedingungen muss wahr sein)

## Beispiel

```javascript

let x = 10;
let y = 20;

if (x == y) {
  console.log('x ist gleich y');
} else if (x > y) {
  console.log('x ist größer als y');
} else {
  console.log('x ist kleiner als y');
}


if (x == 10 && y == 20) {
  console.log('x ist 10 und y ist 20');
}
```
