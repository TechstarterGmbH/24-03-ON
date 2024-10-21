---
marp: true
theme: default
class:
  - invert
style: |-
  section {
    background-color: #090917;
    color: #F1F1F1;
  }
  h1, h2, h3, h4 {
    color: #FC6549;
  }
  em {
    color: #FC6549;
  }
paginate: true
footer: "Git Best Practices"
---

# Git Best Practices

---

# 1. Forking

- **Definition:** Forking ist das Erstellen einer persönlichen Kopie eines Repositorys auf GitHub.
- **Vorteile:**
  - Unabhängiges Arbeiten an einem Projekt
  - Beiträge zu Projekten ohne direkte Berechtigungen
- **Schritte:**
  1. Repository auf GitHub auswählen
  2. "Fork" Button klicken
  3. Eigene Kopie des Repositories wird erstellt

---

# 2. Pull Requests

- **Definition:** Ein Pull Request (PR) ist ein Vorschlag zur Integration von Änderungen in ein Repository.
- **Zweck:**
  - Ermöglicht Code-Reviews
  - Diskutieren und prüfen von Änderungen
- **Schritte:**
  1. Änderungen im Fork vornehmen
  2. "New Pull Request" auf GitHub auswählen
  3. Änderungen beschreiben und PR erstellen

---

# 3 .gitignore


- **Definition:** Die `.gitignore`-Datei spezifiziert, welche Dateien und Verzeichnisse Git ignorieren soll.
- **Vorteile:**
  - Verhindert, dass unnötige oder sensible Dateien ins Repository gelangen

---

- **Beispielinhalt:**

  ```
  # einzelnde Datei
  dateiname.txt

  # alle Dateien mit einer Dateiendung
  *.txt

  # Ordner
  Ordnername/
  ```
- **Erstellen:**
  1. Im Wurzelverzeichnis des Projekts eine `.gitignore`-Datei erstellen
  2. Regeln hinzufügen

---


- Bereits getrackte Dateien müssen erst einmal aus dem Git-Index entfernt werden
  ```bash
  git rm -r --cached <nameDerDatei>
  ```

- Füge die Datei zur `.gitignore` Datei hinzu, committe und pushe die Änderungen:
  ```bash
  echo "<nameDerDatei>" >> .gitignore
  git add .gitignore
  git commit -m "Update .gitignore and remove <nameDerDatei> from tracking"
  git push origin <nameDeinesBranches>
  ```

---

# 4. Best Practices

---

## Kein Push auf Main

- **Warum:**
  - Verhindert unbeabsichtigte Änderungen im Hauptzweig
  - Fördert die Nutzung von Pull Requests und Code-Reviews
- **Vorgehen:**
  - Direktes Pushen auf `main` deaktivieren
  - Änderungen in Feature-Branches vornehmen und PRs erstellen

---

## Schutz des Main Branches

- **Warum:**
  - Stellt sicher, dass der `main` Branch stabil bleibt
  - Verhindert direkte Pushes und erfordert Überprüfung
- **Vorgehen:**
  1. GitHub Repository öffnen
  2. Einstellungen -> Branches -> Add Rule
  3. Regel für `main` hinzufügen (z.B. Require pull request reviews before merging)

---


## Weitere Tipps

- **Feature Branches:**
  - Für jede neue Funktion oder Bugfix einen neuen Branch erstellen
  - Naming-Konventionen verwenden (z.B. `feature/feature-name`, `bugfix/issue-id`)
- **Commit Nachrichten:**
  - Klar und prägnant
  - Beschreiben, was und warum geändert wurde (z.B. `fix: corrected typo in README`)
- **Regelmäßiges Pullen:**
  - Regelmäßig den `main`-Branch in den eigenen Branch integrieren
  - Vermeidet Merge-Konflikte

---

# Zusammenfassung

- **Forking:** Ermöglicht unabhängiges Arbeiten an einem Projekt
- **Pull Requests:** Strukturierte Methode zur Diskussion und Integration von Änderungen
- **.gitignore:** Verhindert das Hinzufügen unnötiger Dateien
- **Best Practices:** Fördert saubere und strukturierte Zusammenarbeit im Team

---

# Fragen?
