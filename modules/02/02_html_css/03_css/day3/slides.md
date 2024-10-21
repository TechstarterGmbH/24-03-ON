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

# CSS 

---

## Einführung in CSS

- **CSS (Cascading Style Sheets)**: Verwenden, um das Aussehen und Layout von Webseiten zu gestalten.
- **HTML**: Struktur einer Webseite.
- **CSS**: Look und Feel einer Webseite.

---

## Aufbau einer CSS Regel


**CSS:**
```css
p {
  color: blue;         /* Textfarbe */
}
```

- **Selektor**: `p` (wählt alle `<p>`-Elemente)
- **Eigenschaften**: `color`
- **Wert**: `blue`

Dieser CSS-Code macht den Text aller `<p>`-Elemente blau.

---

## CSS Einbinden

#### Inline-Stile
```html
<h1 style="color: purple;">Hallo Welt</h1>
<button style="background-color: lightgreen;">Ich bin ein Button</button>
```

---

#### Interne Stile
```html
<head>
    <style>
        h2 {
            color: palevioletred;
        }
    </style>
</head>
<body>
    <h2>Ich bin ein H2</h2>
</body>
```

---

#### Externe Stile
```html
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
```

**styles.css**
```css
h2 {
    color: indigo;
}
```

---

## Farben

#### Benannte Farben
```css
color: red;
background-color: PapayaWhip;
```

---

#### RGB-Farben
```css
color: rgb(255, 0, 0); /* Rot */
background-color: rgb(0, 255, 0); /* Grün */
```
---

#### Hexadezimale Farben
```css
color: #FF0000; /* Rot */
background-color: #00FF00; /* Grün */
```

---

## Text Eigenschaften

#### Textausrichtung
```css
h1 {
    text-align: center;
}
p {
    text-align: right;
}
```

---

#### Schriftstärke
```css
h1 {
    font-weight: normal;
}
p {
    font-weight: bold;
}
```
---

#### Textdekoration
```css
h1 {
    text-decoration: underline;
}
p {
    text-decoration: line-through;
}
a {
    text-decoration: none;
}
```

---

## Klassen und IDs

#### Verwendung von Klassen
- Klassen werden verwendet, um mehrere Elemente mit denselben Stilen zu versehen.

**HTML**
```html
<p class="highlight">Dies ist ein hervorgehobener Absatz.</p>
<p class="highlight">Noch ein hervorgehobener Absatz.</p>
```

**CSS**
```css
.highlight {
    color: blue;
    background-color: yellow;
}
```

---

## Klassen und IDs (Fortsetzung)

#### Verwendung von IDs
- IDs sind eindeutig und sollten nur einmal pro Seite verwendet werden.

**HTML**
```html
<p id="unique">Dies ist ein einzigartiger Absatz.</p>
```

**CSS**
```css
#unique {
    color: white;
    background-color: black;
}
```

---

## Selektoren

#### Grundlegende Selektoren
```css
/* Element-Selektor */
h1 {
    color: green;
}

/* Klassenselektor */
.highlight {
    color: blue;
}

/* ID-Selektor */
#unique {
    color: red;
}
```

---

## Kombinierte Selektoren und Spezifität in CSS

---

#### Kombinierte Selektoren

- Nachfahrenselektor
- Kindselektor
- Gruppenselektor
- Attributselektor

---

## Kombinierte Selektoren

### Nachfahrenselektor

Der Nachfahrenselektor wählt Elemente aus, die Nachkommen eines bestimmten Elements sind.

```css
/* Selektiert alle <p> innerhalb eines <div> */
div p {
    color: green;
}
```

---

### Kindselektor

Der Kindselektor wählt nur direkte Kinder eines bestimmten Elements aus.

```css
/* Selektiert alle direkten <p>-Kinder eines <div> */
div > p {
    color: blue;
}
```

---

### Gruppenselektor

Der Gruppenselektor ermöglicht das Zusammenfassen mehrerer Selektoren, um dieselben Stile anzuwenden.

```css
/* Selektiert alle <h1>, <h2> und <p> Elemente */
h1, h2, p {
    color: red;
}
```

---

### Attributselektor

Der Attributselektor wählt Elemente basierend auf ihren Attributen aus.

```css
/* Selektiert alle <input> Elemente mit dem Attribut type="text" */
input[type="text"] {
    background-color: yellow;
}
```

---

## Spezifität in CSS

Spezifität bestimmt, welche CSS-Regeln angewendet werden, wenn mehrere Regeln auf dasselbe Element zutreffen.

### Kriterien:

1. **Inline-Stile**: höchste Priorität
2. **ID-Selektoren** (`#id`)
3. **Klassenselektoren**, Attributselektoren, Pseudoklassen
4. **Element-Selektoren** und Pseudoelemente

---

### Beispiel zur Veranschaulichung der Spezifität

**HTML**
```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>CSS Spezifität</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1 id="main-heading" class="header">Willkommen auf meiner Seite</h1>
</body>
</html>
```

---

**CSS (styles.css)**
```css
/* Element-Selektor */
h1 {
    color: green; /* 1 Punkt */
}

/* Klassenselektor */
.header {
    color: blue; /* 10 Punkte */
}

/* ID-Selektor */
#main-heading {
    color: red; /* 100 Punkte */
}
```

In diesem Beispiel wird der Text des `<h1>`-Elements rot angezeigt, weil der ID-Selektor (`#main-heading`) die höchste Spezifität hat.

---

**Inline-Stil**
```html
<p id="unique" class="text" style="color: black;">Dies ist ein einzigartiger Absatz.</p>
```

Hier ist die Farbe des Textes im `<p>` mit der ID `unique` schwarz, weil der Inline-Stil die höchste Spezifität hat. Wenn der Inline-Stil entfernt wird, wäre die Farbe rot, da der ID-Selektor die nächsthöchste Spezifität hat.


---

## Box-Modell

Das CSS-Box-Modell beschreibt, wie Elemente auf einer Webseite in Boxen modelliert werden, die verschiedene Eigenschaften wie Inhalt, Padding, Border und Margin haben.

---

### Box-Modell Diagramm:

```
 ____________________________________________
|                  Margin                    |
|  ________________________________________  |
| |             Border                     | |
| |  __________________________________  | | |
| | |            Padding               | | | |
| | |  ______________________________  | | | |
| | | |            Content           | | | | |
| | | |                              | | | | |
| | | |                              | | | | |
| | | |______________________________| | | | |
| | |__________________________________| | | |
| |______________________________________| | |
|____________________________________________|
```

---

1. **Content (Inhalt):**
   - Der eigentliche Inhalt des Elements.
   - Definiert durch die Breite (`width`) und Höhe (`height`) des Elements.
   - Beispiel: Ein Absatz-Element `<p>` mit dem Text "Lorem ipsum dolor sit amet" und darunter ein Button `<button>` mit der Beschriftung "Klick mich!".

---

2. **Padding (Innenabstand):**
   - Der Raum zwischen dem Inhalt des Elements und seiner Grenze (Border).
   - Definiert durch `padding-top`, `padding-right`, `padding-bottom` und `padding-left`.
   - Beispiel: `<p style="padding: 20px;">Lorem ipsum dolor sit amet</p>`. Hier ist der Innenabstand des Absatzes 20px von allen Seiten.

---

3. **Border (Rahmen):**
   - Eine Linie um den Inhalt und das Padding herum.
   - Definiert durch `border-width`, `border-style` und `border-color`.
   - Beispiel: `<button style="border: 1px solid black;">Klick mich!</button>`. Hier hat der Button eine schwarze Linie mit einer Dicke von 1px um ihn herum.

---

4. **Margin (Außenabstand):**
   - Der Raum zwischen den Grenzen (Border) des Elements und seinen Nachbarelementen.
   - Definiert durch `margin-top`, `margin-right`, `margin-bottom` und `margin-left`.
   - Beispiel: `<button style="margin-top: 10px;">Klick mich!</button>`. Hier hat der Button einen oberen Außenabstand von 10px zu seinem Nachbarelement.

