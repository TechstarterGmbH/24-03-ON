# Vertiefung in Shell Scripting

## 1. Umgang mit Argumenten

### 1.1 Grundlagen zu Argumenten

In Shell Scripts sind Argumente vergleichbar mit variablen Zutaten in einem Rezept, die du hinzufügst, um das Endergebnis je nach Bedarf anzupassen.
Beim Ausführen eines Scripts können spezifische Daten über die Kommandozeile übergeben werden, welche das Verhalten des Scripts dynamisch verändern.

### 1.2 Nutzen von Argumenten

- Beim Aufruf eines Scripts kannst du Argumente übergeben, die innerhalb des Scripts über `$1`, `$2`, `$3`, usw. zugänglich sind, wobei `$1` das erste Argument darstellt.
- Du kannst die Anzahl der übergebenen Argumente mit `$#` prüfen.
- `$@` und `$*` ermöglichen es dir, alle Argumente als Liste zu behandeln, wobei `$@` besonders nützlich in Kombination mit Anführungszeichen ist, um Argumente mit Leerzeichen korrekt zu verarbeiten.
- Alle Argumente sind mit einem Leerzeichen getrennt, falls du ein Leerzeichen als Argument benötigst, musst du es in Anführungszeichen setzen.
- Argumente können auch in einer Schleife verarbeitet werden, um repetitive Aufgaben zu automatisieren.

### 1.3 Beispiel

```bash
echo "Anzahl der Argumente: $#"
echo "Alle Argumente: $@"
for arg in "$@"
do
  echo "Verarbeiten von: $arg"
done
```

```bash
./script.sh Hallo Welt "Shell Scripting"
```

## 2: Die if-Anweisung und der Test-Befehl

### 2.1 if-Anweisungen verstehen

- Eine if-Anweisung ermöglicht es dir, Befehle basierend auf Bedingungen auszuführen.
- Also stell dir ein Rezept vor, wo manche Schritte optional sind: *Wenn du eine Schokoladen-Creme auf deinem Kuchen möchtest, führe folgende Schritte aus...*
- Die if-Anweisung prüft eine Bedingung und führt Befehle aus, wenn die Bedingung wahr ist.

```bash
if [ Bedingung ]
then
  Befehle
fi
```

### 2.2 Die Rolle von `[` (test)

- In Shell Scripts ist `[` ein Synonym für den Befehl `test`. Es bewertet Bedingungen und kehrt einen Exit-Status zurück (0 für wahr, nicht 0 für falsch). Die Schließende `]` ist dabei erforderlich.
- `[` prüft eine Vielzahl von Bedingungen, einschließlich Dateiattribute und String-Vergleiche.
- Für mehr informationen, siehe `man test`.

### 2.3 Beispiele für if-Anweisungen

- Überprüfen, ob eine Variable gleich einem Wert ist:

```bash
if [ "$variable" = "wert" ]
then
  echo "Die Variable ist gleich wert."
fi
```

- Testen, ob eine Datei existiert:

```bash
if [ -f "datei.txt" ]
then
  echo "Die Datei existiert."
else
  echo "Die Datei existiert nicht."
fi
```

## 3. for-Schleife

### 3.1 Nutzung der for-Schleife

Eine for-Schleife dient dazu, Befehle für jedes Element in einer Liste oder einem Bereich zu wiederholen.
Dies ist hilfreich, um repetitive Aufgaben effizient zu automatisieren.

- Stell dir vor, du bereitest eine Mahlzeit für eine Gruppe von Gästen vor und musst für jeden Gast eine Portion zubereiten.
- Die for-Schleife ist vergleichbar mit einer Anweisung wie: *Für jeden Gast, bereite eine Portion zu...*

```bash
for gast in Gast1 Gast2 Gast3
do
  echo "Portion für $gast zubereiten"
done
```

### 3.2 Syntax und Beispiele

- Durchlaufen einer Liste von Wörtern:

```bash
for wort in Hallo Welt "Shell Scripting"
do
  echo $wort
done
```

- Nutzung eines Zahlenbereichs:

```bash
for nummer in {1..5}
do
  echo "Zahl: $nummer"
done
```

## 4. while-Schleife

### 4.1 Verständnis der while-Schleife

Die while-Schleife führt Befehle aus, solange die angegebene Bedingung wahr ist.
**Sie ist ideal für Situationen, in denen die Anzahl der Wiederholungen nicht im Voraus bekannt ist.**

### 4.2 Anwendung und Beispiele

- Wiederholtes Ausführen eines Befehls, bis eine Bedingung erfüllt ist:

```bash
count=1
while [ $count -le 5 ]
do
  echo "Durchlauf: $count"
  count=$((count + 1))
done
```
