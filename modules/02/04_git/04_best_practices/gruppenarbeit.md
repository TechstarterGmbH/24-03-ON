<img src="Techstarter.svg" style="height: 50px; width: auto">

# Gruppenarbeit in 2er Gruppen 

## Vorbereitung

1. **Erstellen eines GitHub Repositories**:
   - Eine Person (Person 1) erstellt ein neues GitHub Repository.
   - Person 1 lädt Person 2 als Collaborator ein.

2. **Branch-Schutz einrichten**:
   - Person 1 geht zu den "Settings" des Repositories.
   - Unter "Branches" wählt Person 1 den Main Branch aus und klickt auf "Add rule".
   - Wählt "Require pull request reviews before merging" und speichert die Regel.

## Schritt 1: Erstellen einer README-Datei

1. **README Datei anlegen**:
   - Beim Erstellen des Repositories erstellt Person 1 eine README-Datei.

2. **Namen hinzufügen**:
   - Beide Parteien erstellen ihre eigenen Branches, z.B., `feature-add-name-person1` und `feature-add-name-person2`.
   - Beide Parteien fügen ihre Namen zur README-Datei hinzu und committen die Änderungen.
   
   **Änderungen speichern:**
   - Füge die Änderungen zum Git-Index hinzu:
     ```bash
     git add .
     ```
   - Committe die Änderungen:
     ```bash
     git commit -m "meinen Namen in der README ergänzt"
     ```

    **Branch pushen:**
   - Push deinen Branch auf GitHub:
     ```bash
     git push origin deinen-branchnamen
     ```

3. **Pull Requests durchführen**:
   - Beide Parteien erstellen Pull Requests (PRs) von ihren Branches zum Main Branch.
   - Der jeweils andere Partner führt eine Code Review durch und gibt das Mergen frei.

## Schritt 2: Index.html Datei erstellen

1. **Branch erstellen und Index.html anlegen**:
   - Person 1 erstellt einen neuen Branch, z.B., `feature-add-index`.
   - Person 1 erstellt eine Datei `index.html` mit einer Boilerplate, einem aussagelräftigen `title`und einer `h1`-Überschrift.

2. **Pull Request und Review**:
   - Person 1 erstellt einen Pull Request.
   - Person 2 führt eine Code Review durch.
   - Person 2 fordert eine Änderung an: Ein Paragraph mit einem Lorem Ipsum Text soll hinzugefügt werden.

3. **Änderung umsetzen**:
   - Person 1 fügt einen Paragraphen hinzu:
   - Person 1 committet die Änderungen und aktualisiert den Pull Request.

4. **Code Review und Merge**:
    - Person 2 holt die Änderungen lokal mit:

    ```sh
    git fetch origin
    git checkout feature-add-style
    ```

   - Um zurück zum Main Branch zu wechseln:

    ```sh
    git checkout main
    ```

   - Person 2 überprüft die Änderungen und gibt den Merge frei.
   - Der Branch `feature-add-index` wird gelöscht.

## Schritt 3: style.css Datei erstellen

1. **Branch erstellen und style.css anlegen**:
   - Person 2 erstellt einen neuen Branch, z.B., `feature-add-style`.
   - Person 2 erstellt eine Datei `style.css`, in der nur die Hintergrundfarbe festgelegt wird.

2. **Pull Request und Review**:
   - Person 2 erstellt einen Pull Request.
   - Person 1 führt eine Code Review durch und bemerkt, dass das Stylesheet nicht in der `index.html` eingebunden ist.
   - Person 1 fordert im Change Request, dass das Stylesheet eingebunden wird.

3. **Änderung umsetzen**:
   - Person 2 bindet das Stylesheet in der `index.html` ein:
   - Person 2 committet die Änderungen und gibt im PR-Verlauf Bescheid.

4. **Code Review und Merge**:
   - Person 1 führt erneut eine Code Review durch.
   - Person 1 holt die Änderungen lokal mit:

    ```sh
    git fetch origin
    git checkout feature-add-style
    ```

   - Um zurück zum Main Branch zu wechseln:

    ```sh
    git checkout main
    ```

   - Wenn die Änderungen gefallen, gibt Person 1 den Merge frei.

