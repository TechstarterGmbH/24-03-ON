# Git

## Download und Installation von Git (Windows)

- **Download**: Besuche die offizielle Git-Website [Git SCM](https://git-scm.com/download/win).
- **Installation**: Führe die heruntergeladene Datei aus und folge den Anweisungen.

## Installation von Git (Linux)

- **Debian/Ubuntu**: `sudo apt-get install git`

## Git für Poeten

- Erstelle einen neuen Ordner und öffne diesen in VS Code.
- Öffne das integrierte Terminal in VS Code.
- Führe den Befehl `git --version` aus, um zu prüfen, ob Git richtig installiert wurde.
- Führe den Befehl `git init` aus, um ein neues Git-Repository zu erstellen.
- Es kann sein, dass du erst die Git-Einstellungen konfigurieren musst.
  - Führe `git config --global user.name "Dein Name"` aus.
  - Führe `git config --global user.email "deine@emai.de"` aus.
  - Führe erneut `git init` aus, um das Repository zu erstellen.
- Stelle sicher, dass ein neuer Ordner `.git` erstellt wurde.
- Erstelle eine neue Datei `Gedicht.txt` und füge ein Gedicht deiner Wahl ein.
- Führe `git status` aus, um den Status des Repositories zu überprüfen.
- Hier solltest du sehen, das `Gedicht.txt` als untracked file angezeigt wird.
- Führe `git add Gedicht.txt` aus, um die Datei zum Staging-Bereich hinzuzufügen.
- Führe `git status` erneut aus, um den Status zu überprüfen.
- Hier sollte `Gedicht.txt` als staged file angezeigt werden.
- Führe `git commit -m "Erstes Gedicht hinzugefügt"` aus, um die Änderungen zu bestätigen.
- Führe `git log` aus, um die Commit-History anzuzeigen.
- Du solltest deinen ersten Commit sehen.
- Herzlichen Glückwunsch! Du hast dein erstes Gedicht in einem Git-Repository gespeichert.
- Füge nun weitere Zeilen zu den `Gedicht.txt` hinzu.
- Führe `git status` aus, um den Status zu überprüfen.
- Führe `git add Gedicht.txt` aus, um die Datei erneut zum Staging-Bereich hinzuzufügen.
- Führe wieder `git status` aus, um den Status zu überprüfen.
- Führe `git commit -m "Zweite Strophe hinzugefügt"` aus, um die Änderungen zu bestätigen.
- Führe `git log` aus, um die Commit-History anzuzeigen.
