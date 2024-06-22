# JavaScript Callback-Funktionen

## Was sind Callback-Funktionen?

> *A callback is a function passed as an argument to another function.* [w3Schools](https://www.w3schools.com/js/js_callback.asp)

- Callback-Funktionen sind Funktionen in JavaScript, die als Parameter an eine andere Funktion übergeben werden und später aufgerufen werden können. Sie werden häufig verwendet, um asynchrone Operationen zu behandeln oder um Code modularer und wiederverwendbarer zu machen.

- Stell dir vor, du beauftragst einen Handwerker, ein Möbelstück für dich zu bauen. Anstatt darauf zu warten, dass der Handwerker fertig ist, kannst du in der Zwischenzeit andere Dinge erledigen. Sobald der Handwerker fertig ist, ruft er dich an und informiert dich über die Fertigstellung des Möbelstücks. In diesem Beispiel ist der Anruf des Handwerkers das Äquivalent zu einer Callback-Funktion, die aufgerufen wird, sobald eine bestimmte Aufgabe abgeschlossen ist.

## Wieso gibt es Callback-Funktionen?

- Callback-Funktionen ermöglichen es, Code asynchron auszuführen, anstatt ihn blockierend zu machen. Sie werden verwendet, um auf das Ergebnis einer asynchronen Operation zu reagieren oder um eine Funktion nach Abschluss einer bestimmten Aufgabe auszuführen.

## Wie funktionieren Callback-Funktionen?

- Eine Callback-Funktion wird als Parameter an eine andere Funktion übergeben und von dieser Funktion aufgerufen, sobald eine bestimmte Bedingung oder Aktion erfüllt ist.
- Die übergebene Callback-Funktion kann entweder vordefiniert sein oder als anonyme Funktion direkt übergeben werden.

## Beispiel für die Verwendung von Callback-Funktionen:

### Event Listener

- Ein Beispiel, was wir schon kennengelernt haben, ist die Verwendung von Event-Listenern in JavaScript. Hier wird eine Callback-Funktion an die `addEventListener`-Methode übergeben, um auf ein bestimmtes Ereignis zu reagieren.

- Im folgenden Beispiel wird die Callback-Funktion `callback` aufgerufen, wenn der Button mit der ID `button` geklickt wird.

```javascript
const button = document.getElementById('button');

function callback() {
    console.log('Button wurde geklickt');
}
button.addEventListener('click', callback);
```

- Das Schema kann aber auch in ganz vielen Szenarien verwendet werden
- Im nächsten Beispiel haben wir eine Funktion `asyncOperation`, die eine Aktion simulieren soll die länger dauert (z.B. Netzwerkzugriff, Dateizugriff, Datenbank)
- Die Funktion `asyncOperation` bekommt als Argument eine Callback-Funktion übergeben, die aufgerufen wird, sobald die asynchrone Operation abgeschlossen ist.

```javascript
function asyncOperation(callback) {
    setTimeout(() => {
        const result = 42;
        callback(result);
    }, 1000);
}

function handleResult(result) {
    console.log('Ergebnis:', result);
}

asyncOperation(handleResult);
```

## Häufige Anwendungsgebiete von Callback-Funktionen:

- Behandlung von asynchronen Operationen wie Datei- oder Netzwerkzugriffen.
- Event-Handler für Benutzerinteraktionen wie Mausklicks oder Tastatureingaben.
- Verwendung in Higher-Order-Funktionen wie Array-Methoden (z.B. forEach, map, filter), um benutzerdefinierte Logik auf jedes Element anzuwenden.
