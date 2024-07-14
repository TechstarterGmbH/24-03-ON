---

class: invert

---

# **Einführung in NPM**

![NPM Logo](https://upload.wikimedia.org/wikipedia/commons/d/db/Npm-logo.svg)

---

## Was ist ein Paket-Manager?

---

## Was ist ein Paket-Manager?

- **Definition**: Ein Paket-Manager automatisiert den Prozess der Installation, Aktualisierung und Konfiguration von Softwarebibliotheken und Programmen.
- **Metapher**: Stelle dir einen Paket-Manager wie einen persönlichen Assistenten vor, der sich darum kümmert, alle Zutaten für dein Kochrezept aus dem Supermarkt zu holen.
- **Warum Paket-Manager verwenden?**: 
  - Vermeidung von Konflikten zwischen Software-Bibliotheken
  - Automatisches Verwalten von Abhängigkeiten
  - Einfachere Projektverwaltung

---

## **Neues Projekt (npm init)**

- **Starten eines neuen Projekts**: `npm init` bereitet dein Projekt vor, indem es eine `package.json`-Datei erstellt, die dein Projekt beschreibt und verwaltet.

---

**`npm init`: ein genauer Blick**:
  - Interaktiver Prozess, der durch grundlegende Fragen führt
  - Einstellungen wie Projektname, Version, Beschreibung

**Was passiert hier?**:
  - Initialisierung eines Projektrahmens
  - Definition der Projektmetadaten

---

## **package.json**

### Das Herzstück eines jeden Node.js-Projekts

---

## **package.json**

- **Definition**: Eine Datei, die wichtige Informationen über dein Projekt und seine Abhängigkeiten enthält.
- **Struktur und Aufbau**:
  - `name`: Name deines Projekts
  - `version`: Versionsnummer
  - `scripts`: Skripte für den Build-Prozess
- **Wichtige Teile der package.json**:
  - `dependencies`: Nötig für das Laufen der App
  - `devDependencies`: Nötig nur für die Entwicklung
- **Abhängigkeiten und Dev-Abhängigkeiten**:
  - Unterschiede und ihre Bedeutung
  - **dependencies**: Wird für die Ausführung der Anwendung benötigt
  - **devDependencies**: Wird nur für die Entwicklung benötigt

---

## **Installieren (npm install)**
### Pakete hinzufügen und verwalten

---

## **Installieren (npm install)**

- **Überblick und Zweck**:
  - Installation der erforderlichen Pakete für dein Projekt
  - Fügt Pakete hinzu und aktualisiert die `package.json` und `package-lock.json`
- **Installieren einzelner Pakete**: `npm install [paketname]`
- **Globale VS lokale Installation**:
  - Globale Installation für Tools, die überall auf deinem System verfügbar sein sollen
  - Lokale Installation spezifisch für ein Projekt
  - Normalerweise werden Pakete lokal installiert

---

## **node_modules Ordner**
### Das Verzeichnis, wo alle Pakete wohnen

- **Was ist der node_modules Ordner?**:
  - Ein Ordner, der alle installierten Pakete eines Projekts enthält
- **Struktur und Bedeutung**:
  - Jedes installierte Paket hat einen eigenen Unterordner
- **Warum ist der node_modules Ordner wichtig?**:
  - Zentraler Ort für die Verwaltung von Paketen
- **Ignorieren des node_modules Ordners in Git!**:
  - Nicht im Git-Repository speichern, um Überladung zu vermeiden (`gitignore` Datei)
  - `node_modules`-Ordner sind normalerweise in `.gitignore`-Dateien aufgeführt

---

## **Package Lock**
### Sicherstellung konsistenter Installationen

- **Was ist ein Package Lock?**:
  - Eine Datei, die spezifische Versionen aller installierten Pakete eines Projekts festlegt
- **Zweck und Nutzung**:
  - Verhindert Versionskonflikte und stellt sicher, dass alle Entwickler die gleichen Paketversionen verwenden

---

## **NPM-Website**
### Finde und erforsche Pakete

- **Durchsuchen und Finden von Paketen**:
  - Die NPM-Website bietet eine umfangreiche Suchfunktion für Millionen von Paketen
- **Paketinformationen und Dokumentation**:
  - Jedes Paket hat eine eigene Seite mit Informationen und Dokumentation
- **Verstehen und Verwenden der NPM-Website**:
  - Wichtige Ressource für Entwickler zum Entdecken neuer Tools und Bibliotheken
