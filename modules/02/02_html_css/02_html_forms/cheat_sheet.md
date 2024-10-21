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


### Paragraphen

- **Absatz-Element**: Zum Formatieren und Einfügen von Textabsätzen.
- **Syntax**: `<p>Text des Absatzes</p>`

```html
<p>Dies ist ein Absatz.</p>
```

- **Übung**: Öffne die Übungsdatei und füge `<p>`-Tags um jeden Absatz, um die Absätze klar voneinander zu trennen.

### Selbstschließende Tags

- **Nichtige Elemente**: HTML-Elemente ohne Inhalt.
- **Beispiele**:
  - **Horizontale Linie**: `<hr />`
  - **Zeilenumbruch**: `<br />`

```html
<p>Zeile 1<br />Zeile 2</p>
<hr />
<p>Absatz 2</p>
```

- **Übung**: Verwende `<hr />`, um Bereiche zu trennen, und `<br />`, um Zeilenumbrüche innerhalb von Texten zu erzwingen.

### Boilerplate

### HTML Boilerplate

Eine HTML Boilerplate ist eine Standardvorlage für HTML-Dokumente, die als Ausgangspunkt für die Erstellung von Webseiten dient. Sie enthält die grundlegende Struktur und notwendige Elemente, die in fast jedem HTML-Dokument vorhanden sein sollten. Die Verwendung einer Boilerplate hilft Entwicklern, schnell mit einem neuen Projekt zu starten, indem sie eine konsistente und bewährte Basis bereitstellt.

#### Bestandteile einer HTML Boilerplate

1. **DOCTYPE-Deklaration**
   - **Tag**: `<!DOCTYPE html>`
   - **Beschreibung**: Gibt die Version von HTML an, die verwendet wird. Die Angabe `<!DOCTYPE html>` zeigt an, dass es sich um HTML5 handelt.

2. **HTML-Tag**
   - **Tag**: `<html lang="de">`
   - **Beschreibung**: Der Wurzel-Tag des Dokuments. Das `lang`-Attribut gibt die Sprache des Inhalts an (z.B. `de` für Deutsch).

3. **Kopfbereich (head)**
   - **Tag**: `<head>`
   - **Beschreibung**: Enthält Metadaten über das Dokument, wie z.B. den Zeichensatz, den Titel und Links zu CSS-Dateien oder Skripten.

4. **Zeichensatz (charset)**
   - **Tag**: `<meta charset="UTF-8">`
   - **Beschreibung**: Gibt den Zeichensatz der Webseite an, hier `UTF-8`.

5. **Viewport**
   - **Tag**: `<meta name="viewport" content="width=device-width, initial-scale=1.0">`
   - **Beschreibung**: Steuert, wie die Webseite auf verschiedenen Geräten angezeigt wird.

6. **Titel**
   - **Tag**: `<title>`
   - **Beschreibung**: Der Titel der Webseite, der im Browser-Tab angezeigt wird.

7. **Körper (body)**
   - **Tag**: `<body>`
   - **Beschreibung**: Enthält den sichtbaren Inhalt der Webseite.

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

#### Vorteile der Verwendung einer Boilerplate

1. **Schneller Start**: Sie bietet eine sofort einsatzbereite Struktur für neue HTML-Dokumente.
2. **Best Practices**: Eine Boilerplate enthält empfohlene Einstellungen und Strukturen, die für eine korrekte und effiziente Darstellung der Webseite sorgen.
3. **Konsistenz**: Sie sorgt für eine konsistente Struktur und Metadaten in allen Projekten.
4. **Wartbarkeit**: Durch die Verwendung einer Standardvorlage wird der Code leichter wartbar und verständlich für andere Entwickler.

### Zusammenfassung

Eine HTML Boilerplate ist eine grundlegende Vorlage, die die Basisstruktur eines HTML-Dokuments umfasst. Sie enthält wichtige Elemente wie die DOCTYPE-Deklaration, HTML-Tag, Kopfbereich mit Metadaten und den Körper für den sichtbaren Inhalt. Die Verwendung einer Boilerplate spart Zeit, fördert Best Practices und sorgt für eine konsistente und wartbare Codebasis.

### Tipp

Tippe `!`in VS Code, um die Boilerplate zu erstellen


### Automatische Formatierung in VS Code

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

