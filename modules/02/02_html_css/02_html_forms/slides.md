---
marp: true
theme: default
class:
  - invert
style: |-
  section{
    background-color: #090917;
    color: #F1F1F1;
  }
  h1, h2, h3, h4{
    color: #FC6549;
  }

  em{
    color: #FC6549;
  }
paginate: true
footer:
---

# HTML Tag 2

---

## Kommentare

- HTML-Kommentar:
  ```html
  <!-- Dies ist ein Kommentar -->
  ```

---

## Paragraphen

- **Absatz-Element**: Zum Formatieren und Einfügen von Textabsätzen.
- **Syntax**: `<p>Text des Absatzes</p>`

```html
<p>Dies ist ein Absatz.</p>
```

- **Übung**: Öffne die Übungsdatei `Paragraphs.html` und füge `<p>`-Tags um jeden Absatz, um die Absätze klar voneinander zu trennen.

---

## Selbstschließende Tags

- **Nichtige Elemente**: HTML-Elemente ohne Inhalt.
- **Beispiele**:
  - **Horizontale Linie**: `<hr />`
  - **Zeilenumbruch**: `<br />`

```html
<p>Zeile 1<br />Zeile 2</p>
<hr />
<p>Absatz 2</p>
```

- **Übung**: Öffne die Übungsdatei `beispiel2.html`und verwende `<hr />`, um Bereiche zu trennen, und `<br />`, um Zeilenumbrüche innerhalb von Texten zu erzwingen. Nutze außerdem Überschriften Tags und Tags, um Paragraphen zu erstellen.

---

## Boilerplate

### HTML Boilerplate

- Eine HTML Boilerplate ist eine Standardvorlage für HTML-Dokumente.
- Sie dient als Ausgangspunkt für die Erstellung von Webseiten.
- Enthält grundlegende Struktur und notwendige Elemente.

---

### Bestandteile einer HTML Boilerplate

1. **DOCTYPE-Deklaration**: `<!DOCTYPE html>`
2. **HTML-Tag**: `<html lang="de">`
3. **Kopfbereich (head)**: `<head>`
4. **Zeichensatz (charset)**: `<meta charset="UTF-8">`
5. **Viewport**: `<meta name="viewport" content="width=device-width, initial-scale=1.0">`
6. **Titel**: `<title>`
7. **Körper (body)**: `<body>`

---

#### Beispiel einer HTML Boilerplate

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

### Vorteile der Verwendung einer Boilerplate

- Schneller Start
- Best Practices
- Konsistenz
- Wartbarkeit

---

## Zusammenfassung

- HTML Boilerplate bietet grundlegende Vorlage für Webseiten.
- Enthält wichtige Elemente für Struktur und Metadaten.
- Spart Zeit und fördert Best Practices.

---

## Tipp

Tippe `!`in VS Code, um die Boilerplate zu erstellen

---

## Automatische Formatierung in VS Code

1. **Befehlspalette öffnen**:
   - **Mac**: `Cmd` + `Shift` + `P`
   - **Windows**: `Ctrl` + `Shift` + `P`

2. **Dokument formatieren**:
   - **Mac**: `Shift` + `Option` + `F`
   - **Windows**: `Shift` + `Alt` + `F`

3. **Automatische Formatierung beim Speichern**:
   - **Mac**: `Cmd` + `,`
   - **Windows**: `Ctrl` + `,`
   - Suche und aktiviere "Format on Save".

