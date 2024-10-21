---
marp: true
theme: default
class:
  - invert
style: |-
  section {
    background-color: #090917;
    color: #F1F1F1;
  }
  h1, h2, h3, h4 {
    color: #FC6549;
  }
  em {
    color: #FC6549;
  }
paginate: true
footer:
---


# HTML

---
## HTML Boilerplate

### Bestandteile
1. **DOCTYPE-Deklaration**
2. **HTML-Tag**
3. **Kopfbereich (head)**
4. **Zeichensatz (charset)** = Darstellung von Zeichen aus jeder Sprache der Welt 
5. **Viewport** = sichtbare Bereich einer Webseite im Browser
6. **Titel**
7. **Körper (body)**

---

## Beispiel einer HTML Boilerplate
```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Titel der Seite</title>
</head>
<body>
    <!-- Hier kommt der sichtbare Inhalt der Webseite -->
</body>
</html>
```

---

## Tipp
- Tippe `!` in VS Code, um die Boilerplate zu erstellen.

---

## Paragraphen
- **Absatz-Element**: Zum Formatieren und Einfügen von Textabsätzen.
- **Syntax**: `<p>Text des Absatzes</p>`

---

## Paragraphen Beispiel
```html
<p>Dies ist ein Absatz.</p>
```
- **Übung**: Öffne die Übungsdatei `beispiel2.html` und füge `<p>`-Tags um jeden Absatz, um die Absätze klar voneinander zu trennen.

---

## Selbstschließende Tags
- **Nichtige Elemente**: HTML-Elemente ohne Inhalt.
- **Beispiele**:
  - **Horizontale Linie**: `<hr />`
  - **Zeilenumbruch**: `<br />`

---

## Selbstschließende Tags Beispiel
```html
<p>Zeile 1<br />Zeile 2</p>
<hr />
<p>Absatz 2</p>
```
- **Übung**: Verwende in der Übungsdatei `beispiel2.html` `<hr />`, um Bereiche zu trennen, und `<br />`, um Zeilenumbrüche innerhalb von Texten zu erzwingen.

---

## Emmet
Emmet ist ein Plugin, das Entwicklern hilft, HTML und CSS schneller zu schreiben.

---

## Emmet Beispiel-Abkürzungen
- `ul>li*5` generiert:
```html
<ul>
  <li></li>
  <li></li>
  <li></li>
  <li></li>
  <li></li>
</ul>
```

---

## HTML-Listen, Anker-Tags und Bilder

---

## Listen

---

## Ungeordnete Listen (`<ul>`)
- Verwende `<ul>` für ungeordnete Listen mit Aufzählungspunkten.
- Jedes Listenelement wird mit `<li>` erstellt.

---

## Ungeordnete Listen Beispiel
```html
<ul>
  <li>Element 1</li>
  <li>Element 2</li>
  <li>Element 3</li>
</ul>
```

---

## Geordnete Listen (`<ol>`)
- Verwende `<ol>` für geordnete Listen mit nummerierten Elementen.
- Jedes Listenelement wird mit `<li>` erstellt.

---

## Geordnete Listen Beispiel
```html
<ol>
  <li>Schritt 1</li>
  <li>Schritt 2</li>
  <li>Schritt 3</li>
</ol>
```

---

## Verschachtelte Listen (Nesting)
- Verschachtel Listen, indem `<ul>` oder `<ol>` innerhalb von `<li>`-Tags platziert .

---

## Verschachtelte Listen Beispiel
```html
<ul>
  <li>A</li>
  <li>
    B
    <ol>
      <li>B1</li>
      <li>B2
        <ul>
          <li>B2a
            <ul>
              <li>B2aa</li>
              <li>B2ab</li>
            </ul>
          </li>
          <li>B2b</li>
          <li>B2c</li>
        </ul>
      </li>
      <li>B3
        <ol>
          <li>B31</li>
          <li>B32</li>
        </ol>
      </li>
    </ol>
  </li>
  <li>C</li>
</ul>
```

---

## Anker-Tag (`<a>`)
Mit dem A-Tag (`<a>`) können wir Hyperlinks erstellen.

### Externe Links
Beispiel:
```html
<a href="http://www.google.com">Ich bin ein Link</a>
```

---

## Interne Links
- Erstelle einen Link zu einer anderen HTML-Datei:
```html
<a href="about.html">Über mich</a>
```

---

## Interne Sprungmarken
- Erstelle Links zu einem bestimmten Abschnitt auf derselben Seite:
```html
<a href="#section-id">Zum Abschnitt</a>
```
- Der Zielabschnitt:
```html
<h2 id="section-id">Abschnitt</h2>
```

---

## Bilder (`<img>`)
- Fügen Sie Bilder mit dem Bild-Tag (`<img>`) ein.
- `src`: Quelle des Bildes
- `alt`: Beschreibung für Personen mit Einschränkungen der Sehkraft

---

## Einfaches Bild Beispiel
```html
<img src="https://picsum.photos/400" />
```

---

## Beispiel mit Beschreibung
```html
<img src="https://picsum.photos/400" alt="Ein zufälliges Bild" />
```

---

## Vollständige HTML-Struktur Beispiel
```html
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <title>HTML Cheatsheet</title>
</head>
<body>
  <h1>Listen-Beispiele</h1>
  <ul>
    <li>Element 1</li>
    <li>Element 2</li>
    <li>Element 3</li>
  </ul>
  <h1>Anker-Tag-Beispiele</h1>
  <a href="https://www.example.com">Externer Link</a>
  <h1>Bilder-Beispiele</h1>
  <img src="https://picsum.photos/200" alt="Ein zufälliges Bild" />
</body>
</html>
```
---

## Tipps VS-Code

---

## Automatische Formatierung in VS Code
1. **Befehlspalette öffnen**:
   - **Mac**: `Cmd` + `Shift` + `P`
   - **Windows**: `Ctrl` + `Shift` + `P`

---

## Automatische Formatierung in VS Code
2. **Dokument formatieren**:
   - **Mac**: `Shift` + `Option` + `F`
   - **Windows**: `Shift` + `Alt` + `F`

---

## Automatische Formatierung in VS Code
3. **Automatische Formatierung beim Speichern**:
   - **Mac**: `Cmd` + `,`
   - **Windows**: `Ctrl` + `,`
   - Suche und aktiviere "Format on Save".

---

## Mehrere Cursor hinzufügen:

1. **Mit der Maus:** Halte die Alt-Taste (oder Option auf einem Mac) gedrückt und klicke an die Stellen, wo du die Cursors haben möchtest.
2. **Mit der Tastatur:**
Obere/untere Zeile: Drücke Ctrl + Alt + ↑ (nach oben) oder Ctrl + Alt + ↓ (nach unten) (auf einem Mac ist es Cmd + Option + ↑/↓), um zusätzliche Cursors in den Zeilen darüber oder darunter zu setzen.

---
