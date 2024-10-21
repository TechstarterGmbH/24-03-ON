<img src="Techstarter.svg" style="height: 50px; width: auto">

# HTML Cheatsheet

## Intro HTML
- Der lila Dino tanzt:
  - Dino = HTML (Nomen)
  - Lila = CSS (Adjektive)
  - Tanzt = JavaScript (Verben)

**HTML**
- HTML = Hypertext Markup Language
- Entwickelt 1989/90 zur Beschreibung akademischer Forschungsarbeiten

**HTML Elemente**
- Browser erkennt folgende Elemente:
  - `<p>`: Paragraph
  - `<h1>`: Hauptüberschrift
  - `<img>`: Bild einbinden
  - `<form>`: Formular

**Überschriftenelement**
- Tags: `<h1>` und `</h1>`
- Beispiel: `<h1>Hello World</h1>`

**Tags und Elemente**
- **Tag**: Text in spitzen Klammern, z.B. `<h1>` oder `</h1>`
- **Element**: Tag-Paar und Inhalt dazwischen, z.B. `<h1>Hello World</h1>`

**Hierarchie**
- Überschriften definieren Dokumenthierarchie:
  - `<h1>`: wichtigste/größte Überschrift
  - `<h6>`: unwichtigste/kleinste Überschrift

**Hierarchie-Beispiel:**

**Buch**
  - Kapitel 1
    - Abschnitt 1
    - Abschnitt 2
  - Kapitel 2
    - Abschnitt 1
      - Schaubild 1
  - Kapitel 3
    - Abschnitt 1
    - Abschnitt 2

**wird zu:**

```html
<h1>Buch</h1>
  <h2>Kapitel 1</h2>
    <h3>Abschnitt 1</h3>
    <h3>Abschnitt 2</h3>
  <h2>Kapitel 2</h2>
    <h3>Abschnitt 1</h3>
      <h4>Schaubild 1</h4>
  <h2>Kapitel 3</h2>
    <h3>Abschnitt 1</h3>
    <h3>Abschnitt 2</h3>
```

**Erklärung:**

- `<h1>` wird für die Hauptüberschrift des Dokuments (Buch) verwendet.
- `<h2>` wird für die Kapitelüberschriften verwendet.
- `<h3>` wird für die Abschnitte innerhalb der Kapitel verwendet.
- `<h4>` wird für Unterabschnitte oder spezielle Inhalte wie Schaubilder verwendet.

**Kommentare**
- HTML-Kommentar:
  ```html
  <!-- Dies ist ein Kommentar -->
  ```
