---

class: invert

---

# Einführung in environment variables

---

## Was sind environment variables?

### Umgebungsvariablen

- Variablen, die von Prozessen verwendet werden, um Informationen über die Umgebung zu speichern.
- in der Regel in Großbuchstaben geschrieben.
- können von Prozessen gelesen und geändert werden.
---
### Umgebung spezifische Informationen

- ändern sich von einer Umgebung zur anderen

---

## Warum sind sie wichtig?

- Konfiguration von Programmen
- Steuerung des Verhaltens von Programmen
- Speicherung von Informationen über die Umgebung, den Benutzer und das System
- Verwendung in Skripten und Programmen
---

## Best Practices

- Großbuchstaben
- Verwenden Sie keine Sonderzeichen($, %, &, ...)
- Verwenden Sie keine Leerzeichen
- Verwenden Sie keine Zahlen am Anfang
- Verwenden Sie keine bereits vorhandenen Variablennamen
- Verwenden Sie keine Umlaute
---
## Wie kann ich Umgebungsvariablen anzeigen? 

- `printenv` oder `env`
- `echo $VARIABLE_NAME`
- `env | grep VARIABLE_NAME`
---
## Wie kann ich Umgebungsvariablen setzen?

- `export VARIABLE_NAME=value`
- `VARIABLE_NAME=value`
---
## Wie kann ich persistente Umgebungsvariablen setzen?

### ~/.bashrc

- `echo "export VARIABLE_NAME=value" >> ~/.bashrc` or nano ~/.bashrc
- `source ~/.bashrc`
- `echo $VARIABLE_NAME` or `printenv | grep VARIABLE_NAME`
---
## Wie kann ich globale Umgebungsvariablen setzen?

- /etc/environment
---
## Unterschied zwischen lokalen und globalen Umgebungsvariablen

- Lokale Umgebungsvariablen sind nur in der aktuellen Shell-Sitzung verfügbar.
- Globale Umgebungsvariablen sind in allen Shell-Sitzungen verfügbar.
---
## Unterschied zwischen Umgebungsvariablen und normalen Variablen (wie in Skripten)

- Umgebungsvariablen sind in der Regel in Großbuchstaben geschrieben.
- Umgebungsvariablen werden in der Regel in der Systemkonfiguration verwendet.
- Shell-Variablen werden in der Regel in Skripten und Programmen verwendet.
---
## wie kann ich Umgebungsvariablen löschen?

- `unset VARIABLE_NAME`

### Für persistente Umgebungsvariablen und globale Umgebungsvariablen
- `nano ~/.bashrc` or `nano /etc/environment`
- Löschen Sie die Zeile, die die Variable enthält.
- `source ~/.bashrc` or `source /etc/environment`
---
## Zusammenfassung

- Lokale Umgebungsvariablen
- persistente Umgebungsvariablen
- globale Umgebungsvariablen
- Unterschied zwischen Umgebungsvariablen und normalen Variablen
- Anzeigen, setzen und löschen von Umgebungsvariablen
---
## Fragen
---
## $PATH

- Wie findet die Shell das Programm `usr/bin/cat` wenn ich `cat` eingebe?
- Warum muss ich den vollständigen Pfad angeben, wenn ich ein Skript ausführen möchte?
- Warum kann ich `ls` oder `cat` ohne den vollständigen Pfad ausführen?

---
## Die Pfad Umgebungsvariable

- Die Pfad Umgebungsvariable ist eine ___________ Umgebungsvariable.
- Die Pfad Umgebungsvariable enthält eine Liste von Verzeichnissen, in denen das System nach ausführbaren Dateien sucht.
---
## Beispiel

- test.sh ist ein Skript, das in ~/bin/ liegt.
- Wie kann ich test.sh ausführen, ohne den vollständigen Pfad anzugeben?
---
## Wie kann ich die PATH Umgebungsvariable anzeigen?

- `echo $PATH`
---
## Wie kann ich die PATH Umgebungsvariable setzen?

- `export PATH=$PATH:~/bin:dir:dir:...`
- `nano /etc/environment` oder `nano ~/.bashrc`
- `source /etc/environment` oder `source ~/.bashrc`
---
## Wann braucht man das?

- Wenn Sie ein Skript oder ein Programm ausführen möchten, ohne den vollständigen Pfad anzugeben.
- Wenn Sie Skripte oder Programme in einem bestimmten Verzeichnis speichern möchten, um sie auszuführen.
---
## Sicherheitsaspekte

- Wenn Sie ein Verzeichnis am Anfang des Pfades hinzufügen, kann dies zu Sicherheitsproblemen führen. WARUM?
- Wenn Sie ein Verzeichnis am Anfang des Pfades hinzufügen, wird das System zuerst nach den Verzeichnissen suchen, die Sie hinzugefügt haben.
---
## Sicherheitsaspekte

- Wenn Sie ein Verzeichnis am Ende des Pfades hinzufügen, wird das System zuerst nach den Standardverzeichnissen suchen.
---
## Zusammenfassung

- Die PATH Umgebungsvariable
- Anzeigen, setzen und löschen der PATH Umgebungsvariable
- Sicherheits
---
## Fragen
---