# Erste Schritte mit apt unter Ubuntu

In dieser Schritt-für-Schritt-Anleitung lernst du, wie Du den apt Package Manager unter Ubuntu Linux verwendest.

## Packetquellen updaten

Bevor du neue Pakete installierst oder vorhandene aktualisierst, solltest Du sicherstellen, dass Deine Paketquellen aktuell sind.

### Schritt 1: Öffne ein Terminal

Drücke `Ctrl + Alt + T` auf Deiner Tastatur, um ein Terminalfenster zu öffnen. Alternativ kannst du auch das Anwendungsmenü verwenden, um ein Terminalprogramm zu starten.

### Schritt 2: Update die Paketquellen

Gib den Befehl ein:

```bash
sudo apt update
```

Dieser Befehl kontaktiert die Server, die in Deinen Softwarequellen definiert sind, und aktualisiert die Liste der verfügbaren Pakete sowie deren Versionen.
Es ist wichtig, dies regelmäßig zu tun, um sicherzustellen, dass du Zugriff auf die neuesten und sichersten Softwareversionen hast.

## Software updaten

Nachdem du Deine Paketquellen aktualisiert hast, kannst Du installierte Pakete auf die neuesten Versionen aktualisieren.

### Schritt 3: Softwarepakete upgraden

Führe den Befehl aus:

```bash
sudo apt upgrade
```

Dieser Befehl lädt und installiert Updates für alle Pakete, die auf Deinem System installiert sind. Es ist eine gute Praxis, Dein System regelmäßig auf dem neuesten Stand zu halten.
Es wird gefragt werden ob du das wirklich möchtest, bestätige mit `y` und drücke `Enter`.

## Nach einem Paket suchen

Wenn du ein bestimmtes Paket installieren möchtest, aber nicht den genauen Paketnamen kennst, kannst Du apt verwenden, um danach zu suchen.

### Schritt 4: Suche nach einem Paket

In unserem Beispiel wollen wir das Paket `htop` suchen.
Um nach einem Paket zu suchen, verwende:

```bash
apt search htop
```

Du erhältst eine Liste von Paketen, die Deinen Suchkriterien entsprechen.

## Paket installieren

Jetzt, wo du weißt, wie Du nach Paketen suchen kannst, lass uns eines installieren.

### Schritt 6: Installiere das htop Paket

Um das Paket zu installieren, nutze:

```bash
sudo apt install htop
```

Apt wird das Paket und alle erforderlichen Abhängigkeiten herunterladen und installieren.
Auch hier wird gefragt werden ob du das wirklich möchtest, bestätige mit `y` und drücke `Enter`.

## Paket ausführen

Nach der Installation kannst du die Software ausführen. In unserem Beispiel werden wir das `htop`-Paket ausführen.

### Schritt 7: Führe das htop-Paket aus

Gebe folgenden Befehl in dein Terminal ein:

```bash
htop
```

Jetzt wird das `htop`-Programm ausgeführt und zeigt eine Übersicht über die Systemressourcen an.
Du kannst das Programm beenden, indem du `q` drückst.

## Paket löschen

Wenn du ein Paket nicht mehr benötigst, kannst Du es entfernen.

### Schritt 8: Deinstalliere ein Paket

Um das Paket zu entfernen, gib ein:

```bash
sudo apt remove htop
```

Dieser Befehl entfernt das Paket, behält jedoch Konfigurationsdateien und spezifische Daten bei.

## Alle installierten Programme anzeigen

Um eine Liste aller installierten Programme anzuzeigen, kannst Du den folgenden Befehl verwenden.

### Schritt 9: Zeige alle installierten Programme an

Gib den Befehl ein:

```bash
apt list --installed
```
