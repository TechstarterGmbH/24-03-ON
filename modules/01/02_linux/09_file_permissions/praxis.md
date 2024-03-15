# Praktische Einführung in Dateiberechtigungen unter Linux

In dieser Anleitung wirst du lernen, wie man Dateiberechtigungen unter Linux versteht und verändert.
Wir werden Dateien erstellen, ihre Berechtigungen auslesen und anschließend modifizieren.
Das hilft dir, die Kontrolle über den Zugriff auf Dateien in einem Linux-System zu verstehen und zu steuern.

## Schritt 1: Terminal öffnen

Öffne das Terminal auf deinem Linux-System. Unter Ubuntu kannst du das Terminal mit der Tastenkombination `Strg` + `Alt` + `T` öffnen.

## Schritt 2: Verzeichnis für die Übung erstellen

Erstelle ein neues Verzeichnis namens `permissions_tutorial` mit dem Befehl:

```bash
mkdir permissions_tutorial
```

Wechsle in das Verzeichnis:

```bash
cd permissions_tutorial
```

## Schritt 3: Dateien erstellen

Erstelle drei Dateien, `datei1.txt`, `datei2.txt` und `datei3.txt`, mit dem Befehl `touch`:

```bash
touch datei1.txt datei2.txt datei3.txt
```

## Schritt 4: Berechtigungen anzeigen

Verwende den Befehl `ls -l` um die Berechtigungen deiner erstellten Dateien zu sehen:

```bash
ls -l
```

Die Ausgabe zeigt die Berechtigungen für jede Datei an. Was bedeuten die verschiedenen Teile der Ausgabe?

## Schritt 5: Berechtigungen ändern

Jetzt werden wir die Berechtigungen für `datei1.txt` ändern, sodass nur der Eigentümer sie lesen, schreiben und ausführen kann.

Ändere die Berechtigungen mit dem Befehl `chmod`:

```bash
chmod 700 datei1.txt
```

Überprüfe die Änderungen mit `ls -l`.

## Schritt 6: Unterschiedliche Berechtigungen anwenden

- **Leseberechtigung (4)**: Erlaubt das Lesen der Datei.
- **Schreibberechtigung (2)**: Erlaubt das Ändern der Datei.
- **Ausführungsberechtigung (1)**: Erlaubt das Ausführen der Datei, falls es sich um ein Skript oder Programm handelt.

Für `datei2.txt` werden wir Lese- und Schreibberechtigungen für den Eigentümer setzen und nur Leseberechtigungen für die Gruppe und andere:

```bash
chmod 644 datei2.txt
```

Für `datei3.txt` setzen wir Lese- und Ausführungsberechtigungen für alle, aber keine Schreibberechtigungen (nur der Eigentümer kann die Datei ändern):

```bash
chmod 755 datei3.txt
```

Überprüfe erneut mit `ls -l`.

## Schritt 7: Geheimes Verzeichnis erstellen

Erstelle ein neues Verzeichnis namens `geheim` und setze die Berechtigungen so, dass nur der Eigentümer darauf zugreifen kann:

```bash
mkdir geheim
chmod 700 geheim
```

Wechsele zu einem anderen Benutzer und versuche, auf das Verzeichnis zuzugreifen:

```bash
su testuser
cd geheim
```

Du wirst feststellen, dass der Zugriff verweigert wird, da der Benutzer `testuser` nicht der Eigentümer des Verzeichnisses ist.
