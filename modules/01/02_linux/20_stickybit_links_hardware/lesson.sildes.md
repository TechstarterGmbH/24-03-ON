---

class: invert

---

# Sticky Bit, Links, and Hardware

---

## Gliederung

1. Links
2. Hardware
3. Sticky Bit
4. Zusammenfassung

---

### Links

- Hard Links
- Symbolic Links
- Unterschiede
- Erstellen von Links
- Löschen von Links

---

### Inodes

- Für jede Datei wird eine Inode-Nummer erstellt (Index node)
- enthält Informationen über die Datei außer Content und Namen
- Wie Ausweisnummer für Dateien
- `ls -i` zeigt die Inode-Nummer

---
### Symbolic Links

- Verweisen auf den Pfad
- Können auf Dateien und Verzeichnisse zeigen
- Löschen der Originaldatei hat Auswirkung auf den Symbolic Link
- Datei wird sofort gelöscht, wenn der Symbolic Link gelöscht wird
- Erkennbar an der Dateiart `l` und dem Pfeil
- `ln -s` erstellt Symbolic Links
---
### Beispiel

- Originaldatei hat Inode-Nummer 100
- softlink1 hat Inode-Nummer 200
- softlink2 hat Inode-Nummer 300
---
### Hardlinks

- Verweisen auf die Inode-Nummer
- Können nur auf Dateien zeigen
- Löschen der Originaldatei hat keine Auswirkung auf den Hardlink
- Datei wird erst gelöscht, wenn alle Hardlinks gelöscht sind
- `ln` ohne Optionen erstellt Hardlinks
---
### Beispiel

- Originaldatei hat Inode-Nummer 100
- hardlink1 hat Inode-Nummer 100
- hardlink2 hat Inode-Nummer 100
---
### Unterschiede

- Hardlinks können nur auf Dateien zeigen
- Symbolic Links können auf Dateien und Verzeichnisse zeigen
- Hardlinks verweisen auf die Inode-Nummer
- Symbolic Links verweisen auf den Pfad

---

### Bespiel

- Erstellen Sie eine Datei `touch original_datei.txt`
- Erstellen Sie einen Hardlink `ln original_datei.txt hardlink.txt`
- Erstellen Sie einen Symbolic Link `ln -s original_datei.txt symbolic_link.txt`
- schreiben Sie in die Originaldatei `echo "Hallo Welt" > original_datei.txt`
- Lesen Sie die Dateien `cat hardlink.txt` und `cat symbolic_link.txt`

---
Quiz:

1. Was ist der Unterschied zwischen Hardlinks und Symbolic Links?
2. Wie können Sie die Anzahl der Verweise auf eine Datei anzeigen?
3. 
---
### Hardware

- Kommunikation mit Hardware über Gerätedateien
    - z.B. Festplatten, USB-Sticks, Drucker
- die sind unter /dev zu finden
- Geräte werden als Dateien dargestellt

---
### Blockgräte

- Geräte, die in Blöcken lesen und schreiben
- z.B. Festplatten, USB-Sticks
- Blockgräte werden als Dateien in /dev dargestellt
- z.B. /dev/sda

---

### Charactergräte

- Geräte, die Zeichen lesen und schreiben
- z.B. Tastatur, Maus
- Charactergräte werden als Dateien in /dev dargestelltde
- z.B. /dev/tty0
---
### Beispiel

- `ls -l /dev/sda`
- USB Gräte auflisten `lsusb`
- PCI Geräte auflisten `lspci`
- 'cat /dev/zero > zero.txt' schreibt Nullen in eine Datei
- 'cat /dev/null > null.txt' schreibt nichts in eine Datei
---

Quiz:

1. Wie können Sie die Geräte in Ihrem System auflisten?
2. Wie können Sie die USB-Geräte in Ihrem System auflisten?
3. Wie können Sie die PCI-Geräte in Ihrem System auflisten?
---

### Sticky Bit

- Sticky Bit auf Verzeichnissen
- Eine spezielle Berechtigung in Linux
- Nur der Eigentümer/root einer Datei kann sie löschen

---

### Beispiel

- erstellen Sie ein Verzeichnis `mkdir sticky_verzeichnis`
- setzen Sie das Sticky Bit `chmod +t sticky_verzeichnis`
- erstellen Sie eine Datei `touch sticky_verzeichnis/datei.txt`

---

Quiz:

- Wie können Sie das Sticky Bit auf einem Verzeichnis setzen?
---

### Gruppenarbeit (Quiz)

---

### Fragen

---
## Bonus

### Neue User anlegen

- `useradd` erstellt einen neuen Benutzer
- 'sudo useradd -d /home/neuer_benutzer -m neuer_benutzer' erstellt einen neuen Benutzer mit Home-Verzeichnis
- 'id neuer_benutzer' zeigt die Informationen des Benutzers
- 'su neuer_benutzer' wechselt zum Benutzer
- 'exit' wechselt zurück zum vorherigen Benutzer

---

- Löschen `sudo userdel neuer_benutzer`
- Löschen `sudo userdel -r neuer_benutzer` um das Home-Verzeichnis zu löschen
- '-f' option to force the deletion of the user

---

- Um einen User mit vordefinierten Datein zu erstellen, 'cd /etc/skel '
- Wieder 'useradd -d /home/neuer_benutzer -m neuer_benutzer'

---

- um passwort zu setzen 'sudo passwd neuer_benutzer'
- um es auszuprobieren 'ssh neuer_benutzer@localhost'
---