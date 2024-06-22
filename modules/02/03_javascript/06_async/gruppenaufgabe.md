# Gruppenaufgabe

## Szenario

- Ihr wollt gemeinsam eine Wetter Website entwickeln
- Da es relativ schwierig ist, echte Wetterdaten zu bekommen, könnt ihr euch auf eine API verlassen

## Aufgabe

- Erstellt einen neuen Ordner und öffnet diesen in VS Code
- Erstellt eine neue HTML Datei und eine neue JavaScript Datei (z.B. `index.html` und `index.js`)
- Verlinkt die JavaScript Datei in der HTML Datei mittels script Tag
- Erstellt folgende Elemnte auf der HTML Seite:
  - Eine Überschrift
  - Ein div Element (id="weather-info"), in das die Wetterdaten angezeigt werden sollen
- Im JavaScript Code:
  - Erstelle eine Referenz auf das div Element (`getElementById`)
  - Erstelle eine Funktion `getWeatherData`, die die Wetterdaten von der API abruft
  - Hierfür nutzen wir die Funktion `fetch`, die eine URL als Argument erwartet

```javascript
fetch("https://wttr.in/London?format=4")
  .then(function(response) {
    return response.text();
  })
  .then(function(data) {
    // Hier habt ihr dann eure Wetterdaten
    console.log(data);
  });
```

- Die Funktion soll dann die Wetterdaten in das div Element einfügen
- Nun muss die Funktion nur noch aufgerufen werden
- Testet eure Seite im Browser

## Für die Schnellen

- Erweitert eure Seite um ein Input Feld, in das der Benutzer eine Stadt eingeben kann
- Die URL für die API soll dann dynamisch generiert werden und sich auf die eingegebene Stadt beziehen
- Testet eure Seite im Browser

- Könnt ihr die Funktion `getWeatherData` umschreiben, sodass sie eine Callback Funktion erwartet, die die Wetterdaten entgegennimmt und anzeigt?
