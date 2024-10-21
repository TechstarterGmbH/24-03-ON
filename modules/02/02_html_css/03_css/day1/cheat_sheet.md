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


## Paragraphen

- **Absatz-Element**: Zum Formatieren und Einfügen von Textabsätzen.
- **Syntax**: `<p>Text des Absatzes</p>`

```html
<p>Dies ist ein Absatz.</p>
```

- **Übung**: Öffne die Übungsdatei und füge `<p>`-Tags um jeden Absatz, um die Absätze klar voneinander zu trennen.

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

- **Übung**: Verwende `<hr />`, um Bereiche zu trennen, und `<br />`, um Zeilenumbrüche innerhalb von Texten zu erzwingen.

## Boilerplate

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

Tippe `!`in VS Code, um die Boilerplate zu erstellen.

### Emmet

Emmet ist ein Plugin, das Entwicklern hilft, HTML und CSS schneller zu schreiben, indem es Abkürzungen in vollständigen Code umwandelt.

#### Beispiel-Abkürzungen:

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

Für mehr Informationen und Abkürzungen besuche die [Emmet Dokumentation](https://docs.emmet.io/abbreviations/syntax/).

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

## HTML-Listen, Anker-Tags und Bilder

#### Listen

Im Internet gibt es viele Listen, wie auf BuzzFeed. Wie erstellen wir diese Listen selbst?

##### Ungeordnete Listen (`<ul>`)

- Verwende `<ul>` für ungeordnete Listen mit Aufzählungspunkten.
- Jedes Listenelement wird mit `<li>` erstellt.

Beispiel:
```html
<ul>
  <li>Element 1</li>
  <li>Element 2</li>
  <li>Element 3</li>
</ul>
```

##### Geordnete Listen (`<ol>`)

- Verwende `<ol>` für geordnete Listen mit nummerierten Elementen.
- Jedes Listenelement wird mit `<li>` erstellt.

Beispiel:
```html
<ol>
  <li>Schritt 1</li>
  <li>Schritt 2</li>
  <li>Schritt 3</li>
</ol>
```

#### Verschachtelte Listen (Nesting)

- Verschachtel Listen, indem du `<ul>` oder `<ol>` innerhalb von `<li>`-Tags platzierst.

Beispiel:
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

## Anker-Tag (`<a>`)

Mit dem A-Tag (`<a>`) können wir Hyperlinks erstellen, die auf andere Webseiten, E-Mail-Adressen, Dateien oder Orte auf derselben Seite verlinken.

##### Externe Links

Beispiel:
```html
<a href="http://www.google.com">Ich bin ein Link</a>
```

##### Interne Links

- Erstelle einen Link zu einer anderen HTML-Datei:
```html
<a href="about.html">Über mich</a>
```

##### Interne Sprungmarken

- Erstelle Links zu einem bestimmten Abschnitt auf derselben Seite:
```html
<a href="#section-id">Zum Abschnitt</a>
```
- Der Zielabschnitt:
```html
<h2 id="section-id">Abschnitt</h2>
```

## Bilder (`<img>`)

Füge Bilder mit dem Bild-Tag (`<img>`) ein. Das `src`-Attribut gibt die Quelle des Bildes an und das `alt`-Attribut bietet eine Beschreibung für Personen mit Einschränkungen beim Sehen.

##### Einfaches Bild

Beispiel:
```html
<img src="https://picsum.photos/200" alt="Ein zufälliges Bild" />
```

##### Beispiel mit Beschreibung

```html
<img src="https://picsum.photos/200" alt="Wald bei Sonnenuntergang" />
```

#### Beispiel für eine vollständige HTML-Struktur mit Listen, Anker-Tags und Bildern

```html
<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <title>HTML Cheatsheet</title>
</head>
<body>
  <h1>Listen-Beispiele</h1>
  
  <h2>Ungeordnete Liste</h2>
  <ul>
    <li>Element 1</li>
    <li>Element 2</li>
    <li>Element 3</li>
  </ul>
  
  <h2>Geordnete Liste</h2>
  <ol>
    <li>Schritt 1</li>
    <li>Schritt 2</li>
    <li>Schritt 3</li>
  </ol>

  <h2>Verschachtelte Liste</h2>
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

  <h1>Links und Bilder</h1>

  <h2>Externer Link</h2>
  <a href="http://www.google.com">Google</a>

  <h2>Interner Link</h2>
  <a href="about.html">Über mich</a>

  <h2>Bild-Beispiel</h2>
  <h1>Ich bin ein Katzenmensch</h1>
  <img src="https://example.com/cat_image.jpg" alt="Katze" />
</body>
</html>
```

## Semantic HTML

Semantische HTML-Tags sind HTML5-Elemente, die den Inhalt, den sie umschließen, klar und verständlich machen. Diese Tags vermitteln dem Browser und den Entwicklern die Bedeutung des Inhalts und tragen zur Verbesserung der Barrierefreiheit und der Suchmaschinenoptimierung (SEO) bei. Hier sind einige wichtige semantische HTML-Tags, zusammen mit Erklärungen und Beispielen:

### 1. `<header>`

Das `<header>`-Tag repräsentiert einen Container für Einführungs- und Navigationsinhalte. Es enthält oft Logo, Navigationsleiste, Suchformular, etc.

**Beispiel**:
```html
<header>
    <h1>Meine Website</h1>
    <nav>
        <ul>
            <li><a href="#home">Startseite</a></li>
            <li><a href="#about">Über uns</a></li>
            <li><a href="#contact">Kontakt</a></li>
        </ul>
    </nav>
</header>
```

### 2. `<nav>`

Das `<nav>`-Tag wird für den Hauptblock der Navigationslinks verwendet.

**Beispiel**:
```html
<nav>
    <ul>
        <li><a href="#home">Startseite</a></li>
        <li><a href="#services">Dienstleistungen</a></li>
        <li><a href="#contact">Kontakt</a></li>
    </ul>
</nav>
```

### 3. `<section>`

Das `<section>`-Tag definiert Abschnitte in einem Dokument, wie Kapitel, Themen oder einen Bereich einer Webseite.

**Beispiel**:
```html
<section>
    <h2>Unsere Dienstleistungen</h2>
    <p>Wir bieten eine Vielzahl von Dienstleistungen an, um Ihre Bedürfnisse zu erfüllen.</p>
</section>
```

### 4. `<article>`

Das `<article>`-Tag repräsentiert einen eigenständigen Inhalt, der in sich abgeschlossen ist und wiederverwendet werden kann, wie Blog-Einträge oder Nachrichtenartikel.

**Beispiel**:
```html
<article>
    <h2>Neuste Nachrichten</h2>
    <p>Hier sind die neuesten Nachrichten aus der Tech-Welt.</p>
</article>
```

### 5. `<aside>`

Das `<aside>`-Tag enthält Inhalte, die nicht direkt zum Hauptinhalt gehören, wie Seitenleisten, zusätzliche Informationen oder Werbebanner.

**Beispiel**:
```html
<aside>
    <h3>Zusätzliche Informationen</h3>
    <p>Hier finden Sie weitere Ressourcen und Links.</p>
</aside>
```

### 6. `<footer>`

Das `<footer>`-Tag enthält Fußzeileninformationen einer Sektion oder eines Dokuments, wie Autorinformationen, Copyright, Links zu Nutzungsbedingungen, etc.

**Beispiel**:
```html
<footer>
    <p>&copy; 2024 Meine Website. Alle Rechte vorbehalten.</p>
    <nav>
        <ul>
            <li><a href="#privacy">Datenschutz</a></li>
            <li><a href="#terms">Nutzungsbedingungen</a></li>
        </ul>
    </nav>
</footer>
```

### 7. `<main>`

Das `<main>`-Tag definiert den Hauptinhalt des `<body>`-Elements. Es sollte nur einen `<main>`-Tag pro Dokument geben.

**Beispiel**:
```html
<main>
    <h1>Willkommen auf unserer Website</h1>
    <p>Hier finden Sie die wichtigsten Informationen und Inhalte.</p>
</main>
```

### 8. `<figure>` und `<figcaption>`

Das `<figure>`-Tag wird verwendet, um selbständige Inhalte, wie Bilder, Diagramme oder Illustrationen, einzuschließen. Das `<figcaption>`-Tag liefert eine Beschreibung.

**Beispiel**:
```html
<figure>
    <img src="bild.jpg" alt="Beschreibung des Bildes">
    <figcaption>Bildbeschreibung</figcaption>
</figure>
```

### 9. `<time>`

Das `<time>`-Tag repräsentiert eine bestimmte Zeit oder ein Datum.

**Beispiel**:
```html
<p>Das Event findet am <time datetime="2024-07-20">20. Juli 2024</time> statt.</p>
```

### Vorteile von semantischen HTML-Tags:
- **Bessere SEO**: Suchmaschinen können den Inhalt besser verstehen und indexieren.
- **Barrierefreiheit**: Screenreader und andere Hilfstechnologien können den Inhalt besser interpretieren.
- **Code-Lesbarkeit**: Der Code wird für Entwickler klarer und verständlicher.

Durch die Verwendung semantischer HTML-Tags wird die Struktur einer Webseite logisch und zugänglich, was sowohl für Benutzer als auch für Suchmaschinen von Vorteil ist.

