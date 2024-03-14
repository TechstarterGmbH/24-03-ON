---

class: invert

---

# Einführung in das Editieren von Text im Terminal

---

## Einleitung

- Warum Text im Terminal editieren?  
  - Direkte Manipulation von Dateien auf Servern oder in Entwicklungsumgebungen
  - Schnell und ressourcenschonend im Vergleich zu grafischen Editoren
  - Sieht cool aus und macht Spaß!

---

## Die Geschichte des Texteditings im Terminal

---

### Was ist "ed"?

- Der Urahn der Texteditoren im Terminal
- Zeilenorientierter Editor, der in den Anfängen von UNIX genutzt wurde

---

### Was ist "vi"?

- Ein Modus-basierter Texteditor, entwickelt in den frühen 70ern
- Bietet mehr Funktionalitäten im Vergleich zu "ed"

---

### Von "vi" zu "vim"

- "vim" steht für "Vi IMproved"
- Erweiterung von "vi" mit zusätzlichen Features wie Syntax-Highlighting

---

### Die Entstehungsgeschichte von "nano"

- Inspiriert von einem anderen Editor namens "Pico"
- Entwickelt, um einfach und leicht zugänglich zu sein

---

## Wichtige Dateien

---

### Was sind "dotfiles"?

- Versteckte Konfigurationsdateien im Home-Verzeichnis
- Beginnen mit einem Punkt (.)
- Enthalten Einstellungen für verschiedene Programme
- Beispiel: `.bashrc`, `.bash_history`

---

## Verständnis von .bashrc und .bash_history

---

### Was ist die .bashrc-Datei?

- Konfigurationsdatei für die Bash-Shell
- Definiert das Verhalten und Aussehen der Terminalumgebung
- **Wird jedes Mal beim Starten einer neuen Shell ausgeführt**

---

### Was ist die .bash_history-Datei?

- Speichert die Befehlshistorie der Shell
- Ermöglicht schnellen Zugriff auf früher eingegebene Befehle
- Kann auch mit dem Befehl `history` eingesehen werden

---

## Einführung in nano

![w:400](./assets/imgs/nano.png)

---

### Warum "nano"?

- Benutzerfreundlich und leicht zu erlernen
- Ideal für Anfänger und schnelle Bearbeitungen
- Bietet grundlegende Funktionen für das Editieren von Text
- **Standardmäßig auf vielen Linux-Systemen installiert**
- Für fortgeschrittene Anwender: "vim" oder "emacs"

---

### Installation und Aufruf von nano

- Installation meist über den Paketmanager der Distribution
- Auf Ubuntu is `nano` standardmäßig installiert
- Aufruf im Terminal mit `nano dateiname`

---

### Wichtige Befehle von nano

- Speichern mit `Ctrl + O`
- Beenden mit `Ctrl + X`
- Hilfe mit `Ctrl + G`

---

### Textbearbeitung in nano

- Direkte Texteingabe und -editierung
- Navigation mit den Pfeiltasten
