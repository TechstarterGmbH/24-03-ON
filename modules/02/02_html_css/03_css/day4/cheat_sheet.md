### CSS Box-Modell Cheat Sheet:

Das CSS-Box-Modell beschreibt, wie Elemente auf einer Webseite in Boxen modelliert werden, die verschiedene Eigenschaften wie Inhalt, Padding, Border und Margin haben. Hier ist ein Überblick über die Schlüsselkonzepte:

1. **Content (Inhalt):**
   - Der eigentliche Inhalt des Elements.
   - Definiert durch die Breite (`width`) und Höhe (`height`) des Elements.

2. **Padding (Innenabstand):**
   - Der Raum zwischen dem Inhalt des Elements und seiner Grenze (Border).
   - Definiert durch `padding-top`, `padding-right`, `padding-bottom` und `padding-left`.
   - Beispiel: `padding: 10px;` oder `padding: 10px 20px;` (oben/unten, links/rechts) oder `padding: 10px 20px 30px 40px;` (oben, rechts, unten, links).

3. **Border (Rahmen):**
   - Eine Linie um den Inhalt und das Padding herum.
   - Definiert durch `border-width`, `border-style` und `border-color`.
   - Beispiel: `border: 1px solid black;`.

4. **Margin (Außenabstand):**
   - Der Raum zwischen den Grenzen (Border) des Elements und seinen Nachbarelementen.
   - Definiert durch `margin-top`, `margin-right`, `margin-bottom` und `margin-left`.
   - Beispiel: `margin: 10px;` oder `margin: 10px auto;` (oben/unten, links/rechts zentriert) oder `margin: 10px 20px 30px 40px;` (oben, rechts, unten, links).

### Box-Modell Diagramm:

```
 ____________________________________________
|                  Margin                    |
|  ________________________________________  |
| |             Border                     | |
| |  __________________________________  | |
| | |            Padding               | | |
| | |  ______________________________  | | |
| | | |            Content           | | | |
| | | |                              | | | |
| | | |                              | | | |
| | | |______________________________| | | |
| | |__________________________________| | |
| |______________________________________| |
|__________________________________________|
```

