---

class: invert

---

# Einführung in den apt Package Manager

---

## Einführung

---

### Was ist der apt Package Manager?

- **apt (Advanced Package Tool)** ist ein Befehlszeilenwerkzeug zur Verwaltung von Softwarepaketen auf Debian-basierten Linux-Distributionen.
- Er ermöglicht dir, Softwarepakete zu **installieren**, zu **aktualisieren** und zu **entfernen**.
- Stell dir apt vor wie ein Supermarkt, in dem Du Softwarepakete "einkaufen" kannst.

---

### Warum ist der apt Package Manager wichtig?

- Er vereinfacht die Softwareverwaltung erheblich.
- Er stellt sicher, dass Du stets die neuesten und sichersten Versionen der Software erhältst.
- Er automatisiert die Verwaltung von **Abhängigkeiten zwischen verschiedenen Softwarepaketen**, was dir viel manuellen Aufwand erspart.

---

## Apt und Linux

---

### Unterschiedliche Package Manager

- Nicht jede Linux-Distribution verwendet apt. Zum Beispiel nutzt arch Linux den **pacman** Package Manager und Fedora Linux verwendet **dnf**.
- Wenn du dir einen Paketmanager als Supermarkt vorstellst, sind die verschiedenen Distributionen wie unterschiedliche Supermärkte, die unterschiedliche Regale und Produkte anbieten.

---

### Wieso ist ein Package Manager unter Linux wichtig?

- Er vereinfacht die Installation von Software erheblich, indem er dir erlaubt, Software mit einem einfachen Befehl zu installieren, ohne manuelle Downloads oder Installationen durchführen zu müssen.
- Er verwaltet automatisch alle notwendigen Abhängigkeiten, sodass Du dir keine Gedanken über fehlende Komponenten machen musst.

---

## Die Funktionsweise eines Package Managers

---

### Was sind Package Repos?

- Online-Datenbanken oder Speicherorte, an denen Softwarepakete und ihre Informationen gespeichert sind.
- Stell dir diese wie die Regale im Supermarkt vor, auf denen die Softwarepakete liegen.
- Der Herausgeber deiner Linux-Distribution stellt diese Repositories zur Verfügung.
- Es gibt auch private Repositories, die von Unternehmen oder Organisationen betrieben werden.

---

#### Online- und Offline-Repos

- Online-Repos sind über das Internet zugänglich.
- Offline-Repos befinden sich auf lokalen Medien wie DVDs und bieten dir Zugriff auf Softwarepakete ohne Internetverbindung.
- Für unsere Zwecke konzentrieren wir uns auf Online-Repos.

---

### Wie funktionieren Package Repos?

- Pakete werden in Repositories **indexiert** und **kategorisiert**, sodass der Package Manager sie effizient finden und verwalten kann.
- Die Repositories enthalten auch **Metadaten** wie die Versionen der Softwarepakete und ihre Abhängigkeiten.
- Die Pakete werden standardmäßig fertig kompiliert und für die Verwendung auf deinem System bereitgestellt.

---

#### Der Ablauf eines Repository Updates

- Bei jedem Update werden zwei wichtige Schritte durchgeführt:
  1. Aktualisierung der Paketlisten
  2. Aktualisierung der Softwarepakete

---

##### 1. Aktualisierung der Paketlisten

- Der Package Manager lädt die neuesten Informationen über die verfügbaren Softwarepakete aus den Repositories herunter.
- Dies stellt sicher, dass Du immer Zugriff auf die neuesten Softwarepakete und Versionen hast.
- Dieser Schritt ändert nichts an der Software auf deinem System, sondern aktualisiert nur die Informationen über die verfügbaren Softwarepakete.

---

##### 2. Aktualisierung der Softwarepakete

- Der Package Manager lädt die neuesten Versionen der Softwarepakete herunter und installiert sie auf deinem System.
- Dabei werden auch alle notwendigen Abhängigkeiten berücksichtigt und installiert.
- Hierfür werden die Paketlisten benötigt, die im ersten Schritt aktualisiert wurden.

---

#### Der Prozess einer Software-Installation

- Wenn Du ein Paket installieren möchtest, sucht der Package Manager nach dem Paket im Repository, lädt es herunter und installiert es auf Deinem System.
- Auch hier werden alle notwendigen Abhängigkeiten berücksichtigt und installiert.
- Es können verschiedene Typen von Paketen installiert werden, wie z.B. Terminal-Programme, grafische Anwendungen, Bibliotheken und vieles mehr.

---

## Befehle im apt Package Manager

---

### Wichtige Befehle und ihre Funktionen

---

#### Apt-Update

- Aktualisiert die Paketlisten von den Repositories, um sicherzustellen, dass Du die neuesten Pakete installieren kannst.
- Nutze `sudo apt update`, um Deine Paketlisten auf den neuesten Stand zu bringen.

---

#### Apt-Upgrade

- Installiert die neuesten Versionen der bereits installierten Pakete.
- Mit `sudo apt upgrade` kannst Du Deine Software auf den aktuellen Stand bringen.
- Dieser Befehl aktualisiert die Softwarepakete, die bereits auf Deinem System installiert sind.
- Er installiert keine neuen Pakete, sondern aktualisiert nur die bestehenden.

---

#### Apt-Install
- Installiert ein neues Paket und alle seine Abhängigkeiten.
- `sudo apt install <paketname>` ermöglicht es dir, neue Software auf Deinem System hinzuzufügen.

---

#### Apt-Remove und Apt-Purge

- `sudo apt remove <paketname>` entfernt ein installiertes Paket, behält jedoch Konfigurationsdateien und spezifische Daten bei.
- `sudo apt purge <paketname>` entfernt ein Paket vollständig inklusive aller Konfigurationsdateien und Daten.

---

#### Apt-Search

- `apt search <paketname>` ermöglicht es dir, nach einem bestimmten Paket zu suchen.
- Dieser Befehl zeigt dir alle verfügbaren Pakete, die den angegebenen Namen enthalten.

---

### Syntax und Argumente

---

#### Erklärung der Syntax

- Die Befehlssyntax für apt lautet `apt [Optionen] [Befehl] [Paketname]`, wobei Du durch unterschiedliche Optionen und Befehle verschiedene Aktionen ausführen kannst.
- Eine Option ist ein zusätzlicher Parameter, der das Verhalten des Befehls steuert.
- Ein Paketname ist der Name des Softwarepakets, das Du installieren, aktualisieren oder entfernen möchtest.

---

#### Optionen in apt Befehlen

- Nutze Optionen wie `-y`, um bei Installationen oder Upgrades automatisch zuzustimmen und den Prozess zu beschleunigen.

---

## Zusammenfassung

- Der apt Package Manager ist ein mächtiges Werkzeug, das dir hilft, Software auf Debian-basierten Linux-Systemen effektiv zu verwalten.
- Durch den Einsatz von apt wird die Softwareinstallation und -wartung deutlich vereinfacht.
- Für weiterführende Informationen und detaillierte Anleitungen kannst Du die [apt-Manual-Seite](https://wiki.ubuntuusers.de/apt/apt/) besuchen.
