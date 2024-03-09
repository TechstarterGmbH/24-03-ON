# Praktische Einführung in das Linux-Dateisystem

In diesem Hands-On-Guide wirst du durch verschiedene Ordner des Linux-Dateisystems navigieren. Dabei lernst du, wie du das Terminal benutzt, um verschiedene Verzeichnisse zu erkunden und wichtige Dateien zu identifizieren.

## Schritt 1: Terminal öffnen

Beginne damit, das Terminal auf deinem Linux-System zu öffnen. Das kannst du üblicherweise über die Suche in deinem Anwendungsmenü finden, indem du nach "Terminal" suchst.

## Schritt 2: Navigiere zum Wurzelverzeichnis

Um zum Wurzelverzeichnis zu gelangen, verwende den Befehl `cd /`.

```bash
cd /
```

## Schritt 3: Verzeichnisinhalt anzeigen

Um zu sehen, welche Ordner und Dateien im Wurzelverzeichnis (/ -> root) vorhanden sind, verwende den Befehl `ls`.

```bash
ls
```

Du wirst verschiedene Verzeichnisse wie `bin`, `etc`, `home`, `root`, `usr` und mehr sehen.

## Schritt 4: Erkunde das /bin-Verzeichnis

Navigiere in das `/bin`-Verzeichnis und schaue dir dessen Inhalt an.

```bash
cd /bin
ls
```

Hier findest du wichtige ausführbare Dateien, die für den Betrieb des Systems notwendig sind.

- Jedes mal, wenn du  zum Beispiel `ls` ausführst, wird das Programm aus diesem Verzeichnis geladen.
- Andere wichtige Befehle wie `cp`, `mv`, `rm` und viele andere sind ebenfalls hier zu finden.

## Schritt 5: Erkunde das /etc-Verzeichnis

Als Nächstes, erkunde das `/etc`-Verzeichnis, welches Konfigurationsdateien enthält.

```bash
cd /etc
ls
```

In diesem Verzeichnis findest du Konfigurationsdateien für verschiedene Programme und Dienste auf deinem System.

- Zum Beispiel enthält das `/etc/passwd`-File Informationen über die Nutzerkonten auf dem System.

Schaue dir den Inhalt dieser Datei an:

```bash
cat passwd
```

Du wirst eine Liste von Nutzerkonten und ihren Eigenschaften sehen.

Außerdem ist hier auch die Datei `hostname` zu finden, die den Hostnamen des Systems enthält.

```bash
cat hostname
```

## Schritt 6: Überprüfe das /home-Verzeichnis

Im `/home`-Verzeichnis befinden sich die persönlichen Ordner der Nutzer.

```bash
cd /home
ls
```

Du wirst dort einen Ordner für jeden Nutzer finden, der auf dem System eingerichtet ist.

Hier sollte also ein Ordner für deinen Nutzer vorhanden sein. Diesen haben wir auch schon in vorherigen Übungen verwendet.
Jedes Mal, wenn du dich anmeldest, wirst du in dein eigenes Home-Verzeichnis gebracht. Die Abkürzung dafür ist `~`.

```bash
cd ~
pwd
```

## Schritt 7: Betrachte das /usr-Verzeichnis

Das `/usr`-Verzeichnis enthält eine große Menge an Programmen und Bibliotheken.

```bash
cd /usr
ls
```

Erkunde die Unterordner wie `bin`, `lib` und `share`, um eine Vorstellung von der Struktur zu bekommen.

## Schritt 8: Zurück zum Ausgangspunkt

Um zum ursprünglichen Verzeichnis zurückzukehren, in dem du gestartet hast, verwende den Befehl `cd` ohne weitere Angaben.

```bash
cd
```
