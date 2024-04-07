---

class: invert

---

# Prozesse und Memory

---

## Konfigurationsverwaltung

---

### Verstehen der Linux-Konfigurationsdateien

- **Das /etc/-Verzeichnis**
  - Stelle dir /etc/ wie das zentrale Command-Center deines Systems vor, in dem alle Einstellungen und Konfigurationen gespeichert sind.
  - Hier findest du Konfigurationsdateien für Softwarepakete, Netzwerkeinstellungen und mehr.

- **Die Nutzung von Konfigurationsdateien**
  - Ähnlich wie bei einem Kochbuch, das Rezepte für dein Lieblingsgericht enthält, bieten dir diese Dateien Anleitungen, wie Programme oder Dienste zu konfigurieren sind.

---

### Wichtie Konfigurationsdateien

- **/etc/passwd** -> Alle Benutzerkonten auf dem System (mit Informationen wie Benutzer-ID, Gruppen-ID, Home-Verzeichnis und Shell).
- **/etc/group** -> Alle Gruppen auf dem System (mit Informationen wie Gruppen-ID und Mitglieder).
- **/etc/shadow** -> Die verschlüsselten (hash) Passwörter der Benutzer.
- **/etc/hostname** -> Der Hostname des Systems.
- **/etc/hosts** -> Die Hostnamen und IP-Adressen des Systems.
- **/etc/resolv.conf** -> Die DNS-Konfiguration des Systems.
- **/etc/fstab** -> Die Dateisysteme, die beim Systemstart eingehängt werden sollen.

---

## Prozessverwaltung

---

### Definition und Funktion von Prozessen

- Prozesse sind wie Büroangestellte, die in deinem Computer arbeiten; jeder hat seine eigene Aufgabe.
- **Im Endeffekt Programme, die auf deinem Computer ausgeführt werden.**

---

### Eigenschaften von Prozessen

- Prozesse haben eine **eindeutige Prozess-ID (PID)**.
- Prozesse haben einen **Zustand (z.B. laufend, schlafend, beendet)**.
- Prozesse haben einen **Besitzer (Owner)**.
- Prozesse können im **Vordergrund oder Hintergrund** laufen.
- Prozesse können miteinander **kommunizieren**.
- Prozesse können **Kinderprozesse (Child Processes)** erzeugen.
- Prozesse **können beendet werden**.

---

### Erkennen, wo Prozessinformationen gespeichert werden

- **Verständnis des /proc/-Verzeichnisses**
  - /proc/ ist wie ein Echtzeit-Berichtsbüro, das Details über die laufenden Prozesse und das System liefert.
  - Hier findest du Informationen über Prozesse, Speicher, Netzwerk und mehr.
  - Jeder Prozess hat ein eigenes Verzeichnis in /proc/ mit seiner PID als Name.
  - In jedem Prozessverzeichnis findest du Dateien, die Informationen über den Prozess enthalten.
  - Zum Beispiel: `/proc/1/` enthält Informationen über den ersten Prozess (init Prozess).

---

### Prozessverwaltung mit ps und top

- `ps` ist wie ein Schnappschuss der aktuell arbeitenden Angestellten. (z.B. `ps aux`)
- `top` bietet eine Live-Ansicht, wer am fleißigsten arbeitet oder wer am meisten Ressourcen verbraucht.
  - Es gibt auch verbesserte Versionen wie:
    - `htop`
    - `bottom`
    - `btop`

---

## Memory

---

### Was ist Memory (Wiederholung)?

- **RAM (Random Access Memory)** ist wie ein Schreibtisch, auf dem du deine Arbeit erledigst.
  - Je größer der Schreibtisch, desto mehr Projekte kannst du gleichzeitig bearbeiten.

- Kurz gesagt, **RAM ist der Speicher, den dein Computer verwendet, um Daten und Programme zu speichern, auf die er gerade zugreift.**
- Es ist **schneller als Festplattenspeicher**, aber auch **teurer**.
- **RAM ist flüchtig**, was bedeutet, dass die Daten verloren gehen, wenn der Computer ausgeschaltet wird.
- **RAM ist begrenzt**, was bedeutet, dass du nur so viele Programme gleichzeitig ausführen kannst, wie dein RAM zulässt.
- **RAM ist wichtig für die Leistung deines Computers.**

---

### Wie wird Memory verwendet?

- Sobald ein Programm gestartet wird, wird es in den RAM geladen.
- Um auf die Daten zuzugreifen, die in einem Programm gespeichert sind, muss der Prozessor auf den RAM zugreifen.
- Hierfür wird eine **virtuelle Speicheradresse** verwendet, die auf den physischen Speicher im RAM abgebildet wird.
  - Diese Adressen sind wie Postleitzahlen, die den Speicherbereich identifizieren, in dem die Daten gespeichert sind.

---

### Umgang mit dem Befehl free

- Der Befehl `free` ist wie ein Bankkontoauszug für deinen RAM, der dir zeigt, wie viel Speicher du noch frei hast.
- `free -h` zeigt dir die Speicherinformationen in einer für Menschen lesbaren Form an.

---

## Systembenachrichtigungen und Logging

---

### Verständnis der Systembenachrichtigungen

- Systembenachrichtigungen sind wie Briefe, die dein System dir hinterlässt, um dich über bestimmte Ereignisse zu informieren.
- Außerdem weisen sie nach, was wann und warum passiert ist.

---

### Wo Systembenachrichtigungen auf einem Linux-System gespeichert werden

- Das **/var/log/** ist wie ein Archiv, das alle vergangenen Ereignisse und Briefe deines Systems aufbewahrt.

---

### Verwenden von dmesg zur Verwaltung von Systembenachrichtigungen

- `dmesg` ermöglicht es dir, die neuesten Nachrichten von deinem System zu lesen, fast wie das Überprüfen deiner letzten Textnachrichten.

---

### Verwendung von syslog zur zentralen Protokollierung

- `syslog` ist wie ein Bibliothekar, der dir hilft, deine Tagebucheinträge zu organisieren und bei Bedarf nachzuschlagen.
- Es ist ein Dienst, der Protokolle von verschiedenen Programmen und Diensten **über mehrere Server hinweg** sammelt und speichert.
