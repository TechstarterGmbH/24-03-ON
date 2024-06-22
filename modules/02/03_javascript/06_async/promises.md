# JavaScript Promises

## Was sind Promises?

- Promises sind ein asynchrones Programmiermuster in JavaScript, das es ermöglicht, mit asynchronen Operationen zu arbeiten und den Code lesbarer und besser handhabbar zu machen.

> *Das Konzept von JavaScript sieht keinerlei Nebenläufigkeit vor. Es gibt nur einen Hauptverarbeitungsstrang (Thread), und auf diesem Strang müssen alle anfallenden Aufgaben erledigt werden. Es gibt aber auch Aufgaben, die Zeit benötigen, wie z. B. ein fetch-Request oder auch länger laufende interne Operationen. Würde ein JavaScript Programm auf die Fertigstellung dieser Aufgaben warten, dann würden bis dahin keine weiteren Aufgaben mehr erledigt werden. Das betrifft vor allem die Verarbeitung von GUI-Ereignissen wie click oder input. Für den Anwender sieht es so aus, als wäre das Programm träge oder würde sogar hängenbleiben.* [selfHTML](https://wiki.selfhtml.org/wiki/JavaScript/Objekte/Promise)

- Oft würde eine Callback Funktion den Code nur verschachteln und unübersichtlich machen. **Promises lösen dieses Problem, indem sie eine klare und strukturierte Möglichkeit bieten, asynchrone Operationen zu handhaben**.

- Promise heißt übersetzt "Versprechen" und repräsentiert den eventuellen Abschluss einer asynchronen Operation. Ein Promise kann entweder erfolgreich erfüllt (resolved) oder abgelehnt (rejected) werden.

## Wie funktionieren Promises?

- Promises repräsentieren den eventuellen Abschluss einer asynchronen Operation und haben drei Zustände:
  - **pending (ausstehend)**
  - **fulfilled (erfüllt)**
  - **rejected (abgelehnt)**

### Wie erstellt man eine Promise

- Ein Promise wird mit dem `new Promise()`-Konstruktor erstellt, der eine Funktion als Parameter akzeptiert.
- Diese Funktion hat zwei Parameter: `resolve` und `reject`, die verwendet werden, um den Erfolg oder Misserfolg des Promises zu steuern.
- Normalerweise wird hier die `Arrow Function` Syntax verwendet, um die Funktion zu definieren.

```javascript

const promise = new Promise((resolve, reject) => {
    // Hier wird die asynchrone Operation durchgeführt
    // z.B. Netzwerkzugriff, Dateizugriff, Datenbankabfrage
    // Wenn die Operation erfolgreich ist, wird resolve aufgerufen
    // Wenn die Operation fehlschlägt, wird reject aufgerufen
});

```

- Es kann aber auch eine normale Funktion verwendet werden:

```javascript

const promise = new Promise(function(resolve, reject) {
  resolve('Erfolg');
});

```

- Der Code, der auf das Ergebnis des Promises warten soll, kann mit Hilfe von `.then()` und `.catch()` an die Promise-Instanz angehängt werden.
- `.then()` wird verwendet, um Code auszuführen, wenn das Promise erfolgreich erfüllt wurde.
- `.catch()` wird verwendet, um Code auszuführen, wenn das Promise abgelehnt wurde.
- Dabei kann ein Muster verwendet werden, das als `Chaining` bezeichnet wird.
  - Das bedeutet, dass mehrere `.then()` und `.catch()` Methoden hintereinander aufgerufen werden können.

```javascript
const promise = new Promise(function(resolve, reject) {
  resolve('Erfolg');

});

promise
    .then(result => {
        console.log('Erfolgreich:', result);
    })
    .catch(error => {
        console.log('Fehler:', error);
    });
// Ausgabe: Erfolgreich: Erfolg

```

### Beispiel für die Verwendung von Promises

```javascript
const promise = new Promise((resolve, reject) => {
    // Um eine asynchrone Operation zu simulieren, verwenden wir setTimeout
    setTimeout(() => {
      const success = true;
      if (success) {
        resolve('Erfolg');
      } else {
        reject(new Error('Fehler'));
      }

    }, 1000);
});

promise
    .then(result => {
        console.log('Erfolgreich:', result);
    })
    .catch(error => {
        console.log('Fehler:', error.message);
    });
```

## Weitere Funktionen von Promises

- **.then()** wird verwendet, um Code auszuführen, wenn das Promise erfolgreich erfüllt wurde.
- **.catch()** wird verwendet, um Code auszuführen, wenn das Promise abgelehnt wurde.
- **.finally()** wird verwendet, um Code auszuführen, unabhängig davon, ob das Promise erfolgreich erfüllt oder abgelehnt wurde.
- **.all()** wird verwendet, um eine Liste von Promises zu übergeben und zu warten, bis alle Promises erfolgreich erfüllt wurden.
- **.race()** wird verwendet, um eine Liste von Promises zu übergeben und zu warten, bis eines der Promises erfüllt oder abgelehnt wurde.

## In der Praxis

- Viele wichtige JavaScript-APIs verwenden Promises, z.B. `fetch`, `setTimeout`, `setInterval`, `XMLHttpRequest`, `IndexedDB`, `Service Worker`, `Web Workers`, etc.
