<img src="Techstarter.svg" style="height: 50px; width: auto">


### Paragraph
das nächste Element, das wir kennenlernen werden, das Absatz-Element. Es dient dazu, Text auf unseren Websites zu formatieren und einzufügen.

Ein Absatz-Element besteht aus einem öffnenden Tag `<p>` und einem schließenden Tag `</p>`, zwischen denen sich der Text des Absatzes befindet. Ohne das Absatz-Tag würde einfacher Text auf einer Website zusammengequetscht erscheinen, ohne klare Absatzstruktur.

Um zu üben, wie das Absatz-Element verwendet wird, können Sie die Übung mit dem Paragraph-Element ausführen. Laden Sie die entsprechende Datei aus den Kursressourcen herunter, extrahieren Sie sie und öffnen Sie sie in VS Code. Die Aufgabe besteht darin, die Absätze im Code mit dem Absatz-Tag zu formatieren, um sicherzustellen, dass sie in der Vorschau als separate Absätze angezeigt werden.

Wenn Sie den Code bearbeiten, fügen Sie die `<p>`-Tags um jeden Absatz herum ein. Überprüfen Sie die Live-Vorschau, um sicherzustellen, dass die Absätze nun klar voneinander getrennt sind.

Lorem Ipsum ist ein beliebter Platzhaltertext, der in Webdesigns verwendet wird. Er simuliert natürlichen Text und ist nützlich, wenn echter Inhalt nicht verfügbar ist. Sie können Websites wie lipsum.com besuchen, um Lorem Ipsum-Texte in verschiedenen Sprachen zu generieren. Es gibt auch unterhaltsame Varianten wie Bacon Ipsum oder Bro Ipsum für humorvolle Platzhaltertexte.

### Self Closing Tags

In dieser Lektion haben wir uns mit nichtigen HTML-Elementen wie der horizontalen Regel und dem Zeilenumbruch-Element vertraut gemacht.

Nichtige Elemente unterscheiden sich von nicht-leeren Elementen dadurch, dass sie keinen Inhalt zwischen den Tags zulassen. Ein nichtiges Element wird durch den Einsatz eines selbstschließenden Tags gekennzeichnet, bei dem der Schrägstrich direkt vor dem Ende des Tags steht.

Ein Beispiel für ein nichtiges Element ist das horizontale Regelelement `<hr/>`, das eine horizontale Linie auf der Webseite darstellt. Durch die Verwendung dieses Elements können wir Inhalte visuell voneinander trennen.

Ein weiteres nichtiges Element ist das Zeilenumbruch-Element `<br/>`, das verwendet wird, um innerhalb eines Absatzes oder anderer Textelemente eine neue Zeile zu erzwingen. Dies ist besonders nützlich bei der Formatierung von Gedichten oder Adressen, wo der Inhalt logisch zusammengehört, aber visuell in separaten Zeilen dargestellt werden soll.

Um die Übung mit nichtigen Elementen durchzuführen, laden Sie die Startdateien aus den Kursressourcen herunter und bearbeiten Sie die Indexdatei, um das gewünschte Layout zu erreichen. Stellen Sie sicher, dass Sie das `<hr/>`-Element verwenden, um die Adresse vom Beschreibungstext zu trennen, und das `<br/>`-Element, um die Adresszeilen zu formatieren.

Bei der Verwendung nichtiger Elemente ist es wichtig, darauf zu achten, dass sie korrekt angewendet werden, um die Zugänglichkeit der Webseite nicht zu beeinträchtigen. Es ist ratsam, Absatzelemente für Absätze zu verwenden und nicht das `<br/>`-Element als Ersatz zu missbrauchen, da dies die Lesbarkeit für Bildschirmleser beeinträchtigen kann.

Abschließend sei darauf hingewiesen, dass es zwar gültig ist, nichtige Elemente ohne abschließenden Tag zu verwenden, es jedoch empfehlenswert ist, den selbstschließenden Tag zu verwenden, um die Lesbarkeit des Codes zu verbessern und eine klare Unterscheidung zwischen nichtigen und nicht-leeren Elementen zu ermöglichen.

### Boilerplate

Ähnlich wie bei einem Brief gibt es einen Standardaufbau, den man folgt, wenn man eine HTML-Datei erstellt. Dieser Standardaufbau wird als Boilerplate bezeichnet und dient als Grundlage für die Erstellung einer Website.

Die Lektion beginnt damit, die Bedeutung und Struktur der HTML-Boilerplate zu erklären. Der Vergleich mit einem Brief wird herangezogen, um die Analogie zu verdeutlichen. Eine HTML-Boilerplate besteht aus verschiedenen Elementen, die in einer bestimmten Reihenfolge angeordnet sind.

Zuerst wird die Doctype-Deklaration erklärt, die angibt, welche HTML-Version verwendet wird. Dann folgt das HTML-Element, das die Wurzel des Dokuments darstellt und den gesamten HTML-Code umschließt. Es wird darauf hingewiesen, dass das lang-Attribut die Sprache des Textinhalts angibt, was besonders für unterstützende Technologien relevant ist.

Der Kopfbereich (head) einer HTML-Datei enthält wichtige Informationen über die Website, die dem Benutzer nicht angezeigt werden, wie z.B. die Zeichensatzkodierung und den Titel der Seite. Es wird empfohlen, den Zeichensatz auf UTF-8 einzustellen, um eine korrekte Darstellung der Zeichen zu gewährleisten.

Das Körper-Element (body) ist der Hauptbereich der HTML-Datei und enthält den sichtbaren Inhalt der Website, wie Text, Überschriften, Bilder und Links. Die Verschachtelung von HTML-Elementen wird anhand einer Analogie mit einem Burger verdeutlicht, wobei die Öffnung und Schließung von Tags wie das obere und untere Brötchen des Burgers sind.

Ein paar Meta-Tags im Kopfbereich der HTML-Datei werden erklärt, wie z.B. das Meta-Tag für die Zeichensatzkodierung und das Viewport-Meta-Tag, das angibt, wie die Website auf verschiedenen Geräten dargestellt werden soll.

Schließlich werden die Teilnehmer dazu ermutigt, ihre eigene HTML-Boilerplate zu erstellen, indem sie verschiedene Elemente wie Buns, Tomaten und Schinken hinzufügen. Die Bedeutung einer ordentlichen Einrückung des Codes wird betont, um die Lesbarkeit zu verbessern und eine klare Struktur zu gewährleisten.

### VS Code Tipp

Klar, ich fasse das für Sie zusammen und strukturiere es ein wenig. Hier sind die Schritte zur automatischen Formatierung von HTML-Code in Visual Studio Code:

### Automatische Formatierung von HTML in VS Code

1. **Befehlspalette öffnen:**
   - **Mac:** Drücken Sie `Cmd` + `Shift` + `P`
   - **Windows:** Drücken Sie `Ctrl` + `Shift` + `P`

2. **Dokument formatieren:**
   - Geben Sie in der Befehlspalette "Format Document" ein und wählen Sie den Befehl aus.
   - Alternativ können Sie die Tastenkombination verwenden:
     - **Mac:** `Shift` + `Option` + `F`
     - **Windows:** `Shift` + `Alt` + `F`

   Das Dokument wird automatisch formatiert, und der HTML-Code wird sauber eingerückt und organisiert.

3. **Automatische Formatierung beim Speichern aktivieren:**
   - Gehen Sie zu den Einstellungen:
     - **Mac:** `Cmd` + `,`
     - **Windows:** `Ctrl` + `,`
   - Suchen Sie nach "Format on Save" und aktivieren Sie die Einstellung.

### Vorteile der automatischen Formatierung
- **Sauberer und organisierter Code:** Der Code wird gut eingerückt und leicht lesbar.
- **Konsistenz:** Egal wie durcheinander der Code ist, er wird beim Formatieren oder Speichern immer konsistent strukturiert.
- **Zeitersparnis:** Keine manuelle Einrückung notwendig, was besonders bei großen Dokumenten hilfreich ist.

### Zusätzliche Hinweise
- Diese Formatierungsfunktion ist nicht nur auf HTML beschränkt, sondern funktioniert auch mit anderen Programmiersprachen.
- Die Formatierung hat keine Auswirkungen auf das gerenderte Ergebnis im Browser, sondern dient lediglich der besseren Lesbarkeit und Wartung des Codes.

Mit diesen Schritten können Sie sicherstellen, dass Ihr HTML-Code immer sauber und gut organisiert bleibt.

### Listen

https://www.esquire.de/news/gesellschaft/die-meistgesuchten-verbrecher-der-welt-fbi


Im Internet gibt es viele Listen, wie auf BuzzFeed. Wie erstellen wir diese Listen selbst? 

Beginnen wir mit der ungeordneten Liste. Mit dem `<ul>`-Tag und den `<li>`-Tags erstellen wir eine Liste von Elementen. Jede Liste benötigt Listenelemente, um Inhalte anzuzeigen.

Ungeordnete Listen verwenden Aufzählungspunkte, während geordnete Listen `<ol>` Zahlen verwenden. Diese werden in einer bestimmten Reihenfolge angezeigt.

Auf der FBI-Website mit den zehn meistgesuchten Flüchtigen sehen wir, dass sie ungeordnete Listen verwenden. Jedes Foto ist ein Listenelement in einer ungeordneten Liste.

Für unser Rezept verwenden wir ungeordnete Listen für die Zutaten und eine geordnete Liste für die Anweisungen. Laden Sie die Übungsdateien herunter, um diese Listen zu erstellen. 

Nun zu den Listen im Code: 
- Zutaten haben keine Reihenfolge, also verwenden wir `<ul>`.
- Anweisungen haben eine Reihenfolge, also verwenden wir `<ol>`. 

Ziehen Sie die Textzeilen in die `<li>`-Tags, um die Listen zu vervollständigen.

### Nesting 

Im Live Coding erklären
```HTML
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

### Anchor Tag

Hier ist die zusammengefasste Version deines Textes:

---

Als nächstes besprechen wir das Ankerelement, das A-Tag, mit dem wir Hyperlinks erstellen können. Damit können wir auf andere Webseiten, E-Mail-Adressen, Dateien oder Orte auf derselben Seite verlinken. 

Um einen Link zu erstellen, verwenden wir das A-Tag (`<a>`). Der Inhalt wird zwischen dem öffnenden und schließenden Tag platziert. Ein wichtiger Bestandteil ist das `href`-Attribut, das die Ziel-URL angibt. Zum Beispiel:

```html
<a href="http://www.google.com">Ich bin ein Link</a>
```

Dieser Code erzeugt einen anklickbaren Link zu Google. 

Wenn wir auf eine lokale Datei verlinken wollen, erstellen wir eine neue HTML-Datei und verlinken darauf relativ zum aktuellen Dokument:

```html
<a href="about.html">Über mich</a>
```

Das Attribut `href` kann auch innerhalb der gleichen Webseite verwendet werden, um zu einem bestimmten Abschnitt zu springen. 

Ankertags stehen inline und passen sich dem Fluss des restlichen Inhalts an, ähnlich wie ein fettes Element.

Ein Beispiel für einen Link zu Wikipedia:

```html
<a href="https://de.wikipedia.org/wiki/Geflügel">Geflügel</a>
```

Beim Klicken auf den Link gelangen wir zur entsprechenden Wikipedia-Seite.

Das ist die grundlegende Verwendung von Ankertags und Attributen in HTML. 

### Bilder

Eine Website wäre langweilig ohne Bilder. In dieser Lektion lernen wir, wie man mit dem Bildelement Bilder einfügt. Das Bildelement sieht so aus: `<img src="url" />`. Ähnlich wie beim Anker-Tag ist die Hauptkomponente das `src`-Attribut, das die Quelle des Bildes angibt.

Das Bild-Tag ist ein leeres Element und hat daher kein schließendes Tag. Der Textinhalt eines Bildes ist das Bild selbst, das aus der Quelle gerendert wird.

Ein Beispiel für ein Bildelement:

```html
<img src="https://picsum.photos/200" />
```

Dies zeigt ein zufälliges Bild von picsum.photos, das als Platzhalter für Fotos dient.

Ein wichtiges Attribut für das Bild-Tag ist das `alt`-Attribut, das eine alternative Textbeschreibung für blinde oder sehbehinderte Menschen bietet, die Bildschirmlesegeräte verwenden. Zum Beispiel:

```html
<img src="https://picsum.photos/200" alt="Wald bei Sonnenuntergang" />
```

Der Alt-Text wird vom Bildschirmlesegerät vorgelesen und hilft sehbehinderten Personen zu verstehen, worum es auf der Website geht.

Zum Beispiel bei der BBC-Website, wenn der Bildschirmleser auf ein Bild stößt, wird der Alt-Text vorgelesen, wie "Delfin, der aus dem Meer springt".

Für die Barrierefreiheit und bessere Nutzererfahrung sollten Sie immer einen Alt-Text hinzufügen.

Lassen Sie uns nun eine Übung machen: Erstellen Sie ein h1-Element mit "Ich bin ein Katzenmensch" oder "Ich bin ein Hundemensch" und fügen Sie direkt danach ein Bildelement ein. Verwenden Sie die bereitgestellten Bild-URLs.

Zum Beispiel für einen Hund:

```html
<h1>Ich bin ein Hundemensch</h1>
<img src="dog_image_url" alt="Hund wühlt im Sand" />
```

Für eine Katze:

```html
<h1>Ich bin ein Katzenmensch</h1>
<img src="cat_image_url" alt="Katze" />
```

GIF-Bilder funktionieren genauso wie normale Bilder, sie werden gerendert und beginnen zu animieren. Vergessen Sie nicht den Alt-Tag hinzuzufügen.

Im nächsten Teil werden wir ein abschließendes Projekt machen, bei dem wir eine Website für Geburtstagseinladungen erstellen und alle bisher erlernten Fähigkeiten anwenden.

### Kommentare

```HTML
<!-- Dies ist ein kommentar -->
```
