# Einführung in Shell Scripting

## Einleitung

### Was ist ein Shell Script?

Ein Shell Script ist vergleichbar mit einem Rezept in der Küche.
Es ist eine Sammlung von Befehlen, die in einer Datei gespeichert sind, um verschiedene Aufgaben auf einem Computer automatisch auszuführen, ähnlich wie du einer Schritt-für-Schritt-Anleitung folgst, um ein Gericht zu kochen.

**Alle Befehle die du im Terminal ausführst, können in einer Datei gespeichert und als Script ausgeführt werden.**

### Warum ist Shell Scripting wichtig?

Shell Scripting ist wichtig, weil es dir ermöglicht, wiederkehrende Aufgaben zu automatisieren.
Stell dir vor, du müsstest jeden Tag dieselben zehn Schritte durchführen, um deinen Computer zu warten – mit einem Script kannst du diese Aufgaben mit einem einzigen Befehl erledigen.

In der echten Welt sind Shell Scripts wie Assistenten, die dir helfen, Zeit zu sparen und Fehler zu vermeiden.
Sie werden in vielen Bereichen eingesetzt, wie z.B. Systemadministration, Softwareentwicklung, Datenverarbeitung und vielen anderen.

### Wie funktioniert Shell Scripting?

Shell Scripting funktioniert, indem es Befehle, die du normalerweise manuell im Terminal eingibst, in einer Datei speichert und ausführt.
Es ist, als würdest du einen Autopiloten für dein Terminal einrichten.

## 1. Was ist ein Script?

### 1.1 Definition und Anwendungsbereiche

- Ein Script ist eine einfache Textdatei, die eine Reihe von Befehlen enthält, die automatisch ausgeführt werden.
- Es kann verwendet werden, um **Installationen**, **Konfigurationen**, **Datenverarbeitung** und viele andere Aufgaben zu automatisieren.

### 1.2 Unterschied zwischen einem Script und einem Programm

- Der Hauptunterschied zwischen einem Script und einem Programm ist, dass Scripts **interpretiert** werden, während Programme **kompiliert** werden.
- Das heißt, ein Script wird Zeile für Zeile gelesen und ausgeführt, während ein Programm in Maschinensprache übersetzt wird und direkt ausgeführt wird.
- Stell dir ein Script wie eine Einkaufsliste vor, die gelesen und Artikel für Artikel abgehakt wird, während ein Programm eher einem fertigen Produkt entspricht, das direkt verwendet werden kann.

### 1.3 Verschiedene Arten von Scripts

- Es gibt verschiedene Arten von Scripts, wie Bash, Python oder Perl Scripts. Jede Art hat ihre eigene Syntax und Anwendungsbereiche, ähnlich wie verschiedene Werkzeuge in einer Werkzeugkiste.
- In diesem Kurs werden wir uns auf Bash Scripts konzentrieren, da sie die am häufigsten verwendete Art von Scripts sind und in den meisten Unix-Systemen vorinstalliert sind.

### 1.4 Erstellung deines ersten Scripts

Um dein erstes Script zu erstellen, öffne einen Texteditor, füge Befehle hinzu, speichere die Datei mit einem `.sh`-Endung und führe sie im Terminal aus.
Es ist wie das Schreiben deines ersten Kochrezepts.

## Kapitel 2: Wichtige Bestandteile eines Shell Scripts

### 2.1 Befehle

#### 2.1.1 Eingebaute Befehle

- Eingebaute Befehle sind Funktionen, die direkt in die Shell integriert sind, ähnlich wie vorinstallierte Apps auf deinem Smartphone.
- Sie sind schneller und effizienter als externe Befehle, da sie direkt von der Shell ausgeführt werden.
- Einige Beispiele für eingebaute Befehle sind `echo`, `cd`, `pwd`, `export`, `alias` und viele andere.

#### 2.1.2 Externe Befehle

- Externe Befehle sind Programme, die außerhalb der Shell installiert sind. Sie sind wie Apps, die du aus dem App Store herunterlädst.
- Sie sind meistens in separaten Dateien gespeichert und müssen von der Shell geladen und ausgeführt werden.
- Einige Beispiele für externe Befehle sind `ls`, `grep`, `awk`, `sed`, `find`, `cat`, `chmod` und viele andere.

#### 2.1.3 Kommentare

- Kommentare sind Text, der von der Shell ignoriert wird und nur für Menschen lesbar ist.
- Sie werden verwendet, um den Code zu dokumentieren und zu erklären, was er tut, ähnlich wie Notizen in einem Kochrezept.
- In Bash Scripts beginnen Kommentare mit einem `#`-Zeichen.

```bash
# Dies ist ein Kommentar
echo "Hello, World!" # Dies ist auch ein Kommentar
```

### 2.2 Variablen

#### 2.2.1 Deklaration und Zuweisung von Variablen

Variablen im Scripting sind wie Schubladen, in denen du Informationen aufbewahren kannst, um sie später zu verwenden.

- Du kannst eine Variable deklarieren, indem du ihr einen Namen gibst, z.B. `name`.
- Du kannst einer Variablen einen Wert zuweisen, z.B. `name="John"`.
- Du kannst den Wert einer Variablen abrufen, indem du ihren Namen mit einem Dollarzeichen voranstellst, z.B. `echo $name`.

```bash
name="fabio"
echo "Hello, $name!"
cd /home/$name
```

#### 2.2.2 Zuweisung von Output eines Befehls

- Du kannst das Ergebnis eines Befehls in einer Variablen speichern, ähnlich wie wenn du die Antwort eines Freundes aufschreibst, um sie nicht zu vergessen.
- Das Ergebnis eines Befehls wird mit der `$(...)`-Syntax in eine Variable gespeichert.

```bash
files=$(ls)
echo "Files: $files"
```

- Es ist auch möglich das Ergebnis eines Befehls direkt in einem anderen Befehl zu verwenden.

```bash
echo "Files: $(ls)"
```

## Kapitel 3: Shebang

### 3.1 Was ist ein Shebang?

- Ein Shebang ist die Zeile am Anfang eines Scripts, die dem System mitteilt, welcher Interpreter verwendet werden soll.
- Es ist wie ein Briefkopf in einem Dokument, der angibt, zu welchem Thema das Dokument gehört.
- Da wir uns auf Bash Scripts konzentrieren, wird der Shebang für Bash `#!/bin/bash` sein.
- Das sagt dem System, dass das Script mit dem Bash-Interpreter ausgeführt werden soll.

```bash
#!/bin/bash
```

- Es ist auch möglich, den Shebang für andere Interpreter zu verwenden, z.B. für Python `#!/usr/bin/python` oder für Perl `#!/usr/bin/perl`.

### 3.2 Verschiedene Arten von Shebangs

Es gibt verschiedene Arten von Shebangs, je nachdem, welche Scriptsprache du verwendest. Es ist, als würdest du die Sprache wählen, in der ein Buch geschrieben ist.

## Kapitel 4: Berechtigungen

### 4.1 Verstehen der Unix Berechtigungen

- Unix Berechtigungen bestimmen, wer was mit einer Datei tun darf. Es ist wie ein Sicherheitssystem, das bestimmt, wer in ein Gebäude eintreten darf.
- Wir werden im Verlauf dieses Kurses noch sehr viel mehr über Berechtigungen lernen.
- Für den Anfang ist es wichtig zu wissen, dass es drei Arten von Berechtigungen gibt: **Lesen**, **Schreiben** und **Ausführen**.
- Da wir uns auf Bash Scripts konzentrieren, ist es wichtig zu wissen, dass ein Script nur dann ausgeführt werden kann, wenn es die entsprechenden Ausführungsrechte hat.
- Aus diesem Grund ist es wichtig, die Berechtigungen eines Scripts zu kennen und zu ändern, um es ausführen zu können.
- Die Berechtigung zum Ausführen eines Scripts wird mit dem `chmod`-Befehl geändert.
- Zum Beispiel, um ein Script ausführbar zu machen, kannst du den Befehl `chmod +x script.sh` verwenden.
- Das `+x` bedeutet, dass die Ausführungsrechte hinzugefügt werden. (x steht hier für execute, also ausführen)

```bash
chmod +x script.sh
```

## Kapitel 5: Ausführen eines Scripts

### 5.1 Ausführen eines Scripts

- Ein Script kann im Terminal mit dem Befehl `./script.sh` ausgeführt werden.
- Das `./` sagt dem System, dass das Script im aktuellen Verzeichnis liegt.
- Wenn das Script nicht ausführbar ist, wird eine Fehlermeldung angezeigt.
- Wenn das Script ausführbar ist, wird es ausgeführt und die Ausgabe wird im Terminal angezeigt.

```bash
./script.sh
```
