---

class: invert

---

# Einführung in Dateiberechtigungen unter Linux

---

## Einleitung

---

### Welche Rolle spielen Dateiberechtigungen?

---

#### Kleiderspint im Schwimmbad

- Jeder Nutzer hat einen eigenen Spint (zum Verstauen von Kleidung und Wertsachen)
- Jeder Spint hat ein Schloss, das nur der Besitzer öffnen kann
- Andere Nutzer können den Spint nicht öffnen, es sei denn, der Besitzer gibt ihnen den Schlüssel
- Der Bademeister hat einen Generalschlüssel, um in Notfällen Zugriff zu erhalten

---

#### Übertragung auf Dateiberechtigungen

- Sicherstellen, dass nur berechtigte Nutzer auf Dateien zugreifen können
- Schutz von Daten vor unautorisiertem Zugriff und Manipulation
- Grundlage für Datensicherheit und Datenschutz

---

### Bedeutung von Dateiberechtigungen im Kontext von Sicherheit und Datenschutz

- Verhindern von Datenlecks und Sicherheitsverletzungen
- Gewährleistung der **Vertraulichkeit**, **Integrität** und **Verfügbarkeit** von Daten
- Einhaltung von Compliance-Vorschriften und Sicherheitsrichtlinien

---

## File Permissions - Grundlagen

---

### Wie funktionieren Dateiberechtigungen unter Linux?

---

#### Benutzer-, Gruppen- und Andere-Berechtigungen

- Jede Datei gehört einem Benutzer und einer Gruppe
- Berechtigungen können separat für Eigentümer, Gruppe und Andere festgelegt werden

---

##### Beispiel: Benutzer, Gruppen und Andere

- Wenn der Benutzer `max` eine Datei `beispiel.txt` erstellt, ist er der Eigentümer
- Die Gruppe `team` ist die Standardgruppe von `max` (auf Ubuntu ist die Gruppe gleich dem Benutzernamen)
- Andere Benutzer, die nicht `max` oder Mitglieder von `team` sind, gehören zur Kategorie "Andere"

---

#### Lese-, Schreib- und Ausführungsberechtigungen

- **Lesen** (r): Datei lesen oder Verzeichnisinhalt anzeigen
- **Schreiben** (w): Datei modifizieren oder im Verzeichnis erstellen/löschen
- **Ausführen** (x): Datei ausführen oder Verzeichnis betreten

---

- **Lesen** (r): Datei lesen oder Verzeichnisinhalt anzeigen
- **Schreiben** (w): Datei modifizieren oder im Verzeichnis erstellen/löschen
- **Ausführen** (x): Datei ausführen oder Verzeichnis betreten

---

#### Bits und ihre Bedeutung

- **Ausführen** (x): 1
- **Schreiben** (w): 2
- **Lesen** (r): 4

- Je nachdem welche Kombination von Bits gesetzt ist, ergibt sich eine bestimmte Berechtigung

---

#### Beispiel Rechnung

- Berechtigung für Lesen und Schreiben: 4 (Lesen) + 2 (Schreiben) = 6
- Berechtigung für Lesen, Schreiben und Ausführen: 4 (Lesen) + 2 (Schreiben) + 1 (Ausführen) = 7
- Berechtigung für Lesen und Ausführen: 4 (Lesen) + 1 (Ausführen) = 5

---

| Bit | Berechtigung | Bedeutung                | Binärer Wert  |
| --- | ------------ | ------------------------ | ------------- |
| 7   | rwx          | read, write and execute  | 111           |
| 6   | rw-          | read and write           | 110           |
| 5   | r-x          | read and execute         | 101           |
| 4   | r--          | read only                | 100           |
| 3   | -wx          | write and execute        | 011           |
| 2   | -w-          | write only               | 010           |
| 1   | --x          | execute only             | 001           |
| 0   | ---          | none                     | 000           |

---

#### Permission-Bits und ihre Bedeutung

- **Diese Berechtigungen können für Eigentümer, Gruppe und Andere separat festgelegt werden**
- `rwx` für Eigentümer, Gruppe, Andere
- Z.B., `-rwxr-xr--` zeigt an, dass der Eigentümer vollständige Kontrolle hat, die Gruppe lesen und ausführen kann, und Andere nur lesen dürfen

---

## Praktische Anwendung von Dateiberechtigungen unter Linux

---

### Dateiberechtigungen auslesen

---

#### Verwenden von `ls -l` und Interpretation der Ausgabe

- `ls -l` zeigt Dateiberechtigungen, Eigentümer, Gruppe und Dateigröße
- Beispiel: `-rw-r--r-- 1 nutzer gruppe 1234 Mär 10 12:34 beispiel.txt`
- `rw-` für Eigentümer, `r--` für Gruppe, `r--` für Andere

---

### Einführung in chmod: Modifizieren von Dateiberechtigungen

---

#### Syntax von chmod

- `chmod [Optionen] Modus Datei`
- Modus kann numerisch (z.B. `644`) oder symbolisch (z.B. `u+w`) sein
- Optionen wie `-R` für rekursive Änderungen (all Unterverzeichnisse und Dateien)

---

#### Ändern von Benutzer-, Gruppen- und Andere-Berechtigungen mit chmod

- **Numerisch**: Summe von 4 (lesen), 2 (schreiben), 1 (ausführen) für jede Kategorie

- **Symbolisch**: `u` für Eigentümer, `g` für Gruppe, `o` für Andere, `a` für alle
- **Operationen**: `+` für Hinzufügen, `-` für Entfernen, `=` für Setzen
- Wird das `u` weggelassen, wird die Berechtigung für alle Kategorien geändert `chmod +x datei`

---

#### Beispiele für chmod

- **Numerisch**: `chmod 755 datei` (rwx für Eigentümer, rx für Gruppe und Andere)
- **Symbolisch**: `chmod u+x datei` (Fügt Ausführungsberechtigung für Eigentümer hinzu)

---

## Fragen?
