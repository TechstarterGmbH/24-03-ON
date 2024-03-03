# Schritt-für-Schritt Guide: Virtuelle Maschine mit Ubuntu in VirtualBox

## Einleitung

In diesem Guide lernst du, wie du eine virtuelle Maschine (VM) mit Ubuntu in VirtualBox auf einem Windows-System einrichtest.
Eine virtuelle Maschine ermöglicht es dir, ein Betriebssystem innerhalb eines anderen Betriebssystems auszuführen, was ideal ist, um neue Betriebssysteme zu testen oder Software in isolierten Umgebungen zu entwickeln.

Schaue dir für eine Ausführlichere Anleitung folgenden Guilde an [VirtualBox Guide](https://kofler.info/ubuntu-22-04-in-virtualbox-7-unter-windows/)

## Schritt 1: VirtualBox installieren

1. Gehe zu [VirtualBox Download-Seite](https://www.virtualbox.org/wiki/Downloads) und lade die neueste Version für Windows herunter.
1. Führe die heruntergeladene Datei aus und folge den Installationsanweisungen.

## Schritt 2: Ubuntu ISO-Datei herunterladen

1. Besuche die [Ubuntu-Download-Seite](https://ubuntu.com/download/desktop) und lade die Version 22.04.4 LTS von Ubuntu herunter.

## Schritt 3: Virtuelle Maschine erstellen

1. Öffne VirtualBox und klicke auf "Neu", um eine neue virtuelle Maschine zu erstellen.
1. Gib der VM einen Namen (z.B. "Ubuntu VM") und wähle als Typ "Linux" und als Version "Ubuntu (64-bit)" aus.
1. Weise der VM mindestens 4 GB RAM zu.
1. Erstelle eine neue virtuelle Festplatte mit mindestens 25 GB.
1. Stelle sicher, dass der Haken bei `Skip unattended installation` NICHT gesetzt ist.
1. Setze ein Password und Username für die Installation.
1. Die VM wird nun erstellt und du kannst sie starten.

## Schritt 4: Erste Schritte in Ubuntu

### Der Desktop

- Erkunde die Benutzeroberfläche, öffne das Anwendungsmenü und schaue dir die vorinstallierten Programme an.

### Einstellungen

- Klicke auf das Zahnrad-Symbol in der oberen rechten Ecke, um auf die Systemeinstellungen zuzugreifen. Hier kannst du das Hintergrundbild ändern, Netzwerkeinstellungen anpassen und vieles mehr.

### Das Terminal

- Öffne das Terminal, um Befehle einzugeben. Du findest es im Anwendungsmenü oder indem du `Ctrl + Alt + T` drückst.

### Grundlagen der Kommandozeilenprogramme

#### Eingabeaufforderung (Prompt)

- Die Eingabeaufforderung, oft als Prompt bezeichnet, ist eine Zeile in der Kommandozeile, die darauf wartet, dass Befehle eingegeben werden.
- Sie zeigt in der Regel den aktuellen Benutzernamen, den Namen des Computers und das aktuelle Verzeichnis an.
- Beispiel: `benutzername@computername:~$`

#### Befehlseingabe

- Um ein Kommandozeilenprogramm zu nutzen, tippst du einfach den Befehl und eventuelle Argumente oder Optionen in die Eingabeaufforderung und drückst Enter.
- Der Befehl wird vom Shell-Interpreter verarbeitet, der dann die angeforderte Operation ausführt.

#### Argumente und Optionen

- Viele Befehle erfordern Argumente, die spezifizieren, auf welche Dateien oder Verzeichnisse der Befehl angewendet werden soll.
- Optionen (oft mit einem Bindestrich `-` oder zwei Bindestrichen `--` eingeleitet) ändern das Verhalten eines Befehls. Sie können Befehle anweisen, bestimmte Aktionen auszuführen oder zusätzliche Informationen anzuzeigen.

### Grundlegende Befehle

#### `ls` - Auflisten von Dateien und Verzeichnissen

- Der Befehl `ls` wird verwendet, um die Inhalte eines Verzeichnisses anzuzeigen.
- Wenn du `ls` ohne Parameter ausführst, werden die Inhalte des aktuellen Verzeichnisses angezeigt.
- Beispiel: Gib `ls` im Terminal ein und drücke Enter, um zu sehen, welche Dateien und Ordner sich im aktuellen Verzeichnis befinden.
- Mit dem Parameter `-l` werden die Inhalte in einer Liste angezeigt. `ls -l`

#### `cd [Verzeichnisname]` - Wechseln des Verzeichnisses

- `cd` steht für "change directory" (Verzeichnis wechseln).
- Mit diesem Befehl kannst du das aktuelle Verzeichnis ändern.
- Ersetze `[Verzeichnisname]` mit dem Pfad des Zielverzeichnisses.
- Beispiel: Möchtest du in den Ordner "Dokumente" wechseln, gib `cd Dokumente` ein und drücke Enter.

#### `pwd` - Anzeigen des aktuellen Verzeichnispfades

- `pwd` steht für "print working directory" (aktuelles Arbeitsverzeichnis ausgeben).
- Dieser Befehl zeigt den vollständigen Pfad des Verzeichnisses an, in dem du dich gerade befindest.
- Beispiel: Gib `pwd` ein und drücke Enter, um den Pfad des aktuellen Verzeichnisses anzuzeigen.

#### `mkdir [Verzeichnisname]` - Erstellen eines neuen Verzeichnisses

- `mkdir` steht für "make directory" (Verzeichnis erstellen).
- Mit diesem Befehl kannst du ein neues Verzeichnis erstellen.
- Ersetze `[Verzeichnisname]` mit dem Namen des zu erstellenden Verzeichnisses.
- Beispiel: Um einen Ordner namens "NeuerOrdner" zu erstellen, gib `mkdir NeuerOrdner` ein und drücke Enter.

#### `rm [Dateiname]` - Löschen einer Datei

- `rm` steht für "remove" (entfernen).
- Dieser Befehl wird verwendet, um eine Datei zu löschen.
- Ersetze `[Dateiname]` mit dem Namen der zu löschenden Datei.
- Achtung: `rm` löscht Dateien dauerhaft, ohne sie in einen Papierkorb zu verschieben. Sei also vorsichtig beim Einsatz dieses Befehls.
- Beispiel: Um eine Datei namens "Beispiel.txt" zu löschen, gib `rm Beispiel.txt` ein und drücke Enter.
- Um ein Verzeichnis zu löschen, verwende den Parameter `-r` für rekursives Löschen: `rm -r Verzeichnisname`
