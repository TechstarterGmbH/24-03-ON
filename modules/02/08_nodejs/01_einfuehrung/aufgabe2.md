<img src="Techstarter.svg" style="height: 50px; width: auto">

# Aufgabe2

Schreibe ein Node.js-Programm, das:

1. Den Benutzer nach dem Namen des zu erstellenden Ordners fragt.
2. Den Benutzer nach einer Nachricht fragt, die in eine Datei (`message.txt`) innerhalb dieses Ordners gespeichert werden soll.
3. Den Ordner mit dem angegebenen Namen erstellt.
4. Die eingegebene Nachricht in die Datei `message.txt` innerhalb des erstellten Ordners speichert.

### Anforderungen:

- Das Programm soll mithilfe von Node.js geschrieben werden.
- Verwende das `fs` (File System)-Modul von Node.js für Dateioperationen.
- Nutze das `readline`-Modul von Node.js, um Benutzereingaben über die Konsole zu verarbeiten.

### Hinweise:

- Stelle sicher, dass der Benutzer den Ordnername und die Nachricht eingeben kann.
- Handle Fehler, die beim Erstellen des Ordners oder beim Schreiben der Datei auftreten können.
- Gib eine Erfolgsmeldung aus, wenn der Ordner und die Datei erfolgreich erstellt und die Nachricht gespeichert wurden.

### Beispiel für den Ablauf:

1. Benutzer gibt den Namen des Ordners ein: `MeinOrdner`.
2. Benutzer gibt die Nachricht ein, die gespeichert werden soll: `Hallo Welt!`.
3. Das Programm erstellt den Ordner `MeinOrdner` und speichert die Nachricht in der Datei `message.txt` innerhalb dieses Ordners.

Um die Aufgabe des Ordnererstellens in Node.js zu lösen, kannst du die `fs.mkdir` Funktion verwenden. Hier ist ein Hinweis darauf, wie diese Funktion genutzt werden kann:

### Hinweis zur Verwendung von `fs.mkdir`

Die Funktion `fs.mkdir` wird verwendet, um einen neuen Ordner im Dateisystem zu erstellen. Sie hat die folgende Struktur:

```javascript
fs.mkdir(path, callback)
```

- `path`: Der Pfad des zu erstellenden Ordners.
- `callback`: Eine Callback-Funktion, die aufgerufen wird, nachdem der Vorgang abgeschlossen ist. Sie erhält einen Fehler (`err`) als ersten Parameter, falls ein Fehler auftritt.

Hier ist ein Beispiel, wie du `fs.mkdir` verwenden kannst, um einen Ordner zu erstellen:

```javascript
const fs = require('fs');

const folderName = 'MeinOrdner';

fs.mkdir(folderName, (err) => {
  if (err) {
    console.error('Fehler beim Erstellen des Ordners:', err);
    return;
  }
  console.log(`Der Ordner '${folderName}' wurde erfolgreich erstellt.`);
});
```

### Erläuterung des Beispiels:

1. `fs.mkdir('MeinOrdner', callback)`: Diese Zeile ruft `fs.mkdir` auf, um den Ordner `MeinOrdner` zu erstellen. 
   
2. `callback(err)`: Die Callback-Funktion wird nach dem Versuch, den Ordner zu erstellen, aufgerufen. `err` enthält einen Fehler, falls etwas schief geht, andernfalls ist es `null`.

