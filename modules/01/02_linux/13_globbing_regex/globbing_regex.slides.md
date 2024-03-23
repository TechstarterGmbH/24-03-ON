---

class: invert

---

# Einführung in Shell Globbing und Regular Expressions

---

## Shell Globbing

---

## Was ist Shell Globbing

```bash
ls *.txt
```

---

- Stellt euch vor, ihr seid in einem riesigen Lager voller Kisten und ihr habt eine Liste von Kisten, die ihr finden müsst.
- **Shell Globbing** ist wie ein magisches Werkzeug, das euch sofort alle Kisten zeigt, die einem bestimmten Muster entsprechen.
- Es arbeitet mit Wildcards wie `*` und `?`, um eine breite Palette von Dateinamen zu matchen oder auszuschließen.

---

## Wie Shell Globbing funktioniert

- **Shell Globbing** ist ein eingebauter Mechanismus in der Shell, der Dateinamen basierend auf Mustern matcht.
- Es ist ein leistungsstarkes Werkzeug, um Dateien zu finden, zu kopieren, zu verschieben oder zu löschen.
- **Wildcards** sind die Zauberformeln des Globbing.
- Es gibt zwei Haupt-Wildcards: `*`, `?`.
- Nach dem Matchen werden die Dateinamen an den Befehl übergeben.

---

### Wildcard `*`

- `*` steht für **null** oder mehr **Zeichen**.
- `*.txt` findet alle Dateien, die mit `.txt` enden (z.B. `bericht.txt`, `daten.txt` aber auch `.txt`).
- `A*` findet alle Dateien, die mit `A` beginnen (z.B. `Abc`, `Aber.pdf`).

---

### Wildcard `?`

- `?` steht für **genau ein** Zeichen.
- `?.txt` findet alle Dateien, die mit einem einzelnen Zeichen beginnen und mit `.txt` enden (z.B. `A.txt`, `1.txt`).
- `A?.txt` findet alle Dateien, die mit `A` beginnen, gefolgt von einem einzelnen Zeichen und mit `.txt` enden (z.B. `Ab.txt`, `A1.txt`).

---

## Wichtige Shell Globbing Beispiele

- Beschreibe die folgenden Beispiele mit eigenen Worten!

---

### `*.html`

---

- `*.html` findet alle HTML-Dateien (im aktuellen Verzeichnis).
- ["index.html", "about.html", "contact.html", ".html"]

---

### `Dokumente/202?.docx`

---

- `Dokumente/202?.docx` findet alle Word-Dokumente der 2020er Jahre im Ordner Dokumente.
- ["Dokumente/2020.docx", "Dokumente/2021.docx", "Dokumente/2022.docx"]

---

### `A*`

---

- `A*` findet alle Dateien, die mit `A` beginnen.
- ["A.txt", "Abc.docx", "Aber.pdf", "A"]

---

### `Bilder/2?/*.jpg`

---

- `Bilder/2?/*.jpg` findet alle `.jpg` Bilder im Ordner `Bilder` für die Jahre 2020-2029.

---

### `*.*`

---

- `*.*` findet alle Dateien mit einer Dateierweiterung.
- ["bericht.txt", "daten.csv", "bild.jpg"]

---

## Wie werden Wildcards aufgelöst?

- Die Shell löst Wildcards auf, indem sie die Dateinamen im aktuellen Verzeichnis mit dem Muster vergleicht.
- Wenn ein Muster übereinstimmt, wird es durch den tatsächlichen Dateinamen ersetzt.
- Wenn kein Muster übereinstimmt, wird das Muster unverändert gelassen.
- Das Ergebnis wird an den Befehl übergeben.
- Bei mehreren Ergebnissen, werden die Dateinamen durch Leerzeichen getrennt.

---

### Beispiel: `*.txt`

```bash
ls
# bericht.txt daten.txt
```

```bash
cat *.txt

# wird zu
cat bericht.txt daten.txt
```

---

## Was sind Regular Expressions (Regex)

- **Shell Globbing** ist ausschließlich auf Dateinamen beschränkt.
- **Regular Expressions (Regex)** sind mächtige Mustererkennungswerkzeuge, die auf Texten angewendet werden.
- Sie sind in vielen Programmiersprachen und Tools verfügbar, z.B. `grep`, `sed`, `Python`, `JavaScript`, und viele mehr.
- Regex ermöglicht es, komplexe Muster zu definieren, um Texte zu durchsuchen, zu ersetzen oder zu segmentieren.

---

### Use cases für Regular Expressions

- Finde alle E-Mail-Adressen in einem Text.
- Prüfe ob diese Telefonnummer gültig ist.
- Extrahiere alle URLs aus einem HTML-Dokument.
- Ersetze alle Datumsformate von `MM-DD-YYYY` zu `YYYY-MM-DD`.

---

## Funktionsweise

- Grundsätzlich gibt es zwei Arten von Zeichentypen:
  - Zeichen was für ein bestimmtes Zeichen steht.
  - Zeichen, was angibt, wie oft das vorherige Zeichen vorkommen soll.

---

## Grundlegende Regex Symbole und deren Bedeutung

- `.` (Punkt) steht für jedes Zeichen außer dem Zeilenumbruch.
- `[]` definiert eine Zeichenauswahl. `[a-z]` matcht jeden Kleinbuchstaben.
- `*` steht für null oder mehr Wiederholungen des vorherigen Zeichens.
- `?` macht das vorherige Zeichen optional (null oder ein mal vorkommen).

---

### Welches Zeichen wird gematcht?

---

#### `.` (Punkt)

- `.` steht für jedes Zeichen außer dem Zeilenumbruch.
- `a.` matcht `ab`, `ac`, `ad`, aber nicht `a` oder `abc`.
- `a.` findet `a` gefolgt von einem beliebigen Zeichen.
- `a...e` findet `a` gefolgt von genau 3 Zeichen und `e`.

---

#### `[]` (Zeichenauswahl)

- `[a-z]` matcht jeden Kleinbuchstaben.
- `[A-Z]` matcht jeden Großbuchstaben.
- `[0-9]` matcht jede Ziffer.
- `[a-zA-Z]` matcht jeden Buchstaben.
- `[a-zA-Z0-9]` matcht jeden Buchstaben und jede Ziffer.
- `[aeiou]` matcht jeden Vokal.
- `[a-z0-9]` matcht jeden Kleinbuchstaben und jede Ziffer.
- `[FABIO]` matcht jeden Buchstaben in `FABIO`.
- **Insgesamt matcht die Zeichenauswahl ein Zeichen.**

---

### Wie oft kommt das Zeichen vor?

---

#### `*` (null oder mehr)

- **ACHTUNG**: Nicht zu verwechseln mit Shell-Globbing!
- `a*` matcht `a`, `aa`, `aaa`, aber auch `''` (leer).
- `.*` matcht jedes Zeichen null oder mehr mal. (Ähnlich wie `*` in Shell-Globbing).
- `[a-z]*` matcht jeden Kleinbuchstaben null oder mehr mal.

---

##### Unterschied zwischen Shell-Globbing und Regex `*`

- Shell-Globbing: `*` steht für null oder mehr Zeichen.
- Regex: `*` steht für null oder mehr Wiederholungen des vorherigen Zeichens.

---

#### `?` (null oder eins)

- `a?` matcht `a` oder `''` (leer).
- `a.?` matcht `a.`, `ab`, aber auch `a` oder `a?`.
- `a.?b` matcht `ab`, `aeb`, aber auch `a#b`.
- `[a-z]?` matcht jeden Kleinbuchstaben oder `''` (leer).

---

### Regex Beispiele

---

#### `.*.txt`

---

- `.*.txt` findet alle Dateien, die `.txt` enthalten.
- ["bericht.txt", "daten.txt", "bild.txt", ".txt"]

---

#### `a.*b`

---

- `a.*b` findet alle Zeichenketten, die mit `a` beginnen und mit `b` enden.
- ["ab", "acb", "a#b", "a1235987459872452b"]

---

#### `[a-z]*`

---

- `[a-z]*` findet alle Zeichenketten, mit Kleinbuchstaben.
- ["abc", "def", "g", ""]

---

#### `a?b`

---

- `a?b` findet entweder `ab` oder `b`.

---

#### `[a-z]?`

---

- `[a-z]?` findet entweder ein Kleinbuchstaben oder `''` (leer).

---

## Fragen
