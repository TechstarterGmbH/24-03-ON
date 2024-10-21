<img src="Techstarter.svg" style="height: 50px; width: auto">

# Einführung in Node.js

#### Installation von Node.js
Node.js ist eine JavaScript-Laufzeitumgebung, die es ermöglicht, JavaScript außerhalb eines Browsers auszuführen. Die Installation von Node.js ist der erste Schritt, um mit der Entwicklung von serverseitigen Anwendungen in JavaScript zu beginnen.

##### Schritt 1: Node.js herunterladen
1. Besuche die [offizielle Node.js-Website](https://nodejs.org/).
2. Lade die empfohlene LTS-Version (Long Term Support) herunter, um eine stabile Version zu erhalten.

##### Schritt 2: Node.js installieren

- Führe das heruntergeladene Installationsprogramm aus und folge den Anweisungen auf dem Bildschirm.


##### Überprüfen der Installation
Nach der Installation kannst du überprüfen, ob Node.js und npm (Node Package Manager) erfolgreich installiert wurden, indem du folgende Befehle in der Kommandozeile eingibst:
```bash
node -v
```
Dieser Befehl sollte die Versionen von Node.js anzeigen.

#### Beispiele

##### REPL (Read-Eval-Print Loop) in Node.js

###### Beispiel 1: Einfache mathematische Operationen im REPL

Im REPL-Modus können wir direkt mathematische Operationen ausführen und das Ergebnis sofort sehen.

1. Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
2. Starte den REPL-Modus, indem du einfach `node` eingibst und Enter drückst.

```bash
$ node
> 5 + 10
15
> 20 * 3
60
> Math.pow(2, 5) // Berechnet 2 hoch 5
32
> // Du kannst direkt JavaScript-Ausdrücke eingeben und sie werden sofort ausgewertet
```

##### Beispiel 2: Verwendung von Variablen im REPL

Du kannst Variablen definieren und sie im REPL-Modus verwenden.

1. Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
2. Starte den REPL-Modus.

```bash
$ node
> let name = "Max Mustermann"
undefined
> name
'Max Mustermann'
> let age = 30
undefined
> age
30
> `Hallo, mein Name ist ${name} und ich bin ${age} Jahre alt.`
'Hallo, mein Name ist Max Mustermann und ich bin 30 Jahre alt.'
> // Hier kannst du Variablen definieren und ihre Werte anzeigen lassen
```

Im REPL-Modus kannst du interaktiv mit JavaScript arbeiten, Variablen definieren, Funktionen ausprobieren und sofort sehen, wie sie funktionieren. Das macht den REPL-Modus zu einem praktischen Werkzeug zum Experimentieren und zum schnellen Testen von Code-Snippets.


#### Einfache Ausführung von Scripts
Mit Node.js kannst du JavaScript-Dateien direkt von der Kommandozeile ausführen.

##### 1. Konsolenausgabe

Ein einfaches Node.js-Programm, das deinen Namen in der Konsole ausgibt.

```javascript
// Speichere diesen Code in einer Datei namens 'printName.js'
console.log("Dein Name");
```

- **Ausführung:**
  - Speichere den obigen Code in einer Datei namens `printName.js`.
  - Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
  - Navigiere zum Speicherort der Datei `printName.js`.
  - Führe den Befehl `node printName.js` aus, um den Code auszuführen und `"Dein Name"` in der Konsole auszugeben.

##### 2. Einfache Arithmetik

Ein Node.js-Programm, das zwei Zahlen addiert und das Ergebnis in der Konsole ausgibt.

```javascript
// Speichere diesen Code in einer Datei namens 'addNumbers.js'
let num1 = 5;
let num2 = 10;
let sum = num1 + num2;
console.log(`Die Summe von ${num1} und ${num2} ist ${sum}`);
```

- **Ausführung:**
  - Speichere den obigen Code in einer Datei namens `addNumbers.js`.
  - Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
  - Navigiere zum Speicherort der Datei `addNumbers.js`.
  - Führe den Befehl `node addNumbers.js` aus, um den Code auszuführen und die Summe der Zahlen in der Konsole auszugeben.


##### 3. Benutzereingabe

Ein Node.js-Programm, das den Benutzer nach seinem Namen fragt und diesen dann in der Konsole ausgibt.

- **Code und Erklärung:**

```javascript
// Speichere diesen Code in einer Datei namens 'askName.js'
const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

rl.question('Wie heißt du? ', name => {
    console.log(`Hallo, ${name}`);
    rl.close();
})
```

- **Erklärung:**
  - Der Code verwendet das `readline`-Modul, das in Node.js integriert ist, um Benutzereingaben über die Konsole zu verarbeiten.
  - `readline.createInterface()` wird verwendet, um eine neue readline-Schnittstelle zu erstellen, die auf `process.stdin` (Standard-Eingabe) und `process.stdout` (Standard-Ausgabe) zugreift.
  - `readline.question()` fragt den Benutzer nach seinem Namen und führt die übergebene Callback-Funktion aus, wenn der Benutzer seine Eingabe abgeschlossen hat.
  - Innerhalb der Callback-Funktion wird die eingegebene `name`-Variable verwendet, um eine personalisierte Begrüßung in der Konsole auszugeben.
  - `readline.close()` wird aufgerufen, um die readline-Schnittstelle nach Abschluss der Eingabe zu schließen.

- **Ausführung:**
  - Speichere den obigen Code in einer Datei namens `askName.js`.
  - Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
  - Navigiere zum Speicherort der Datei `askName.js`.
  - Führe den Befehl `node askName.js` aus.
  - Das Programm wird nach deinem Namen fragen. Gib deinen Namen ein und drücke Enter. Anschließend wird eine personalisierte Begrüßung in der Konsole ausgegeben.

##### 4. Lesen einer Datei

Ein Node.js-Programm, das den Inhalt einer Datei `example.txt` liest und in der Konsole ausgibt.

- **Code und Erklärung:**

```javascript
// Speichere diesen Code in einer Datei namens 'readFile.js'
const fs = require('fs');

fs.readFile('example.txt', 'utf8', (err, data) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log(data);
});
```

- **Erklärung:**
  - Der Code verwendet das `fs` (File System)-Modul von Node.js, um Dateioperationen durchzuführen.
  - `fs.readFile()` liest den Inhalt der Datei `example.txt` im UTF-8 Format.
  - Die übergebene Callback-Funktion wird ausgeführt, sobald das Lesen abgeschlossen ist. Wenn ein Fehler auftritt, wird dieser in der Konsole ausgegeben.
  - `data` enthält den Inhalt der Datei `example.txt`, der dann mit `console.log()` in der Konsole ausgegeben wird.

- **Vorbereitung:**
  - Erstelle eine Datei namens `example.txt` und fülle sie mit beliebigem Textinhalt.

- **Ausführung:**
  - Speichere den obigen Code in einer Datei namens `readFile.js`.
  - Stelle sicher, dass die Datei `example.txt` im gleichen Verzeichnis wie `readFile.js` liegt oder passe den Pfad entsprechend an.
  - Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
  - Navigiere zum Speicherort der Datei `readFile.js`.
  - Führe den Befehl `node readFile.js` aus.
  - Der Inhalt der Datei `example.txt` wird in der Konsole ausgegeben.

##### 5. Schreiben in eine Datei

Ein Node.js-Programm, das eine Nachricht in eine Datei `message.txt` schreibt.

- **Code und Erklärung:**

```javascript
// Speichere diesen Code in einer Datei namens 'writeFile.js'
const fs = require('fs');

const message = 'Das ist eine Nachricht, die in die Datei geschrieben wird.';

fs.writeFile('message.txt', message, err => {
  if (err) {
    console.error(err);
    return;
  }
  console.log('Nachricht wurde in die Datei geschrieben!');
});
```

- **Erklärung:**
  - Der Code verwendet das `fs` (File System)-Modul von Node.js, um Dateioperationen durchzuführen.
  - `fs.writeFile()` schreibt den Inhalt der Variable `message` in die Datei `message.txt`.
  - Die übergebene Callback-Funktion wird ausgeführt, sobald das Schreiben abgeschlossen ist. Im Fehlerfall wird der Fehler in der Konsole ausgegeben.
  - Eine Bestätigung wird mit `console.log()` ausgegeben, wenn das Schreiben erfolgreich war.

- **Ausführung:**
  - Speichere den obigen Code in einer Datei namens `writeFile.js`.
  - Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
  - Navigiere zum Speicherort der Datei `writeFile.js`.
  - Führe den Befehl `node writeFile.js` aus.
  - Die Nachricht wird in die Datei `message.txt` geschrieben, und eine Bestätigung wird in der Konsole ausgegeben.

##### 6. Einfacher Timer

Ein Node.js-Programm, das eine Nachricht nach einer bestimmten Zeit (z.B. 3 Sekunden) in der Konsole ausgibt.

- **Code und Erklärung:**

```javascript
// Speichere diesen Code in einer Datei namens 'simpleTimer.js'
console.log('Warte 3 Sekunden...');

setTimeout(() => {
  console.log('3 Sekunden sind vergangen!');
}, 3000);
```

- **Erklärung:**
  - `setTimeout()` ist eine Funktion, die eine Callback-Funktion nach einer bestimmten Verzögerungszeit ausführt.
  - Der erste Parameter von `setTimeout()` ist die Callback-Funktion, die nach Ablauf der Verzögerung ausgeführt wird.
  - Der zweite Parameter ist die Zeit in Millisekunden, nach der die Callback-Funktion ausgeführt werden soll (hier 3000 für 3 Sekunden).
  - Im obigen Beispiel wird zuerst die Nachricht `'Warte 3 Sekunden...'` in der Konsole ausgegeben. Nach 3 Sekunden wird die Nachricht `'3 Sekunden sind vergangen!'` ausgegeben.

- **Ausführung:**
  - Speichere den obigen Code in einer Datei namens `simpleTimer.js`.
  - Öffne dein Terminal oder die Node.js-Entwicklungsumgebung.
  - Navigiere zum Speicherort der Datei `simpleTimer.js`.
  - Führe den Befehl `node simpleTimer.js` aus.
  - Die Ausgaben werden entsprechend der beschriebenen Verzögerung in der Konsole erscheinen.

**Warum benötige ich hier kein require?**

In Node.js gibt es bestimmte Module, die automatisch verfügbar sind, ohne dass sie explizit mit `require` eingebunden werden müssen. Ein gutes Beispiel hierfür ist das `setTimeout`-Modul, das du erwähnt hast. Warum ist das so?

Node.js ist darauf ausgelegt, eine Reihe von globalen Objekten und Funktionen bereitzustellen, die häufig benötigt werden, ohne dass sie explizit importiert werden müssen. Diese sind im globalen Scope verfügbar, sobald die Node.js-Laufzeit gestartet wird. Dazu gehören Funktionen wie `setTimeout`, `setInterval`, `console`, `process`, und einige andere, die spezifisch für Node.js-Funktionalitäten sind.

#### NPM (Node Package Manager)

NPM (Node Package Manager) ist ein Werkzeug, das es ermöglicht, Bibliotheken und Pakete zu verwalten, die du in deinen Node.js-Projekten verwendest.

npm steht für "Node Package Manager" und ist ein zentrales Tool im Ökosystem von Node.js, einer JavaScript-Laufzeitumgebung, die es ermöglicht, JavaScript außerhalb des Webbrowsers auszuführen. npm erfüllt mehrere wichtige Funktionen:

1. **Paketverwaltung**: npm verwaltet Bibliotheken und Abhängigkeiten, die für die Entwicklung von Node.js-Anwendungen erforderlich sind. Entwickler können Pakete (auch Module genannt) suchen, installieren, aktualisieren und entfernen.

2. **Paketregistrierung**: Die npm-Registry ist eine riesige Datenbank von Open-Source-Paketen, die Entwickler hochladen und teilen können. Dies erleichtert die Wiederverwendung von Code und fördert die Zusammenarbeit in der Entwicklergemeinschaft.

3. **Versionierung und Abhängigkeiten**: npm hilft bei der Verwaltung von Paketversionen und ihren Abhängigkeiten. Dies gewährleistet, dass Anwendungen konsistent bleiben und Konflikte zwischen unterschiedlichen Paketversionen vermieden werden.
  
- **package.json**: Eine Datei im Stammverzeichnis eines Node.js-Projekts, die Metadaten über das Projekt enthält, einschließlich der Projektbeschreibung, Version, Abhängigkeiten und Skripte, die ausgeführt werden können.

##### Beispiel für grundlegende npm-Befehle:

- `npm init`: Initialisiert ein neues Node.js-Projekt und erstellt eine `package.json`-Datei.


##### Initialisieren eines neuen Projekts
1. Öffne ein Terminal oder eine Kommandozeile und navigiere zu dem Verzeichnis, in dem du dein Projekt erstellen möchtest.
2. Führe den folgenden Befehl aus:
    ```
    npm init
    ```
3. Beantworte die Fragen, die npm dir stellt (wie den Namen des Projekts, die Version, die Beschreibung usw.). Wenn du die Standardwerte verwenden möchtest, kannst du einfach `Enter` drücken.
4. Am Ende dieses Prozesses wird eine `package.json`-Datei in deinem Projektverzeichnis erstellt. Diese Datei enthält Metadaten über dein Projekt und die Abhängigkeiten, die du hinzufügen möchtest.

##### Beispielhafte `package.json`
```json
{
  "name": "mein-projekt",
  "version": "1.0.0",
  "description": "Ein einfaches Node.js-Projekt",
  "main": "app.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}
```

#### Zusammenfassung
- Node.js ist eine leistungsstarke Laufzeitumgebung für die Ausführung von JavaScript außerhalb des Browsers.
- Die Installation von Node.js erfolgt über die offizielle Website oder den Paketmanager deines Betriebssystems.
- Mit Node.js können JavaScript-Skripte direkt in der Kommandozeile ausgeführt werden.
- NPM init erstellt eine `package.json`-Datei, die wichtige Informationen über dein Projekt und seine Abhängigkeiten enthält.

Jetzt bist du bereit, deine eigenen Node.js-Projekte zu erstellen und auszuführen!

