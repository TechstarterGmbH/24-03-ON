<img src="Techstarter.svg" style="height: 50px; width: auto">


### Forms

### Grundlegende Elemente eines Formulars

Das häufigste Steuerelement in Formularen ist das `<input>`-Element, das vielseitig einsetzbar ist und für über 20 verschiedene Eingabearten verwendet werden kann. Je nach Typ des Eingabeelements ändert sich das Verhalten und das Aussehen. Hier sind einige Beispiele:

- **Texteingabe**: 
  ```html
  <input type="text" name="username">
  ```
  Standardmäßig ist eine Texteingabe. Dies kann explizit durch `type="text"` festgelegt werden.

- **Passworteingabe**: 
  ```html
  <input type="password" name="password">
  ```
  Der eingegebene Text wird als Punkte oder Sterne angezeigt.

- **Farbauswahl**: 
  ```html
  <input type="color" name="favcolor">
  ```
  Ermöglicht die Auswahl einer Farbe über einen Farbwähler.

- **Nummerneingabe**: 
  ```html
  <input type="number" name="quantity">
  ```
  Ermöglicht die Eingabe von Zahlen und die Verwendung von Pfeiltasten zur Anpassung der Werte.

- **Zeiteingabe**: 
  ```html
  <input type="time" name="appt-time">
  ```
  Ermöglicht die Auswahl einer Uhrzeit.

### Attribute des `<input>`-Tags

Neben dem `type`-Attribut gibt es weitere wichtige Attribute für das `<input>`-Element:

- **Platzhalter**: 
  ```html
  <input type="text" name="username" placeholder="Enter your username">
  ```
  Zeigt einen Hinweistext an, der verschwindet, sobald der Benutzer mit der Eingabe beginnt.

### Labels in Formularen

Labels sind ein wichtiger Bestandteil von Formularen, da sie die Benutzerfreundlichkeit und Zugänglichkeit verbessern. Labels sind mit Eingabeelementen verknüpft und geben dem Benutzer an, was in die Eingabefelder eingegeben werden soll.

Zeigen im Browser!!

Es gibt zwei Hauptmethoden, um Labels mit Eingaben zu verknüpfen:

1. **Das `for`-Attribut des `<label>`-Elements**: Dieses Attribut verknüpft das Label mit einem bestimmten Eingabeelement durch die ID des Eingabeelements.
    ```html
    <label for="username">Username:</label>
    <input type="text" id="username" name="username">
    ```

2. **Verschachtelte Eingabeelemente**: Das Eingabeelement befindet sich innerhalb des `<label>`-Tags. Dies ist eine einfachere Methode, wenn keine IDs verwendet werden sollen.
    ```html
    <label>Username: <input type="text" name="username"></label>
    ```

### Zusammenspiel der Eingabeelemente und Labels

Ein vollständiges Formular könnte so aussehen:
```html
<form>
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" placeholder="Enter your username">
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" placeholder="Enter your password">
    
    <label for="favcolor">Favorite Color:</label>
    <input type="color" id="favcolor" name="favcolor">
    
    <label for="quantity">Quantity:</label>
    <input type="number" id="quantity" name="quantity">
    
    <label for="appt-time">Appointment Time:</label>
    <input type="time" id="appt-time" name="appt-time">
    
    <button type="submit">Submit</button>
</form>
```

### Zusammenfassung

Das `<form>`-Element in HTML ist ein Container für verschiedene Eingabeelemente, die den Benutzern eine strukturierte Methode zur Eingabe und Übermittlung von Daten bieten. Das `<input>`-Element ist äußerst vielseitig und kann durch das `type`-Attribut in verschiedene spezialisierte Eingabetypen verwandelt werden. Labels verbessern die Benutzerfreundlichkeit und Zugänglichkeit von Formularen, indem sie eindeutig anzeigen, was in die Eingabefelder eingegeben werden soll. Labels können entweder durch das `for`-Attribut oder durch Verschachtelung mit den Eingabeelementen verknüpft werden.

### Buttons

Buttons sind wichtige Elemente in HTML-Formularen, die es Benutzern ermöglichen, Aktionen auszulösen oder Auswahlmöglichkeiten zu bestätigen. Es gibt verschiedene Arten von Buttons, darunter:

1. **Submit-Button**: Ein Submit-Button wird verwendet, um das gesamte Formular an den Server zu senden. Wenn ein Benutzer auf einen Submit-Button klickt, werden die eingegebenen Daten an das in der `action`-Attribut des Formulars angegebene Ziel gesendet.

2. **Reset-Button**: Ein Reset-Button löscht alle Eingaben in einem Formular und setzt sie auf ihre Standardwerte zurück. Dies kann nützlich sein, wenn ein Benutzer das Formular neu ausfüllen möchte.

3. **Normaler Button**: Ein normaler Button wird verwendet, um benutzerdefinierte Aktionen innerhalb des Formulars auszulösen, die nicht unbedingt mit dem Senden von Daten zusammenhängen. Dies könnte beispielsweise das Hinzufügen einer neuen Zeile zu einer Liste sein oder das Öffnen eines Pop-up-Fensters.

Um einen Button in HTML zu erstellen, verwenden Sie das `<button>`-Element und geben Sie den gewünschten Text oder HTML-Inhalt zwischen den Öffnungs- und Schließtags ein. Sie können auch das `type`-Attribut verwenden, um anzugeben, ob der Button ein Submit-, Reset- oder normaler Button ist.

Zum Beispiel:
```html
<form action="/submit-form" method="post">
  <!-- Ein Submit-Button -->
  <button type="submit">Absenden</button>
  
  <!-- Ein Reset-Button -->
  <button type="reset">Zurücksetzen</button>

```

Es ist wichtig, klare und aussagekräftige Beschriftungen für Buttons zu verwenden, damit Benutzer verstehen, welche Aktion durch das Klicken auf den Button ausgeführt wird.  

### Radiobuttons, etc

In diesem Video werden verschiedene Eingabearten behandelt, die wir noch nicht gesehen haben, einschließlich Kontrollkästchen, Optionsfeldern, Dropdown-Menüs und Textbereichen.

Beginnen wir mit den Kontrollkästchen. Sie werden ähnlich wie andere Eingabefelder mit dem Typattribut erstellt, jedoch mit dem Typ "checkbox". Wir können ihnen einen Namen und eine ID geben, um sie zu identifizieren. Es ist wichtig, Kontrollkästchen zu kennzeichnen, damit Benutzer wissen, wofür sie stehen. Wir können auch festlegen, ob ein Kontrollkästchen standardmäßig aktiviert sein soll, indem wir das "checked"-Attribut verwenden.

Für die Erstellung eines Kontrollkästchens fügen wir einfach ein `<input>`-Element mit dem Typ "checkbox" hinzu und geben ihm einen Namen und optional eine ID. Dann können wir ein `<label>`-Element hinzufügen, um es zu beschriften.

```html
<input type="checkbox" id="terms" name="terms" checked>
<label for="terms">I agree to the terms and conditions</label>
```

Als nächstes kommen Optionsfelder, die ähnlich wie Kontrollkästchen sind, aber in einer Gruppe nur eine Option ausgewählt werden kann. Wir verwenden den Typ "radio" für Optionsfelder. Um sicherzustellen, dass sie gruppiert sind, geben wir ihnen denselben Namen.

```html
<input type="radio" id="size-small" name="size" value="small">
<label for="size-small">Small</label>
<input type="radio" id="size-medium" name="size" value="medium">
<label for="size-medium">Medium</label>
<input type="radio" id="size-large" name="size" value="large">
<label for="size-large">Large</label>
```

Für Dropdown-Menüs verwenden wir das `<select>`-Element und fügen `<option>`-Elemente für die Auswahlmöglichkeiten hinzu. Der Name wird verwendet, um die Auswahl an das Formular zu senden.

```html
<select id="meal" name="meal">
  <option value="fish">Fish</option>
  <option value="vegetarian">Vegetarian</option>
  <option value="steak" selected>Steak</option>
</select>
```

Mit diesen Eingabeelementen können wir Benutzern mehrere Möglichkeiten zur Interaktion mit einem Formular geben.

### Range

In diesem Video schließen wir unsere Diskussion über Formularelemente ab, indem wir einige spezielle Eingabetypen behandeln, die nicht so häufig vorkommen. Ein Beispiel hierfür ist der Bereichseingabetyp, der einen Schieberegler erzeugt, mit dem Benutzer einen Wert aus einem festgelegten Bereich auswählen können. Dies wird mit dem `<input>`-Element und dem Typattribut "range" erstellt. Wir können den minimalen und maximalen Wert des Bereichs sowie den Schritt festlegen, mit dem sich der Wert ändert.

```html
<input type="range" id="cheese" name="cheese" min="1" max="100" step="1" value="75">
<label for="cheese">Amount of cheese</label>
```

Als nächstes haben wir den Eingabetyp "number", der ähnlich wie der Bereichseingabetyp ist, aber mit einem numerischen Eingabefeld. Wir können auch den minimalen, maximalen und Schritt-Wert festlegen.

```html
<input type="number" id="men" name="men" min="1" max="1000" step="1" value="10">
<label for="men">Number of men</label>
```

Der Textbereich ist ein mehrzeiliges Eingabefeld, das mit dem `<textarea>`-Element erstellt wird. Wir können die Anzahl der Zeilen und Spalten sowie einen Platzhaltertext festlegen.

```html
<label for="requests">Special requests</label>
<textarea id="requests" name="requests" rows="10" cols="20" placeholder="Enter your requests here"></textarea>
```

Mit diesen speziellen Eingabetypen können wir Formulare auf vielfältige Weise gestalten und Benutzern mehr Kontrolle über ihre Eingaben geben.

### Form Validation

In diesem Video behandeln wir das Thema Validierung von Formularen. Validierung bezieht sich darauf, Einschränkungen oder Überprüfungen auf Benutzereingaben oder Daten anzuwenden. Dies kann verschiedene Formen annehmen, von der Überprüfung, ob Felder leer sind, bis hin zu komplexeren Anforderungen wie Passwortrichtlinien.

Wir konzentrieren uns auf die Validierung auf der Client-Seite, die dem Benutzer Feedback in Echtzeit gibt, während er Daten eingibt. Ein Beispiel hierfür sind die eingebauten Browser-Validierungen, die während der Eingabe auftreten, z. B. beim Ausfüllen eines Formulars auf einer Website wie Stripe.

Ein wichtiger Punkt ist, dass zusätzlich zur Client-Seiten-Validierung auch serverseitige Validierung erforderlich ist, um sicherzustellen, dass die übermittelten Daten den Erwartungen entsprechen und nicht manipuliert wurden.

Wir beginnen mit dem Attribut `required`, das angibt, dass ein Feld ausgefüllt werden muss, bevor das Formular gesendet werden kann. Durch Hinzufügen dieses Attributs zu einem `<input>`-Element wird das Feld obligatorisch.

```html
<input type="text" id="firstName" name="firstName" required>
<label for="firstName">First Name:</label>
```

Wir können auch die minimale und maximale Länge von Eingaben festlegen, indem wir die Attribute `minlength` und `maxlength` verwenden.

```html
<input type="text" id="username" name="username" minlength="5" maxlength="20" required>
<label for="username">Username:</label>
```

Diese eingebauten Validierungen bieten eine benutzerfreundliche Möglichkeit, die Qualität der Benutzereingaben zu verbessern, bevor das Formular gesendet wird.