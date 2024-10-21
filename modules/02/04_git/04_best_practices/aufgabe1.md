<img src="Techstarter.svg" style="height: 50px; width: auto">

# Aufgabe 1: Erstellung einer Rezepte-Sammlung auf GitHub

Willkommen zur Erstellung unserer gemeinsamen Rezepte-Sammlung! Hier ist eine Schritt-für-Schritt-Anleitung, wie ihr teilnehmen könnt.

## Schritt 1: Einladung annehmen und Repository klonen

1. **Einladung annehmen:**
   - Öffne die Einladung, die du per E-Mail erhalten hast, und akzeptiere sie, um dem Repository beizutreten.

2. **Repository klonen:**
   - Öffne dein Terminal oder die Git Bash.
   - Navigiere zu dem Verzeichnis, in dem du das Repository klonen möchtest.


## Schritt 2: Branch erstellen

1. **Neuen Branch erstellen:**
   - Erstelle einen neuen Branch für dein Rezept:

     ```bash
     git checkout -b dein-rezept-name
     ```

   - Beispiel:

     ```bash
     git checkout -b guacamole
     ```

## Schritt 3: Ordner und Dateien erstellen

1. **Ordner erstellen:**
   - Erstelle einen neuen Ordner mit einem aussagekräftigen Namen:

2. **Dateien erstellen:**
   - Wechsle in den neu erstellten Ordner:
   - Erstelle die Datei `zutaten.md` und fülle die Datei mit Inhalt
   - Erstelle die Datei `Anleitung.md` und fülle die Datei mit Inhalt


3. **Dateien bearbeiten:**
   - Öffne die Dateien `zutaten.md` und `Anleitung.md` und füge die Zutaten sowie die Anleitung für dein Rezept hinzu.

## Schritt 4: Änderungen committen und pushen

1. **Änderungen speichern:**
   - Füge die Änderungen zum Git-Index hinzu:

     ```bash
     git add .
     ```

   - Committe die Änderungen:

     ```bash
     git commit -m "Rezept für dein-rezept-name hinzugefügt"
     ```

   - Beispiel:
   
     ```bash
     git commit -m "Rezept für Guacamole hinzugefügt"
     ```

2. **Branch pushen:**
   - Push deinen Branch auf GitHub:

     ```bash
     git push origin dein-rezept-name
     ```

   - Beispiel:

     ```bash
     git push origin guacamole
     ```

## Schritt 5: Pull Request erstellen

1. **Pull Request erstellen:**
   - Gehe zu deinem GitHub Repository im Webbrowser.
   - Du wirst eine Benachrichtigung sehen, dass du kürzlich einen Branch gepusht hast. Klicke auf "Compare & pull request".
   - Fülle die Details für den Pull Request aus und erstelle den Pull Request.

## Schritt 6: Feedback und Merge

1. **Feedback lesen:**
   - Ich werde den Pull Request überprüfen und Feedback geben. Schau dir das Feedback an und nimm gegebenenfalls Anpassungen vor.

2. **Pull Request mergen:**
   - Sobald das Feedback eingearbeitet ist, kannst du den Pull Request selbst mergen.
   - Wichtig: Nur deinen eigenen Branch mergen!
   - Klicke auf "Merge pull request" und bestätige mit "Confirm merge".

Herzlichen Glückwunsch, du hast erfolgreich ein Rezept zur Sammlung hinzugefügt!