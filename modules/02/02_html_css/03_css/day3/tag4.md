<img src="Techstarter.svg" style="height: 50px; width: auto">

## CSS
Stell dir vor, du bist der Architekt und CSS ist wie deine Farbpalette und deine Werkzeuge. Es ist das, was du benutzt, um den Look und das Gefühl einer Webseite zu gestalten. Denk an HTML als das Gerüst eines Gebäudes - es gibt dir die Struktur. Aber CSS ist das, was dem Ganzen Leben einhaucht, indem es Farben, Schriftarten, Abstände und so weiter hinzufügt.

Wenn du also eine Webseite besuchst und denkst: "Wow, das sieht cool aus!", dann hat höchstwahrscheinlich jemand CSS verwendet, um es genau so aussehen zu lassen. In unserer Einführung werden wir lernen, wie man diese CSS-"Werkzeuge" verwendet, um unsere eigenen Webseiten zu gestalten, ganz nach unseren Vorstellungen.

Es gibt eine Menge CSS-Eigenschaften, und es ist unmöglich, sie alle auswendig zu lernen. Aber das ist okay! Du musst sie dir nicht alle merken. Du kannst Informationen online finden, wenn du sie benötigst. Die MDN-Dokumentation ist eine großartige Ressource, um nachzuschlagen, wie bestimmte Eigenschaften funktionieren. 

### CSS einbinden

In diesem Video sprechen wir über verschiedene Möglichkeiten, wie Sie Ihre CSS-Stile in Ihre HTML-Dateien einfügen können.

Die erste Option besteht darin, Ihre Stile direkt in Ihre HTML-Elemente einzubetten, indem Sie das `style`-Attribut verwenden. Dies ist jedoch keine gute Praxis, da es schwierig ist, Stile zwischen Elementen zu teilen und zu pflegen.

```html
<h1 style="color: purple;">Hallo Welt</h1>
<button style="background-color: lightgreen;">Ich bin ein Button</button>
```

Eine verbesserte Methode besteht darin, Stile im `<style>`-Element im `<head>`-Bereich des HTML-Dokuments zu definieren. Auf diese Weise können Sie Stile für mehrere Elemente auf einer Seite definieren und wiederverwenden.

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

Obwohl dies eine Verbesserung gegenüber Inline-Stilen darstellt, teilen Sie Ihre Stile immer noch nicht zwischen verschiedenen HTML-Dokumenten.

Die beste Praxis besteht darin, Ihre Stile in eine externe CSS-Datei auszulagern und diese dann in Ihre HTML-Dateien zu verlinken. Dadurch können Sie Ihre Stile zwischen verschiedenen Seiten und Dokumenten teilen und zentral verwalten.

```html
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
```

In der Datei `styles.css` würden Sie dann Ihre Stile definieren, z. B.:

```css
h2 {
    color: indigo;
}
```

Durch Verwendung des `<link>`-Elements im `<head>`-Bereich können Sie Ihre CSS-Datei in Ihr HTML-Dokument einbinden und Ihre Stile auf der gesamten Website konsistent halten.

## color

In diesem Abschnitt lernen wir grundlegende CSS-Eigenschaften, wie die Änderung der Textfarbe und der Hintergrundfarbe, sowie die Anpassung der Schriftgröße. Danach werden Selektoren behandelt, mit denen man Elemente gezielt ansprechen kann. 

Wir starten mit der Eigenschaft `color`, die die Textfarbe eines Elements ändert. Dazu wählen wir ein Element aus, z.B. ein H1-Tag, und setzen dessen Farbe auf Lila. Die `color`-Eigenschaft akzeptiert verschiedene Werte, wie benannte Farben, hexadezimale Werte, RGB, HSL und andere Farbsysteme. Diese Werte repräsentieren jeweils eine Farbe, unabhängig von der Darstellungsmethode.

Zum Beispiel können wir für alle H1-Tags die Farbe auf Indigo setzen. Ebenso können wir für andere Elemente, wie Buttons oder Absätze, spezifische Farben festlegen. Dabei ändern wir nur die Textfarbe und nicht die Hintergrundfarbe.

Die Eigenschaft `background-color` hingegen ändert die Hintergrundfarbe eines Elements. Zum Beispiel können wir Buttons eine Hintergrundfarbe wie Cyan geben. Wenn wir `background` anstelle von `background-color` verwenden, haben wir zusätzlich die Möglichkeit, Hintergrundbilder oder Farbverläufe zu definieren. 

Zusammengefasst: Wir lernen, wie man Text- und Hintergrundfarben in CSS ändert, und dass es verschiedene Möglichkeiten gibt, Farben darzustellen. Außerdem erfahren wir, wie man durch Selektoren gezielt Elemente anspricht und deren Stil anpasst.

## Farben

Als Nächstes vertiefen wir das Thema Farben in CSS und untersuchen die verschiedenen Systeme, mit denen wir Farben referenzieren können. Farben sind nicht nur für Text und Hintergründe wichtig, sondern auch für Rahmen und Schatten. Es gibt viele Elemente, denen wir Farben zuweisen können.

### Benannte Farben

Wir beginnen mit benannten Farben. Diese sind die einfachsten und am meisten eingeschränkten Farbwerte. Es gibt 140 benannte Farben, die von allen Browsern erkannt werden. Beispiele sind "Orange", "Red", "Pink", "DarkKhaki", "MediumAquamarine" und "LightSkyBlue". Diese können direkt als Werte für die `color`- oder `background-color`-Eigenschaften verwendet werden, z.B. `background-color: PapayaWhip`.

### RGB-Farben

Benannte Farben sind jedoch auf 140 beschränkt, während Computermonitore etwa 16 Millionen Farben anzeigen können. Daher verwenden wir oft das RGB-Farbsystem, das Farben als Kombination von Rot (R), Grün (G) und Blau (B) darstellt. Diese drei Kanäle haben jeweils einen Wertebereich von 0 bis 255:

- `rgb(255, 0, 0)` ergibt reines Rot.
- `rgb(0, 255, 0)` ergibt reines Grün.
- `rgb(0, 0, 255)` ergibt reines Blau.
- `rgb(0, 0, 0)` ergibt Schwarz.
- `rgb(255, 255, 255)` ergibt Weiß.

Eine komplexere Farbe könnte beispielsweise `rgb(150, 100, 200)` sein, was ein lila Farbton ergibt.

### Verwendung des RGB-Systems

Um eine Farbe auszuwählen, können wir Farbwähler-Tools verwenden. Diese sind oft in Grafikprogrammen und Online-Tools integriert. Ein Beispiel wäre ein Farbwähler, der die RGB-Werte für eine ausgewählte Farbe anzeigt. Diese Werte können dann direkt in das CSS eingefügt werden. Zum Beispiel:

```css
h2 {
  background-color: rgb(89, 151, 0);
}
```

### Hexadezimal-Farben

Das nächste Farbsystem ist das hexadezimale System, welches Farben als Kombination von sechs hexadezimalen Zeichen darstellt. Zum Beispiel:

- `#FF0000` ist Rot.
- `#00FF00` ist Grün.
- `#0000FF` ist Blau.
- `#000000` ist Schwarz.
- `#FFFFFF` ist Weiß.

Das hexadezimale System ist eine alternative Methode zur Darstellung von Farben, aber das Prinzip bleibt dasselbe: eine Mischung aus Rot, Grün und Blau.

### Zusammenfassung

1. **Benannte Farben**: Einfach, aber auf 140 Farben beschränkt.
2. **RGB-Farben**: Flexible Farbdarstellung mit Werten von 0 bis 255 für Rot, Grün und Blau.
3. **Hexadezimal-Farben**: Alternative Methode zur Darstellung von Farben mit sechs Zeichen.

Diese Farbwerte werden oft in Farbwählern oder aus Farbpaletten kopiert und in CSS verwendet. Das Verständnis der Grundlagen dieser Farbsysteme ermöglicht es, eine breite Palette an Farben präzise zu definieren und anzuwenden.

## Text Eigenschaften

Verstanden, hier sind vereinfachte Beispiele ohne Verwendung von Klassen, IDs oder fortgeschrittenen Selektoren:

### Textausrichtung

Die Eigenschaft `text-align` wird verwendet, um die horizontale Ausrichtung des Textes innerhalb eines Elements festzulegen. Hier ist ein einfaches Beispiel:

```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Textausrichtung</title>
    <style>
        h1 {
            text-align: center;
        }
        p {
            text-align: right;
        }
    </style>
</head>
<body>
    <h1>Willkommen auf meiner Seite</h1>
    <p>Dies ist ein rechts ausgerichteter Absatz.</p>
</body>
</html>
```

### Schriftstärke

Mit der Eigenschaft `font-weight` können wir die Stärke des Textes steuern. Hier ist ein einfaches Beispiel:

```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Schriftstärke</title>
    <style>
        h1 {
            font-weight: normal;
        }
        p {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Normale Schrift</h1>
    <p>Fetter Text</p>
</body>
</html>
```

### Textdekoration

Mit der Eigenschaft `text-decoration` können wir dekorative Linien auf Text steuern. Hier ist ein einfaches Beispiel:

```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Textdekoration</title>
    <style>
        h1 {
            text-decoration: underline;
        }
        p {
            text-decoration: line-through;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h1>Unterstrichener Text</h1>
    <p>Durchgestrichener Text</p>
    <a href="#">Ein Link ohne Unterstreichung</a>
</body>
</html>
```

### Zeilenhöhe

Mit der Eigenschaft `line-height` können wir die Höhe einer Textzeile steuern. Hier ist ein einfaches Beispiel:

```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Zeilenhöhe</title>
    <style>
        p {
            line-height: 2;
        }
    </style>
</head>
<body>
    <p>Dies ist ein Absatz mit doppelter Zeilenhöhe.</p>
    <p>Noch ein Absatz mit doppelter Zeilenhöhe.</p>
</body>
</html>
```

### Buchstabenabstand

Mit der Eigenschaft `letter-spacing` können wir den Abstand zwischen den Buchstaben steuern. Hier ist ein einfaches Beispiel:

```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Buchstabenabstand</title>
    <style>
        h1 {
            letter-spacing: 5px;
        }
        p {
            letter-spacing: 2px;
        }
    </style>
</head>
<body>
    <h1>Großer Buchstabenabstand</h1>
    <p>Kleinerer Buchstabenabstand</p>
</body>
</html>
```

Diese Beispiele sind bewusst einfach gehalten, um die Grundkonzepte klar darzustellen.