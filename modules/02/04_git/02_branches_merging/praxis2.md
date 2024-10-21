<img src="Techstarter.svg" style="height: 50px; width: auto">

# Konflikte

**Ziel:** In dieser Aufgabe sollen weitere Branches erstellt werden, Änderungen an denselben Teilen der Zutaten und der Anleitung vorgenommen werden, diese Branches zusammengeführt werden und die Konflikte gelöst werden.

**Schritt 1:** Erstelle zwei Branches mit den Namen "mag-koriander" und "mag-keinen-koriander" ausgehend vom "main"-Branch.

```shell
git branch mag-koriander main
git branch mag-keinen-koriander main
```

**Schritt 2:** Wechsel zum Branch "mag-koriander".

```shell
git switch mag-koriander
```

**Schritt 3:** Öffne die Datei "zutaten.txt" im Texteditor und erhöhe die Menge an Koriander, um einen Konflikt zu erzeugen.

**Schritt 4:** Committe die Änderungen auf dem "mag-koriander"-Branch.

```shell
git add zutaten.txt
git commit -m "feat: erhöhe Koriander"
```

**Schritt 5:** Wechsel zum Branch "mag-keinen-koriander".

```shell
git switch mag-keinen-koriander
```

**Schritt 6:** Öffne die Datei "zutaten.txt" im Texteditor und verringere die Menge an Koriander, um einen Konflikt zu erzeugen.

**Schritt 7:** Committe die Änderungen auf dem "mag-keinen-koriander"-Branch.

```shell
git add zutaten.txt
git commit -m "feat: reduziere Koriander"
```

**Schritt 8:** Wechsel zurück zum "main"-Branch.

```shell
git switch main
```

**Schritt 9:** Versuche, den "mag-koriander"-Branch in den "main"-Branch zu mergen. Es sollte erfolgreich sein, da keine Konflikte zwischen "main" und "mag-koriander" existieren.

```shell
git merge mag-koriander
```

**Schritt 10:** Versuche nun, den "mag-keinen-koriander"-Branch in den "main"-Branch zu mergen. Dabei sollte ein Konflikt auftreten.

```shell
git merge mag-keinen-koriander
```

**Schritt 11:** Löse den Konflikt in der Datei "zutaten.txt" eigenständig, indem du entscheidest, welche Version des Korianders beibehalten werden soll. Entferne auch die Konfliktmarkierungen.

Öffne "zutaten.txt" und bearbeite sie wie folgt:

```plaintext
<<<<<<< HEAD
Koriander: erhöhte Menge
=======
Koriander: verringerte Menge
>>>>>>> mag-keinen-koriander

```

Entferne die Markierungen und entscheide dich für eine Version:

```plaintext
Koriander: deine Entscheidung
```

**Schritt 12:** Führe den Merge-Vorgang durch, nachdem der Konflikt gelöst wurde.

```shell
git add zutaten.txt
git commit -m "merge: löse Konflikt und entscheide über Koriander"
```

**Schritt 13:** Überprüfe den Commit-Verlauf und stelle sicher, dass die Konflikte gelöst wurden.

```shell
git graph
```

**Schritt 13:** Da du deine Branches nun nicht mehr brauchst, kannst du sie nun löschen.

Damit ist die Aufgabe abgeschlossen. Du hast erfolgreich Branches erstellt, Änderungen durchgeführt, Konflikte erzeugt, diese gelöst und den Merge abgeschlossen.