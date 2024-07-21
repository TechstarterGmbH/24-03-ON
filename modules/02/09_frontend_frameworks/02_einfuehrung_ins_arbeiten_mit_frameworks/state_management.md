# State Management in Webanwendungen

## Teil 1: Vanilla HTML, CSS und JavaScript

**Schritt 1: Grundgerüst erstellen**

- Beginne mit einem einfachen HTML-Dokument.
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


**Schritt 2: Styling hinzufügen**

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

**Schritt 3: HTML-Struktur definieren**

- Im `<body>`-Teil des Dokuments, füge ein `div`-Element für die Anzeige des Zählers und einen `button` für das Erhöhen des Zählers ein.


```html
  <div class="counter" id="counterDisplay">0</div>
  <button onclick="incrementCounter()">Zähler erhöhen</button>
```

**Schritt 4: JavaScript-Funktionalität implementieren**

- Füge ein `<script>`-Tag am Ende des `<body>`-Bereichs hinzu.
- Definiere eine Variable für den Zählerstand und eine Funktion, um diesen bei Klick auf den Button zu erhöhen und das Ergebnis im `div` anzuzeigen.

```html
  <script>
    let counter = 0;

    function incrementCounter() {
      counter++;
      document.getElementById('counterDisplay').innerText = counter;
    }
  </script>
```

### Teil 2: Svelte

**Schritt 1: Svelte-Projekt einrichten**

- Erstelle ein neues Svelte-Projekt, indem du `npm init vite` in der Konsole ausführst:
  - Projektname: svelte-counter
  - Template: svelte
  - Variant: JavaScript
- Navigiere in das Projektverzeichnis mit `cd svelte-counter`.
- Installiere die Abhängigkeiten mit `npm install`.
- Starte die Entwicklungsumgebung mit `npm run dev`.

**Schritt 2: Hauptkomponente bearbeiten**

- Öffne die Datei `src/App.svelte`.
- Ersetze den Inhalt durch eine ähnliche Struktur wie beim Vanilla HTML-Counter.

**Schritt 3: State Management mit Svelte**

- Definiere eine reaktive Variable für den Zählerstand.
- Erstelle eine Funktion, die den Zähler erhöht.
- Nutze das Binding in Svelte, um den Zählerstand direkt in deinem Markup zu aktualisieren.

### Beispielcode für Svelte (App.svelte)

```svelte
<script>
  let counter = 0;

  function incrementCounter() {
    counter += 1;
  }
</script>

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

<div class="counter">{counter}</div>
<button on:click={incrementCounter}>Zähler erhöhen</button>
```

### Vergleich

- **Vanilla HTML/JS**: Direkter und manueller Umgang mit dem DOM. Eignet sich für einfache Anwendungen ohne komplexes State Management.
- **Svelte**: Moderner, deklarativer Ansatz, bei dem Änderungen am State automatisch das DOM aktualisieren. Reduziert Boilerplate und verbessert die Lesbarkeit und Wartbarkeit des Codes. Ideal für komplexere Anwendungen.
