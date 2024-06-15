# Einführung in JavaScript DOM

## Was ist DOM?

- **Definition:** DOM (Document Object Model) ist eine API für HTML- und XML-Dokumente.
- **Struktur:** Stellt Dokumente als Baumstruktur dar, wobei jeder Knoten ein Objekt im Dokument ist.
- In der Praxis ist DOM eine Abbildung unserer HTML-Webseite aber als JavaScript Objekte.
- Das hilft uns dabei von JavaScript aus auf die Struktur und den Inhalt der Webseite zuzugreifen.
- **Metapher**: Stell dir eine Voodoo Puppe vor, die du benutzen kannst, um die Webseite zu manipulieren.

## Wieso benutzt man DOM?

- **Interaktion mit Webseiten:** Erlaubt Skripts wie JavaScript, die Struktur, den Stil und den Inhalt von Webseiten dynamisch zu ändern.
- **Vorteile:**
  - Dynamische Inhaltsaktualisierung ohne Seitenneuladung.
  - Reaktion auf Benutzeraktionen in Echtzeit.
  - Programmatische Steuerung von Web-Elementen.

## Praktische Beispiele

### Manipulation des DOM mit JavaScript

**Aufgabe:** Ändere die Farbe und den Text eines HTML-Elements.

- **Paragraph:** Textelement als Ziel der Änderung.

```html
<!DOCTYPE html>
<html>
<head>
    <title>DOM Manipulation</title>
</head>
<body>
    <p id="text">Ändere mich!</p>
</body>
<script src="script.js"></script>
</html>
```

- **Element Selektion:** Nutzt `getElementById` um HTML-Elemente zu selektieren.
- **Das HTML Element braucht eine ID.**

```javascript
var textElement = document.getElementById('text');
textElement.style.color = 'red';
textElement.textContent = 'Farbe geändert!';
```

- Wenn du die Seite lädst, wird der Text in Rot geändert.
- **Es ist wichtig, dass das JavaScript nach dem HTML-Element geladen wird.**
  - Hierfür wird das Skript am Ende des `body`-Tags eingefügt.
  - Alternativ kannst du deinem Skript-Tag auch das Attribut `defer` hinzufügen.

```html
<script src="script.js" defer></script>
```

### Event-Handling mit DOM

**Aufgabe:** Ändere den Text sobald der Benutzer auf einen Button klickt

- **HTML-Erweiterung:**

  - **Input-Feld:** Ermöglicht Benutzereingaben.

```html
<p id="text">Ändere mich!</p>
<buttom id="btn">Klick mich!</button>
```

- Im ersten Schritt selektieren wir das Button Element.

```javascript
const btn = document.getElementById('btn');
```

- **Event-Listener:** Jedes HTML-Element kann auf Ereignisse reagieren.
- Hier sagen wir JavaScript, wenn jemand auf den Button klickt, führe eine Funktion aus.
- Diese Funktion wird auch **Event-Handler** genannt

```javascript
function eventHandler() {
  console.log('Button wurde geklickt!');
}

// Wir fügen dem Button einen Event-Listener hinzu
// Der Event-Listener wartet auf das 'click' Ereignis
// Wenn das Ereignis eintritt, wird die Funktion 'eventHandler' ausgeführt
btn.addEventListener('click', eventHandler);
```

- Jetzt können wir test ob der Button funktioniert, bei einem Klick wird die Nachricht im Konsolenfenster angezeigt.
- Sollte das funktionieren, können wir den Text des Paragraphen ändern.

```javascript
function eventHandler() {
  const textElement = document.getElementById('text');
  textElement.textContent = 'Text wurde geändert!';
}
```

## Erstellung eines Objekts

**Aufgabe:** Füge der Seite dynamisch ein neues Element hinzu.

- **Schritte zur Erstellung und Manipulation:**
  - **Elementerstellung:** Nutzt `createElement` um ein `div` zu erzeugen.
  - **Textzuweisung:** Weist dem neuen Element Text zu.
  - Das Element wurde zwar erstellt, aber wird noch nicht angezeigt.
  - Wir müssen es noch unserem HTML-Dokument an einer bestimmten Stelle hinzufügen (woher sonst soll JavaScript wissen, wo es sein soll?)
  - **Element hinzufügen:** Fügt das Element mittels `appendChild` zum Dokument hinzu.

```javascript
var newDiv = document.createElement('div');
newDiv.textContent = 'Ich bin neu hier!';
// In diesem Fall fügen wir das Element in den Body ein
document.body.appendChild(newDiv);
```
