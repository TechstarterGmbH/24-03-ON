---

class: invert

---

# Git für Poeten

---

## Einleitung

---

### Metapher: Git Für Poeten

- Um Git zu verstehen, werden wir in den nächsten Tagen eine Metapher verwenden.
- Stell dir vor, du arbeitest an einem Gedichtsband

---

### Wieso braucht man Git?

- **Kollaboration**: Mehrere Personen können an den gleichen Dateien arbeiten.
- **Versionenverwaltung**: Veränderungen nachvollziehen und zu früheren Versionen zurückkehren.
- **Sicherheit**: Änderungen sind dokumentiert und nachvollziehbar.
- Man kann einfach wieder zu einem früheren Stand zurückkehren.
- **Backup**: Dateien sind auf einem Server gespeichert.

---

### Geschichte von Git

- **Entstehung**: Entwickelt von Linus Torvalds im Jahr 2005.
- **Zweck**: Ersatz für ältere Tools mit Schwerpunkt auf Geschwindigkeit und einfache Handhabung.
- **Verbreitung**: Wird weltweit in Millionen von Projekten eingesetzt und ist ein Industriestandard.

---

## Grundlegende Git Konzepte

---

### Was ist ein Versionierungssystem?

- **Definition**: Ein System, das Änderungen an einem oder mehreren Dateien speichert, sodass bestimmte Versionen später abgerufen werden können.
- **Nutzen**: Hilft bei der Fehlerbehebung und der Zusammenarbeit in Teams.
- Stell dir vor bei Pokemon konnte man immer in gewissen Städten speichern und dann wieder zurückkehren.

---

### Was sind Repositories?

- **Lokales Repository**: Ein Verzeichnis auf deinem Computer, das von Git verwaltet wird.
- **Remote Repository**: Eine Version des Repositories, die auf einem Server gespeichert ist, z.B. auf GitHub.

---

### Unterschied zwischen Remote und Local Repository

- **Lokal**: Direkter Zugriff, schnelle Änderungen.
- **Remote**: Zugriff von überall, gemeinsame Nutzung und Backup.

---

## Git Konzepte

---

### Commit

- **Definition**: Ein Commit ist eine gespeicherte Änderung im Repository, die einen bestimmten Entwicklungsstand markiert.
- Stell dir vor wir schreiben unser Gedicht und speichern es ab.
- Diese spezifische Version des Gedichts ist ein Commit.
- Commit ist das wichtigste Konzept in Git.
- Jeder Commit hat immer eine Nachricht, die beschreibt, was geändert wurde.
- Jeder Commit hat außerdem eine eindeutige ID (wilde Abfolge von Zeichen).
- Die Commit ID wird verwendet, um auf einen bestimmten Commit zu verweisen.

---

### Staging Area

- Wenn wir einen Commit erstellen wollen, müssen wir die Änderungen erst in die Staging Area hinzufügen.
- Die Staging Area ist wie ein Zwischenspeicher, hier können wir Dateien hinzufügen, bevor wir sie speichern.
- Damit weiß Git welche Änderungen in den nächsten Commit einfließen sollen.

---

## Der Lebenszyklus von Git (Git Lifecycle)

---

### Untracked Files

- Dateien, die neu im Verzeichnis sind und von Git noch nicht verfolgt werden.
- Also jede Datei die wir neu erstellen

---

### Staged Files

- **Definition**: Dateien, die zur Aufnahme in den nächsten Commit vorgemerkt sind.
- **Prozess**: Nach dem wir eine Datei erstellt haben oder geändert haben, fügen wir sie zur Staging Area hinzu.

---

### Unmodified Files

- **Definition**: Nach dem wir eine Datei zum Staging hinzugefügt haben und einen Commit erstellt haben, weiß Git den genauen Zustand der Datei.
- Bis wir diese Datei erneut ändern, bleibt sie unverändert.
- **Status**: Keine weiteren Aktionen notwendig, bis Änderungen vorgenommen werden.

---

### Modified Files

- **Definition**: Dateien, die seit dem letzten Commit geändert wurden, aber noch nicht zum Staging hinzugefügt wurden.
- **Nächster Schritt**: Zum Staging hinzufügen und commiten.

---

## Ein Git Repository erstellen (Git init)

---

### Installation von Git

- **Download**: Besuche die offizielle Git-Website [Git SCM](https://git-scm.com/).
- **Installation**: Folge den Anweisungen für dein Betriebssystem.

---

### Einrichtung des lokalen Repository

- **Befehl**: `git init`
- **Ergebnis**: Erstellt ein neues lokales Repository auf deinem Computer.
- Effektiv wird von Git ein neues verstecktes Verzeichnis `.git` erstellt.
- In diesem Verzeichnis werden alle Informationen über das Repository gespeichert.

---

### Erste Schritte mit Git init

- **Verzeichniswahl**: Wähle einen Ordner, in dem dein Projekt gespeichert ist.
- **Initialisierung**: Führe im Terminal oder der Kommandozeile `git init` aus.

---

## Dateien zum Staging hinzufügen (Git add)

---

### Wie man Dateien zum Staging-Bereich hinzufügt

- **Befehl**: `git add <dateiname>`
- **Beispiel**: Füge eine spezifische Datei hinzu mit `git add beispiel.txt`.

---

### Einzelne Dateien vs. alle Dateien zum Staging hinzufügen

- **Einzelne Dateien**: Nützlich für gezielte Updates.
- **Alle Dateien**: `git add .`

 fügt alle geänderten und neuen Dateien hinzu.

---

## Änderungen Bestätigen (Git Commit)

---

### Wie man Commits erstellt

- **Befehl**: `git commit -m "Deine Nachricht"`
- **Zweck**: Dokumentiert deine Änderungen klar und verständlich für andere.

---

### Commit Messages und ihre Bedeutung

- **Wichtigkeit**: Erklärt den Kontext und Zweck der Änderungen für zukünftige Referenzen.
- **Tipps**: Sei präzise und beschreibend; Es gibt hier verschiedene Konventionen, z.B. [Conventional Commits](https://www.conventionalcommits.org/).

---

### Anzeigen von Commit History

- **Befehl**: `git log`
- **Nutzen**: Zeigt die Historie der Commits an, inklusive Autor, Datum und Nachricht.

---
