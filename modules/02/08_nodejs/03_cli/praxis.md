# Node Js Command Line Application

## Ziel

Ziel dieser Aufgabe wird es eine Terminal Anwendung zu erstellen, die es ermöglicht zufällige Zitate zu generieren und anzuzeigen.
In einem späteren Schritt soll es auch möglich sein nach Autoren zu filtern und die Zitate als Textdatei abzuspeichern.

## Schritte

1. Erstelle einen neuen Ordner für dein Projekt und initialisiere ein neues Node.js Projekt mit `npm init`.
2. Erstelle eine app.js Datei
3. Beim Programmstart stelle eine Anfrage an folgende API: [https://api.quotable.io/quotes/random](https://api.quotable.io/quotes/random)
4. Verarbeite die Antwort und gib das zufällige Zitat in der Konsole aus. (Nur der Text, kein JSON)
5. Dein Script soll Argumente akzeptieren, lese dir folgenden Artikel durch um zu erfahren wie du Argumente in Node.js verarbeiten kannst: [https://www.digitalocean.com/community/tutorials/nodejs-command-line-arguments-node-scripts](https://www.digitalocean.com/community/tutorials/nodejs-command-line-arguments-node-scripts)
  - Nutze `process.argc` um die Anzahl der Argumente zu ermitteln
  - Nutze `process.argv` um die Argumente zu lesen (Array mit den Argumenten)
6. Füge die Möglichkeit hinzu nach einem bestimmten Autor zu filtern. Beispiel: `node app.js "Albert Einstein"`
  - Falls kein Argument übergeben wird, gib ein zufälliges Zitat aus.
  - Falls ein Argument übergeben wird, gib ein zufälliges Zitat des Autors aus.
7. Wenn du den Author richtig extrahiert hast, manipuliere deine Anfrage so, dass du nur Zitate des Autors erhältst.
  `GET /search/quotes?query=Kennedy&fields=author`
  [https://github.com/lukePeavey/quotable?tab=readme-ov-file#search-quotes-beta](https://github.com/lukePeavey/quotable?tab=readme-ov-file#search-quotes-beta)
8. Gebe das erste Resultat in der Konsole aus (Nur der Text, KEIN JSON)
9. Füge die Möglichkeit hinzu das Zitat in einer Textdatei zu speichern. Beispiel: `node app.js "Albert Einstein" --save`
  - Nutze `fs` um eine Datei zu schreiben: [https://nodejs.org/api/fs.html#fswritefilesyncfile-data-options](https://nodejs.org/api/fs.html#fswritefilesyncfile-data-options)
  - Speichere die Datei im gleichen Ordner wie dein Script
  - Nutze den Namen des Autors als Dateinamen. Beispiel: `Albert Einstein.txt`
