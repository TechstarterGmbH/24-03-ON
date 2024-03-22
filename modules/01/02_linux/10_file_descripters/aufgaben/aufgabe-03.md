# Aufgabe 3: Freiwillig

## 1. Theorie

1. Was ist der `stdin` und `stdout` Stream? Beschreibe anhand eines einfachen Beispiels.
2. Warum gibt es den `stderr` Stream?
3. Was ist der Unterschied zwischen `|` und `>`?
4. Was ist der Unterschied zwischen `>` und `>>`?

## 2. Praxis

1. Erstelle eine neue Datei `input.txt` in deinem Terminal und füge folgenden Text ein:

```text
Meine
Oma
faehrt
im
Huennerstall
Motorrad
```

2. Nutze den `cat` Befehl, um den Inhalt der Datei `input.txt` auf der Konsole auszugeben.
3. Nutze eine Pipe `|`, um den ausgegebenen Text (aus dem vorherigen Schritt) in einen anderen Befehl weiterzuleiten, der nach allen Zeilen sucht, die das Zeichen `e` enthalten.
4. Nutze das `>`, um das Ergebnis des vorherigen Schritts in eine neue Datei `output.txt` zu schreiben.
5. Ergänze die Pipeline (Befehlsverkettung) aus Schritt 3 und nutze den `wc -l` Befehl, um die Anzahl der Zeilen zu zählen, die das Zeichen `e` enthalten.

## 2.1 Bonus

Erstelle für jeden Befehl eine Pipeline, welche die Bedingungen erfüllt:

1. Wie viele Dateien/Ordner gibt es in /etc, die den Buchstaben `a` enthalten?
2. Finde alle Zeilen im Systemlog `/var/log/syslog`, die das Wort `error` enthalten. (Sudo-Rechte erforderlich) Speicher diese in einer Datei `~/errors.log`.
