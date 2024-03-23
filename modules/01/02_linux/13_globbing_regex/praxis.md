# Praktische Aufgabe: Shell Globbing und Regular Expressions

Ziel dieser Aufgabe ist es, euer Wissen über Shell Globbing und Regular Expressions zu festigen. Ihr werdet verschiedene Dateien in einem Verzeichnis filtern und Textmuster in einer Datei suchen und ersetzen.

## 1. Shell Globbing

0. **Vorbereitung**: Erstellt ein Verzeichnis, wechselt in dieses und erstellt einige Testdateien.
   ```bash
   mkdir globbing_regex
   cd globbing_regex
   touch A1.txt A2.txt A3.txt Aaa.txt B.txt C.txt
   ```

1. **Dateien auflisten**: Listet alle `.txt` Dateien in eurem aktuellen Verzeichnis auf.
   ```bash
   ls *.txt
   ```

3. **Spezifische Suche**: Findet alle Dateien, die mit `A` beginnen und auf `.txt` enden.
   ```bash
   ls A*.txt
   ```

4. **Wildcard `?`**: Findet alle Dateien, die mit einem einzelnen Zeichen beginnen und auf `.txt` enden.
   ```bash
   ls ?.txt
   ```

5. **Wildcard `*`**: Findet alle Dateien, die mit `A` beginnen.
   ```bash
    ls A*
    ```

### Teil 2: Regular Expressions

0. **Öffne (regex101.com)[https://regex101.com/]** und füge die folgenden Beispiele ein, um sie zu testen.

```plaintext
78&*gh
(555) 123-4567
info@localhost
+1-800-123-4567
123.456.7890
uv123wxyz
user@example.com
xyz-!@#
test.user@openai.com
http://localhost:8080
abc123
Asdf1234
mnop_qrst
www.example.com
Test
https://openai.com
USER
```

1. **Finde alle Großbuchstaben**: Findet alle Großbuchstaben

```plaintext
  [A-Z]*
```

2. **Finde alle Zahlen**: Findet alle Zahlen

```plaintext
  [0-9]*
```

3. **Finde alle Buchstaben mit Zahlen**: Findet alle Buchstaben, wo danach Zahl(en) folgen

```plaintext
  [A-Za-z]*[0-9]*
```

4. **Finde alle Bereiche, die mit a oder A beginnen**: Findet alle Wörter, die mit `a` oder `A` beginnen

```plaintext
  [aA][a-zA-Z]*
```

5. **Finde alle Vorkommnisse von http: oder https:**: Findet alle Vorkommnisse von `http` oder `https`

```plaintext
  https?:
```

- ... Und auch alle Vorkommnisse von `http` oder `https` gefolgt von beliebigen Zeichen

```plaintext
  https?:.*
```
