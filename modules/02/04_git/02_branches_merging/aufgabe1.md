<img src="Techstarter.svg" style="height: 50px; width: auto">
## Aufgabe 1

**Ziel:** In dieser Übung wollen wir Branches erstellen, Änderungen an denselben Teilen der Zutaten und der Anleitung vornehmen (was Konflikte erzeugt), diese Branches zusammenführen und die Konflikte eigenständig lösen. 

**Schritt 1:** Erstelle ein neues Git-Repository mit dem Namen "veganer-gemueseauflauf-rezept".

**Schritt 2:** Navigiere in das Verzeichnis des Repositorys.

**Schritt 3:** Erstelle eine Textdatei für die Zutatenliste namens "zutaten.txt" und füge die folgenden Zutaten hinzu:

```plaintext
Zutaten:
- 500 g Kartoffeln
- 300 g Karotten
- 200 g Zucchini
- 200 g Aubergine
- 1 rote Paprika
- 1 gelbe Paprika
- 1 Zwiebel
- 2 Knoblauchzehen
- 400 ml Kokosmilch
- 2 EL Olivenöl
- Salz und Pfeffer nach Geschmack
- Frische Kräuter (z. B. Petersilie oder Koriander) zum Garnieren
```

**Schritt 4:** Erstelle eine Textdatei für die Anleitung namens "anleitung.txt" und füge die folgenden Anweisungen hinzu:

Anleitung:
1. Heize den Ofen auf 200°C vor.
2. Schäle die Kartoffeln und Karotten und schneide sie in dünne Scheiben.
3. Schneide die Zucchini und Aubergine in kleine Würfel.
4. Entkerne und schneide die Paprikaschoten in Streifen.
5. Hacke die Zwiebel und den Knoblauch fein.
6. Erhitze das Olivenöl in einer Pfanne und brate die Zwiebel und den Knoblauch glasig an.
7. Gib die geschnittenen Kartoffeln und Karotten hinzu und brate sie leicht an.
8. Gebe die Zucchini, Aubergine und Paprikastreifen dazu und brate alles für weitere 5 Minuten an.
9. Gieße die Kokosmilch über das Gemüse und lasse alles köcheln, bis das Gemüse weich ist.
10. Schmecke den Gemüseauflauf mit Salz und Pfeffer ab.
11. Gib das Gemüse in eine Auflaufform und backe es im vorgeheizten Ofen für 20-25 Minuten, bis die Oberseite goldbraun ist.
12. Garniere den Gemüseauflauf mit frischen Kräutern und serviere ihn warm.


**Schritt 5:** Füge beide erstellten Dateien dem Repository hinzu und mache den ersten Commit.

**Schritt 6:** Erstelle einen neuen Branch mit dem Namen "feature-zutaten".

**Schritt 7:** Wechsle zum Branch "feature-zutaten".

**Schritt 8:** Öffne die Datei "zutaten.txt" im Texteditor und füge weitere Zutaten hinzu.

**Schritt 9:** Füge die geänderte "zutaten.txt" zum Index hinzu und erstelle einen Commit auf dem "feature-zutaten"-Branch.

**Schritt 10:** Erstelle einen neuen Branch mit dem Namen "feature-anleitung".

**Schritt 11:** Wechsle zum Branch "feature-anleitung".

**Schritt 12:** Öffne die Datei "anleitung.txt" im Texteditor und ändere einen Teil der Anleitung.

**Schritt 13:** Füge die geänderte "anleitung.txt" zum Index hinzu und erstelle einen Commit auf dem "feature-anleitung"-Branch.

**Schritt 14:** Kehre zum "main"-Branch zurück.

**Schritt 15:** Merge zuerst den "feature-zutaten"-Branch in den "main"-Branch.

**Schritt 16:** Merge nun den "feature-anleitung"-Branch in den "main"-Branch.

**Schritt 17:** Überprüfe den Commit-Verlauf und stelle sicher, dass die Änderungen aus den beiden Feature-Branches erfolgreich in den "main"-Branch gemerged wurden.

**Schritt 18:** Lösche die beiden feature-branches und überprüfe dies.

## Aufgabe 2

**Ziel:** In dieser Aufgabe Wollen wir weitere Branches erstellen, Änderungen an denselben Teilen der Zutaten und der Anleitung vornehmen, diese Branches zusammenführen und die Konflikte eigenständig lösen. 

**Schritt 1:** Erstelle zwei Branches mit den Namen "mag-kokosmilch" und "keine-kokosmilch" ausgehend vom "main"-Branch.

**Schritt 2:** Wechsle zum Branch "mag-kokosmilch".

**Schritt 3:** Öffne die Datei "zutaten.txt" im Texteditor und erhöhe die Menge an Kokosmilch.

**Schritt 4:** Committe die Änderungen auf dem "mag-kokosmilch"-Branch.

**Schritt 5:** Wechsle zum Branch "keine-kokosmilch".

**Schritt 6:** Öffne die Datei "zutaten.txt" im Texteditor und entferne jegliche Erwähnung von Kokosmilch und ersetze sie durch Kuhmilch.

**Schritt 7:** Committe die Änderungen auf dem "keine-kokosmilch"-Branch.

**Schritt 8:** Wechsle zurück zum "main"-Branch.

**Schritt 9:** Versuche, den "mag-kokosmilch"-Branch in den "main"-Branch zu mergen. Es sollte erfolgreich sein, da keine Konflikte zwischen "main" und "mag-kokosmilch" existieren.

**Schritt 10:** Versuche nun, den "keine-kokosmilch"-Branch in den "main"-Branch zu mergen. Dabei sollte ein Konflikt auftreten.

**Schritt 11:** Löse den Konflikt in der Datei "zutaten.txt" eigenständig, indem du entscheidest, welche Version von Kokosmilch beibehalten werden soll oder ob sie entfernt werden soll. Entferne auch die Konfliktmarkierungen.

**Schritt 12:** Führe den Merge-Vorgang durch, nachdem der Konflikt gelöst wurde.

**Schritt 13:** Überprüfe den Commit-Verlauf und stelle sicher, dass die Konflikte gelöst wurden.

**Schritt 14:** Lösche die beiden feature-branches und überprüfe dies.

Damit hast du alle Schritte erfolgreich abgeschlossen!