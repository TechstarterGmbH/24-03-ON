# Aufgabe 1: Seite mit API Daten

- Erstelle ein neues Projekt mit einer HTML- und einer JavaScript-Datei.
- Verlinke die JavaScript-Datei in der HTML-Datei.
- Schaue dir folgende Liste mit kostenlosen APIs an: [Liste mit kostenlosen APIs OHNE ANMELDUNG!](https://mixedanalytics.com/blog/list-actually-free-open-no-auth-needed-apis/)
- Suche dir eine API, du kannst auf die Spalte "Sample URL" klicken, um die API zu testen.
- Stelle die Antwort der API in deiner HTML-Datei dar. (ähnlich wie in der Gruppenaufgabe)
- Falls die API ein JSON zurückgibt, schaue dir folgendes Beispiel an:

```javascript
// Beispiel für eine API, die JSON zurückgibt
// {
// "userId": 1,
// "id": 1,
// "title": "delectus aut autem",
// "completed": false
// }
fetch('https://jsonplaceholder.typicode.com/todos/1')
  .then(response => response.json())
  // Sobald wir das JSON haben, können wir damit wie mit einem ganz normalen JavaScript Objekt arbeiten
  // Falls du dich nicht an Ojekte erinnerst, schau dir nochmal die Lektion dazu an
  .then(data => console.log(data.userId));

```
