---

class: invert

---

# Einführung in die Quotations in der Shell

## Quotation -> Anführungszeichen!

---

## Was du von diesem Kurs erwarten kannst

- Verständnis der Grundlagen von Quotations / Anführungszeichen in der Shell
- Erkennen der Unterschiede und Anwendungen von einfachen (`'`) und doppelten (`"`) Anführungszeichen
- Praktische Übungen zur Festigung des Gelernten

---

## Wie dieser Kurs organisiert ist

1. Grundlagen der Quotations / Anführungszeichen
2. Verwendung von einfachen Anführungszeichen (`'`)
3. Verwendung von doppelten Anführungszeichen (`"`)
4. Vergleich zwischen einfachen und doppelten Anführungszeichen
5. Fortgeschrittene Techniken
6. Quiz

---

## Was sind Quotations / Anführungszeichen?

- Immer wenn man **Text** (also keine Commands etc) in der Shell verwendet, sollte man Quotations verwenden.
- Quotations sind **Anführungszeichen**, die in der Shell verwendet werden, um Text als **einen einzigen String** zu behandeln.
- Sie sind wie **Zäune**, die verhindern, dass die Shell den Text in seinem Inneren interpretiert.

---

## Warum sind Quotations / Anführungszeichen wichtig in der Shell?

- **Steuerung der Interpretation** von Spezialzeichen
- Ermöglichen die Verwendung von **Leerzeichen** in Dateinamen oder Befehlsargumenten
- Unterscheidung zwischen **literalen** und **interpretierten** Zeichenketten

---

## Arten von Quotations in der Shell: Einfache Anführungszeichen (`' ') und doppelte Anführungszeichen (" ")

- Einfache Anführungszeichen (`'`): Alles zwischen ihnen wird **literarisch** genommen (also genau so wie es da steht).
- Doppelte Anführungszeichen (`"`): Ermöglichen die Interpretation von **bestimmten Spezialzeichen** wie Variablen.

---

## Verwendung von Simple Quotations (`'`)

### Wie man Simple Quotations (`'`) in der Shell verwendet

- Umgebene Texte werden **genau wie angegeben** behandelt, ohne Ausnahme.

### Warum und wann

- Verwenden, wenn du **genau den Text** möchtest, den du eingibst, ohne dass die Shell ihn interpretiert.
- Nützlich für **feste Werte** oder **Pfade mit Leerzeichen**.

### Übungen zur Verwendung von Simple Quotations (`'`)

1. Erstelle eine Datei mit einem Leerzeichen im Namen: `touch 'meine datei.txt'`
2. Echo eines Textes mit Spezialzeichen: `echo '$HOME ist dein Home-Verzeichnis'`

---

## Verwendung von Double Quotations (`"`)

### Wie man Double Quotations (`"`) in der Shell verwendet

- Erlaubt der Shell, **Variablen** zu expandieren und **bestimmte Escape-Sequenzen** zu interpretieren.

### Warum und wann

- Verwenden, wenn du **Variablenwerte** einbeziehen oder **Escape-Sequenzen** nutzen möchtest.
- Ideal für Texte, die eine **dynamische Interpretation** erfordern.

### Übungen zur Verwendung von Double Quotations (`"`)

1. Echo eines Variablenwertes: `echo "Dein Home-Verzeichnis ist $HOME"`
2. Verwendung von Escape-Sequenzen: `echo "Zeilenwechsel\nerfolgt hier"`

---

## Vergleich und Kontraste zwischen Simple und Double Quotations

### Unterschiede

- `'` bewahrt den **literalen Wert** jedes Zeichens innerhalb der Anführungszeichen.
- `"` erlaubt **Interpretation** von Variablen und Escape-Sequenzen.

### Gemeinsamkeiten

- Beide verhindern die Interpretation von **Leerzeichen** als Argumenttrenner.
- Beide ermöglichen die Gruppierung von **Text als einen einzigen String**.

### Wann man was verwendet

- Verwende `'`, wenn du **keine Variablenexpansion** oder **Escape-Sequenzen** benötigst.
- Verwende `"`, wenn du **dynamischen Inhalt** wie Variablenwerte einbeziehen möchtest.

---

## Fortgeschrittene Quotation Techniken in der Shell

### Escape-Sequenzen in Quotations: Der Backslash (`\`)

- Der Backslash (`\`) ist wie ein **Unsichtbarkeitsumhang** für Spezialzeichen.
- Ermöglicht die Verwendung von Zeichen, die sonst eine **spezielle Bedeutung** hätten.

---

## Quiz

---

## mkdir mein ordner

---

## mkdir 'mein ordner'

- Keine Quotations -> `mein` und `ordner` werden als separate Argumente interpretiert.

---

## mkdir $HOME/mein ordner

---

## mkdir "$HOME/mein ordner"

- Doppelte Quotations -> `$HOME` wird als Variable interpretiert.

---

## touch meine$datei.txt

Datei soll exakt `meine$datei.txt` heißen.

---

## touch 'meine$datei.txt'

- Simple Quotations -> `$datei` wird als Text interpretiert.

---

## echo export PATH=$PATH:/home/fabio/bin > ~/.bashrc

---

## echo 'export PATH=$PATH:/home/fabio/bin' > ~/.bashrc

- Simple Quotations -> `$PATH` wird als Text interpretiert.

---

## echo $PWD ist dein aktuelles Verzeichnis

---

## echo "$PWD ist dein aktuelles Verzeichnis"

- Doppelte Quotations -> `$PWD` wird als Variable interpretiert.

---
