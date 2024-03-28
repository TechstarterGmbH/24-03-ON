---

class: invert

---
# Linux Streams und Pipelines

---
## Einführung

### Verständnis von Streams und Pipelines
- **Streams**: Kanäle, durch die Daten in Linux fließen.
- **Pipelines**: Mechanismen zum Verketten von Befehlen, um komplexe Operationen auszuführen.
---
#### Analogie: Wasserrohre in einem Haus
- **Stdin**: Ähnlich dem Wasser, das in ein Haus fließt.
- **Stdout**: Ähnelt dem Wasser, das aus verschiedenen Auslässen fließt.
- **Stderr**: Stellt eventuelle Lecks oder Fehler im Rohrsystem dar.
---
### Bedeutung des Verständnisses von Streams
- **Jedes Programm hat Streams**: Alle Programme in Linux interagieren mit Streams.
- **Ausgabeberichterstattung**: Der Erfolg oder Misserfolg der Programmausführung wird über Streams gemeldet.
- **Verständnis von Streams**: Wesentlich für effektive Fehlersuche und -behebung.
---
### Wo befinden sich die Streams?
- **stdin**: Standard-Eingabestrom, normalerweise mit der Tastatur verbunden. 0
- **stdout**: Standard-Ausgabestrom, der normalerweise auf dem Terminal angezeigt wird. 1
- **stderr**: Standardfehlerstrom, der für Fehlermeldungen verwendet wird und ebenfalls auf dem Terminal angezeigt wird. 2
---
#### Anzeigen von Streams
- **Umleitungen**: Werkzeuge wie `>` (stdout) und `2>` (stderr) leiten Streams in Dateien um.
- **Piping**: Ermöglicht die Umleitung der Ausgabe eines Befehls an die Eingabe eines anderen.
---
## Textstreams mit Filtern verarbeiten

### Was sind Filter?
- Programme, die Eingaben entgegennehmen, verarbeiten und Ausgaben erzeugen.
- Beispiele: `grep`, `sed`.
---
### Demo: Textfilterung
- Beispiel: Suche nach bestimmten Mustern mit `grep`.
- Praktische Übung: Filterung und Modifizierung von Text mit `sed`.
---
## Verwenden von Streams, Pipes und Umleitungen

### Streams in Linux
- **Standard-Streams**: `stdin`, `stdout` und `stderr`.
- **Umleitung**: Lenkt die Ausgaben von Streams auf verschiedene Ziele um.
---
### Umleiten von Streams
- **>`**: Leitet stdout in eine Datei um. Beispiel: `Befehl > ausgabe.txt`.
- **`>>`**: Hängt stdout an eine Datei an. Beispiel: `Befehl >> ausgabe.txt`.
- **`|`**: Leitet stdout eines Befehls als Eingabe an einen anderen Befehl. Beispiel: `Befehl1 | Befehl2`.
---
### Pipes: Das Bindeglied im Linux-Ökosystem
- **Was sind Pipes?**: Mechanismus zum Weiterleiten der Ausgabe eines Befehls als Eingabe an einen anderen.
- **Pipe-Operator**: `|`
---
### Demo: Erstellen von Pipelines
- Beispiel: Kombination von `grep` und `sort` zur Datenverarbeitung.
- Praktische Übung: Erstellen einer Datenverarbeitungspipeline zur Extraktion spezifischer Informationen.
---
## Gruppenarbeit: Skriptübung

### Ziel
- Anwendung der erlernten Konzepte zur Lösung eines realen Problems.
- Entwicklung eines Skripts unter Verwendung von Streams, Filtern und Pipelines.
---
## Vertiefung in Streams

### Verständnis von Streamausgaben
- **Erfolgreiche Ausführung**: Ausgabe erfolgt über stdout.
- **Misserfolgreiche Ausführung**: Fehler werden über stderr gemeldet.
---
### Umleiten von Streams
- **stdout-Umleitung**: `>` Operator.
- **stdout-Anhängen**: `>>` Operator.
- **stderr-Umleitung**: `2>` Operator.
---
### Anzeigen von Streams
- **stdout**: `cat`, `less`, `more`.
- **stderr**: `cat`, `less`, `more`.
---
## Schlussfolgerung
---
### Zusammenfassung
- Überprüfung grundlegender Konzepte von Linux-Streams und -Pipelines.
- Praktische Anwendungen durch Beispiele und Übungen demonstriert.
---
### Frage-und-Antwort-Sitzung
- Fragen?
---