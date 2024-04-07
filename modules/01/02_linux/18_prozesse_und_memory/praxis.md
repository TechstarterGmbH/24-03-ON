# Praktische Aufgabe: Erkunden von Prozessen unter Linux

**Ziel:** Diese Aufgabe zielt darauf ab, grundlegende Kenntnisse über die Verwaltung und Überwachung von Prozessen unter Linux zu vermitteln. Du wirst lernen, wie man Prozesse auflistet, Informationen über sie erhält, und Prozesse nach Bedarf beendet.


**Aufgaben:**

1. **Liste aller laufenden Prozesse**
  - Öffne ein Terminal.
  - Verwende den Befehl `ps aux` um eine Liste aller laufenden Prozesse anzuzeigen.
  - Beobachte die Ausgabe und identifiziere die Spalten: USER, PID, %CPU, %MEM, COMMAND.

2. **Verwende `top` zur Echtzeitüberwachung**
  - Führe im Terminal den Befehl `top` aus.
  - Beobachte, wie sich die Prozessliste in Echtzeit aktualisiert.
  - Drücke `q`, um `top` zu verlassen.

3. **Starten eines neuen Prozesses**
  - Öffne ein neues Terminal.
  - Du solltest jetzt zwei Terminals haben, eines für die Prozessüberwachung und eines für die Ausführung neuer Prozesse.
  - Starte einen neuen Prozess, z.B. `sleep 6000`, um einen Prozess zu starten, der 6000 Sekunden lang schläft.

4. **Finden eines spezifischen Prozesses**
  - Jetzt wieder im ursprünglichen Terminal, führe `ps aux | grep sleep` aus, um unseren schlafenden Prozess zu finden.
  - Notiere die Prozess-ID (PID) des schlafenden Prozesses.

5. **Beenden eines Prozesses**
  - **Warnung:** Sei vorsichtig bei der Auswahl des zu beendenden Prozesses. Das Beenden bestimmter Prozesse kann zu Datenverlust oder Systeminstabilität führen.
  - Verwende den Befehl `kill PID`, wobei du `PID` durch die Prozess-ID ersetzt, die du im vorherigen Schritt notiert hast. Dies sendet ein Signal, um den Prozess zu beenden.
  - Überprüfe mit `ps aux | grep sleep`, ob der Prozess beendet wurde. Wenn der Prozess immer noch läuft, kannst du `kill -9 PID` verwenden, um den Prozess zu erzwingen, aber verwende diese Option mit Vorsicht.
