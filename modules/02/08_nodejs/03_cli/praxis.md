# Node Js Command Line Application

## Ziel

Ziel dieser Aufgabe wird es eine Terminal Anwendung zu erstellen, die es ermöglicht zufällige Zitate zu generieren und anzuzeigen.
In einem späteren Schritt soll es auch möglich sein nach Autoren zu filtern und die Zitate als Textdatei abzuspeichern.

## Zitat APIs

Es können folgende APIs genutzt werden um Zitate zu erhalten:
- [https://api.breakingbadquotes.xyz/v1/quotes](https://api.breakingbadquotes.xyz/v1/quotes)
- [https://api.gameofthronesquotes.xyz/v1/random](https://api.gameofthronesquotes.xyz/v1/random)
- [https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand](https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand)
- [https://ron-swanson-quotes.herokuapp.com/v2/quotes](https://ron-swanson-quotes.herokuapp.com/v2/quotes)

## Schritte

1. Erstelle einen neuen Ordner für dein Projekt und initialisiere ein neues Node.js Projekt mit `npm init`.
2. Erstelle eine app.js Datei
3. Entscheide dich für eine der APIs aus der Liste.
4. Beim Programmstart stelle eine Anfrage an die API um ein Zitat zurück zu bekommen.
5. Verarbeite die Antwort und gib das zufällige Zitat in der Konsole aus. (Nur der Text, kein JSON)
6. Dein Script soll Argumente akzeptieren, lese dir folgenden Artikel durch um zu erfahren wie du Argumente in Node.js verarbeiten kannst: [https://www.digitalocean.com/community/tutorials/nodejs-command-line-arguments-node-scripts](https://www.digitalocean.com/community/tutorials/nodejs-command-line-arguments-node-scripts)
  - Nutze `process.argc` um die Anzahl der Argumente zu ermitteln
  - Nutze `process.argv` um die Argumente zu lesen (Array mit den Argumenten)
7. Füge die Möglichkeit hinzu das Zitat in einer Textdatei zu speichern. Beispiel: `node app.js --save`
  - Nutze `fs` um eine Datei zu schreiben: [https://nodejs.org/api/fs.html#fswritefilesyncfile-data-options](https://nodejs.org/api/fs.html#fswritefilesyncfile-data-options)
  - Speichere die Datei im gleichen Ordner wie dein Script
  - Nutze entweder den Namen des Autors oder den Namen der Serie als Dateinamen (falls nicht vorhanden, nutze das aktuelle Datum und die Uhrzeit)
8. Füge die Möglichkeit hinzu entweder als Text oder im Json Format zu speichern
  - Wenn `--save` übergeben wird, speichere das Zitat als Textdatei
  - Wenn `--save-json` übergeben wird, speichere das Zitat als JSON Datei
