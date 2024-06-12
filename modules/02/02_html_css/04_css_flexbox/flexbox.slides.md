---

class: invert

---

# Einführung in CSS Flexbox

## Was ist CSS Flexbox und warum benötigen wir es?

---

## Probleme

- Wie zentriere ich ein Bild im meinem Container?
- Wie kann ich die Höhe meiner Spalten angleichen?

---

### CSS Flexbox: Eine Einführung

- **CSS Flexbox**, kurz für Flexible Box Layout, ermöglicht es, komplexe Layouts effizient und flexibel zu gestalten.
- Es optimiert die Platzierung von Elementen in einem Container, so dass diese dynamisch auf Inhaltsänderungen oder Bildschirmgrößen reagieren können.

---

### Warum brauchen wir CSS Flexbox?

- Traditionelle Layout-Techniken wie das Blockmodell erfordern oft umfangreiche CSS-Anpassungen. Historisch wurden hier oft Tabellen verwendet, was komplex ist!
- Probleme wie ungleichmäßige Spaltenhöhen und schwierige Zentrierungen können Entwicklern Kopfzerbrechen bereiten.

---

### Die Lösung: Warum CSS Flexbox die Antwort ist?

- Flexbox bietet eine umfassende Lösung für die dynamische Ausrichtung und Verteilung von Inhalten, unabhängig von der Containergröße.
- Es erleichtert die Erstellung responsiver Designs erheblich, indem es sich nahtlos an die unterschiedlichsten Anzeigegeräte anpasst.

---

## Grundlagen von CSS Flexbox

- Flexbox funktioniert in einem Container und seinen Kindern.
- Zum Beispiel stell dir vor, wir haben ein `div`-Element, worin mehrere Bilder angezeigt werden sollen.
- Das `div` ist also der Container und die Bilder sind die Kinder/Elemente.

---

### Flexbox-Container

- Ein Flexbox-Container wird durch Setzen der Eigenschaft `display` auf `flex` oder `inline-flex` erstellt.
- Dieser Container kann nun seine Kinder (Flex-Items) in jeder gewünschten Richtung anordnen und deren Größe und Abstände flexibel verwalten.

---

### Flexbox-Elemente

- Als Flex-Items werden die direkten Kinder eines Flex-Containers bezeichnet.
- Diese Items passen sich automatisch den Anforderungen des Containers an, wobei ihre Größenverhältnisse erhalten bleiben können oder dynamisch angepasst werden.

---

### Hauptachsen und Kreuzachsen

- **Hauptachse**: Die Richtung, in der die Flex-Items innerhalb des Containers fließen. Standardmäßig ist dies horizontal (`row`), kann aber auf vertikal (`column`) umgestellt werden (`flex-direction`).
- **Kreuzachse**: Die Achse, die senkrecht zur Hauptachse steht. Die Ausrichtung hier steuert die vertikale Ausrichtung der Items, wenn die Hauptachse horizontal ist, und umgekehrt.

---

## Flexbox Eigenschaften

---

### Flexbox Container Eigenschaften

- `display: flex;`: Aktiviert das Flexbox-Modell für den Container.
- `flex-direction`: Bestimmt die Orientierung der Hauptachse (z.B. `row`, `row-reverse`, `column`, `column-reverse`).
- `flex-wrap`: Ermöglicht den Items, auf die nächste Zeile oder Spalte zu springen, wenn nicht genügend Platz vorhanden ist (`wrap`, `nowrap`).

---

### Wie platziert man die Elemente?

- `align-items`: Steuert die Ausrichtung der Items entlang der Kreuzachse (z.B. `stretch`, `center`, `flex-start`, `flex-end`).
- `justify-content`: Verteilt die Items entlang der Hauptachse (z.B. `flex-start`, `center`, `space-between`, `space-around`).

---

## Anwendungsbeispiel von CSS Flexbox
