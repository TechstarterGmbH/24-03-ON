# Aufgabe 2

## Ziel

Erstelle eine CLI Anwendung welche folgende Anforderungen erfüllt:

1. Die Anwendung soll eine Liste von zufälligen Userdaten generieren und in der Konsole ausgeben.
2. Bei der Nutzung des Parameters `--save` soll die Liste in einer Textdatei gespeichert werden.
3. Wenn nach dem `--save` Parameter ein Dateiname übergeben wird, soll die Datei mit diesem Namen gespeichert werden.
4. Wenn kein Dateiname übergeben wird, soll die Datei `users.txt` heißen.
5. Die Anwendung soll mit dem Befehl `node app.js` gestartet werden.
6. Die Userdaten sollen in folgendem Format ausgegeben werden:
   - `userId: 1`
   - `username: JohnDoe`
   - `email: jondoe@doe.com`
   - `password: 123456`
   - `birthdate: 01.01.1970`
   - `imageUrl: https://example.com/image.jpg`
   - `registeredAt: 01.01.2021`
7. Sollte der Parameter `--save` übergeben werden, sollen die Daten in JSON Form gespeichert werden
