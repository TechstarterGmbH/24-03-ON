# State Management in Webanwendungen

## Vorbereitung

- Erstelle ein neues Projektverzeichnis für die Gruppenaufgabe.
- Öffne das Projekt in VS Code

## Vanilla HTML, CSS und JavaScript

**1: Grundgerüst erstellen**

- Erstelle einen neuen Subordner namens `html` in deinem Projektverzeichnis.
- Erstelle eine `index.html`-Datei im `html`-Ordner.
- Füge den Doctype, HTML, Head und Body Tags hinzu.

```html
<!DOCTYPE html>
<html>

<head>
  <title>Einfacher HTML-Counter</title>
</head>

<body>
</body>

</html>
```

**2: Styling hinzufügen**

- Innerhalb des `<head>`-Tags, füge ein `<style>`-Tag hinzu und definiere die grundlegenden CSS-Stile für den Zähler und den Button.

```html
  <style>
    .counter {
      font-size: 24px;
      margin-bottom: 10px;
    }

    button {
      font-size: 20px;
      padding: 10px;
    }
  </style>

```

**3: HTML-Struktur definieren**

- Im `<body>`-Teil des Dokuments, füge ein `div`-Element für die Anzeige des Zählers und einen `button` für das Erhöhen des Zählers ein.

```html
  <div class="counter" id="counterDisplay">0</div>
  <button onclick="incrementCounter()">Zähler erhöhen</button>
```

**4: JavaScript-Funktionalität implementieren**

- Füge ein `<script>`-Tag am Ende des `<body>`-Bereichs hinzu.
- Definiere eine Variable für den Zählerstand und eine Funktion, um diesen bei Klick auf den Button zu erhöhen und das Ergebnis im `div` anzuzeigen.

### Svelte

**1: Svelte-Projekt einrichten**

- Erstelle ein neues Svelte-Projekt, indem du `npm init vite` in der Konsole ausführst:
  - Projektname: svelte-counter
  - Template: svelte
  - Variant: JavaScript
- Navigiere in das Projektverzeichnis mit `cd svelte-counter`.
- Installiere die Abhängigkeiten mit `npm install`.
- Starte die Entwicklungsumgebung mit `npm run dev`.

**2: Hauptkomponente bearbeiten**

- Öffne die Datei `src/App.svelte`.

**3: Styling hinzufügen**

- Füge die CSS-Stile für den Zähler und den Button in den `<style>`-Block ein.

```svelte
<style>
  .counter {
    font-size: 24px;
    margin-bottom: 10px;
  }

  button {
    font-size: 20px;
    padding: 10px;
  }
</style>
```

**4: State-Management hinzufügen**

- Definiere eine Variable `counter` und eine Funktion `incrementCounter`, um den Zählerstand zu erhöhen.

```svelte
<script>
  let counter = 0;

  function incrementCounter() {
    counter += 1;
  }
</script>
```

**5: HTML-Struktur definieren**

- Füge die HTML-Elemente für den Zähler und den Button hinzu.

```svelte
<div class="counter">{counter}</div>
<button on:click={incrementCounter}>Zähler erhöhen</button>
```

### Vergleich

- **Vanilla HTML/JS**: Direkter und manueller Umgang mit dem DOM. Eignet sich für einfache Anwendungen ohne komplexes State Management.
- **Svelte**: Moderner, deklarativer Ansatz, bei dem Änderungen am State automatisch das DOM aktualisieren. Reduziert Boilerplate und verbessert die Lesbarkeit und Wartbarkeit des Codes. Ideal für komplexere Anwendungen.

### Optional

- Erstelle einen weiteren Button, um den Zähler zurückzusetzen (auf 0).
- Erstelle einen weiteren Button, um den Zähler zu verringern (um 1).
- Erstelle ein HTML Element, was das doppelte des Zählers anzeigt. (z.B wenn der Zähler 5 ist, soll das Element 10 anzeigen)
  - Hierfür musst du eine reactive Variable erstellen: [https://learn.svelte.dev/tutorial/reactive-declarations](https://learn.svelte.dev/tutorial/reactive-declarations)
- Erstelle ein HTML Element, was das Quadrat des Zählers anzeigt. (z.B wenn der Zähler 5 ist, soll das Element 25 anzeigen)
- Erstelle eine neue State-Variable `name` und ein Input-Feld, um den Namen zu ändern.
  - Zeige den Namen unter dem Zähler an.
  - Wenn jemand den Namen im Input-Feld ändert, soll der Name unter dem Zähler aktualisiert werden.
  - [https://learn.svelte.dev/tutorial/text-inputs](https://learn.svelte.dev/tutorial/text-inputs)
- Wenn der Zähler 10 erreicht, ändere die Farbe des Buttons und des Zählers auf Rot.
- Wenn der Zähler 20 erreicht, ändere den Hintergrund der Seite auf Gelb.
- Wenn der Zähler eine Primzahl ist ändere die Farbe des Zählers auf Grün.
