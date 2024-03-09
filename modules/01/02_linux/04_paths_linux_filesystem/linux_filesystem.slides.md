---

class: invert

---

# Einführung in das Linux-Dateisystem

---

## Einführung

- **Was ist ein Dateisystem?**
- Stell dir ein Dateisystem vor wie eine riesige Bibliothek, in der alle Bücher (Dateien)
- systematisch in verschiedenen Abschnitten (Verzeichnissen) angeordnet sind,
- um das Auffinden und Verwalten zu erleichtern.

---

### Everything is a file

- **In Linux ist alles eine Datei:**
- Dateien, Verzeichnisse, Geräte, Prozesse, Sockets, etc.
- Alles wird als Datei behandelt und über das Dateisystem verwaltet.

---

## Das Filesystem Hierarchy Standard (FHS)

- **Definition und Bedeutung des FHS:** FHS ist wie die Katalogisierungsregel einer Bibliothek, die festlegt, wo welche Bücher stehen sollen.
- **Geschichte und Entwicklung:** Entwickelt, um Ordnung in das Chaos verschiedener Linux-Distributionen zu bringen.
- **Funktionen und Vorteile:** Vereinfacht die Navigation, Softwareinstallation und Fehlerbehebung im Linux-System.
- **Anwendungen und Verwendung:** Wird von allen Linux-Distributionen verwendet, um eine konsistente Struktur zu gewährleisten.
- **Herausgeber und Aktualisierungen:** Wird von der Linux Foundation verwaltet und regelmäßig aktualisiert, um mit den neuesten Entwicklungen Schritt zu halten.

---

## Die Struktur des FHS

- **Aufbau der FHS-Struktur:** Ähnlich wie das Einteilungsschema einer Bibliothek in verschiedene Bereiche für Romane, Sachbücher usw.
- **Besonderheiten:** Jedes Verzeichnis hat einen spezifischen Zweck, ähnlich wie ein bestimmtes Regal für eine bestimmte Art von Büchern.
- **Unterschiede zu anderen Dateisystemstrukturen:** Linux's FHS unterscheidet sich von anderen Betriebssystemen wie Windows, ähnlich wie unterschiedliche Bibliotheken unterschiedliche Katalogisierungsregeln haben können.

---

## Verzeichnisse im FHS

---

### /root

- **Das Privatzimmer des Bibliothekars (/root):**
  - Der /root Ordner ist das Heimverzeichnis des Superusers (Root-Nutzer).
  - Hier werden persönliche Einstellungen und Daten des Root-Nutzers aufbewahrt.
  - Ähnlich wie ein abgeschlossenes Büro innerhalb der Bibliothek, das nur vom Bibliotheksleiter betreten werden darf.
  - **Beispiel:** Konfigurationsdateien für den Root-Nutzer.

---

### /home

- **Die Leseecken für die Nutzer (/home):**
  - In /home befinden sich die persönlichen Verzeichnisse aller Nutzer.
  - Jeder Nutzer hat hier seinen eigenen Bereich, ähnlich wie private Leseecken.
  - Hier werden persönliche Dokumente, Downloads und andere Nutzerdaten gespeichert.
  - **Beispiel:** /home/johndoe/Documents für Dokumente des Nutzers "johndoe".

---

### /bin

- **Die Programmsammlung (/bin):**
  - /bin enthält wichtige ausführbare Programme (Binärdateien), die von Nutzern und dem System benötigt werden.
  - Diese Programme sind für alle Nutzer verfügbar und essentiell für den Betrieb des Systems.
  - **Beispiel:** ls, cp, mv sind grundlegende Befehle, die hier gespeichert werden.

---

### /boot

- **Der Eingangsbereich der Bibliothek (/boot):**
  - Enthält die Dateien, die für den Startvorgang des Systems notwendig sind (Bootloader, Kernel).
  - Vergleichbar mit den Informationen und Anleitungen am Eingang einer Bibliothek, die erklären, wie man Zutritt erhält.
  - **Beispiel:** Der Kernel, initrd-Images.

---

### /etc

- **Das Verwaltungsbüro (/etc):**
  - Beinhaltet Konfigurationsdateien für das System und Anwendungen.
  - Ähnlich einem Büro, wo Organisationspläne und Richtlinien für die Bibliothek aufbewahrt werden.
  - **Beispiel:** /etc/passwd enthält Nutzerkontoinformationen.

---

### /run

- **Die Notizblöcke der Bibliothek (/run):**
  - Temporärer Speicherort für Informationen über das System, während es läuft.
  - Vergleichbar mit Notizblöcken in der Bibliothek, die für aktuelle Notizen und Informationen genutzt werden.
  - **Beispiel:** Prozess-IDs und Sitzungsinformationen werden hier gespeichert.

---

### /usr

- **Die Hauptbüchersammlung (/usr):**
  - /usr enthält eine große Anzahl an Programmen, Bibliotheken und Dokumentationen.
  - Ähnlich dem Hauptlager einer Bibliothek, wo die Mehrheit der Bücher und Ressourcen aufbewahrt wird.
  - **Beispiel:** /usr/bin für zusätzliche Benutzerprogramme, /usr/local für vom Nutzer installierte Software.

---

### /var

- **Das Archiv (/var):**
  - Beinhaltet variabel veränderbare Daten wie **Log-Dateien**, Mails.
  - Vergleichbar mit einem Archiv in einer Bibliothek, wo Zeitschriften und Briefe aufbewahrt werden.
  - **Beispiel:** /var/log für Logdateien, /var/mail für Nutzer-Mailboxen.

---

### /dev

- **Die Werkzeuge und Geräte (/dev):**
  - Enthält spezielle Dateien, die Hardware-Geräte repräsentieren.
  - Ähnlich den Geräten in einer Bibliothek, wie Drucker oder Scanner.
  - **Beispiel:** /dev/sda (Festplatte), /dev/tty (Terminalgeräte).

---

### /mnt

- **Die temporären Regale (/mnt):**
  - Ein Ort, um temporäre Dateisysteme wie USB-Laufwerke zu montieren.
  - Vergleichbar mit einem Bereich, wo man kurzzeitig Bücher ablegen kann, die man aus einem anderen Zimmer geholt hat.
  - **Beispiel:** Einbinden eines externen Speichergeräts in /mnt/usb.

---

### /tmp

- **Der Papierkorb (/tmp):**
  - Ein Verzeichnis für temporäre Dateien, die bis zum Neustart des Systems benötigt werden.
  - Ähnlich einem Papierkorb in der Bibliothek, in den man Notizen wirft, die nur für den aktuellen Besuch wichtig sind.
  - **Beispiel:** Temporäre Dateien, die von Anwendungen erstellt werden, wie z.B. /tmp/setup.log.

---

## Pfade im Linux-Dateisystem

- **Was ist ein Pfad?** Wie eine Wegbeschreibung in der Bibliothek, die dir zeigt, wo du ein bestimmtes Buch findest.

---

### Absoluter Pfad

- Die vollständige Adresse eines Buches, von der Eingangstür bis zum Regal.
- *Beispiel:* `/home/fabio/Documents/myfile.txt`
- **Vorteile:** Eindeutig und unveränderlich, ähnlich wie die Adresse eines Hauses.
- **Nachteile:** Kann lang und unhandlich sein, ähnlich wie eine lange Wegbeschreibung.

- **Muss immer mit einem Slash (/) beginnen.**

---

### Relativer Pfad

- Die Wegbeschreibung von deinem aktuellen Standort zum gewünschten Buch.
- *Beispiel:* Wenn du in `/home/fabio` bist, ist `Documents/myfile.txt` der relative Pfad zu myfile.txt.
- **Unterschiede:** Ein absoluter Pfad ist wie eine vollständige Postadresse, während ein relativer Pfad wie eine Wegbeschreibung von deinem aktuellen Ort ist.
- **Vorteile:** Kürzer und einfacher zu schreiben, ähnlich wie eine kurze Wegbeschreibung.
- **Nachteile:** Ist ungenau, da sie von deinem aktuellen Standort abhängt, ähnlich wie eine Wegbeschreibung, die nur für eine bestimmte Person gilt.

---

## Linux vs. Windows

- **Unterschied zwischen Linux- und Windows-Dateisystem:** Linux verwendet FHS, während Windows Laufwerksbuchstaben und Ordner verwendet
- **Vergleich der Verzeichnisstrukturen:** Linux hat eine baumartige Struktur mit einem Wurzelverzeichnis, während Windows eine per Laufwerk getrennte Struktur hat.
- **Leistung und Effizienz:** Beide Systeme haben ihre Stärken

---

## Ext4-Dateisystem

- **Was ist Ext4?**
  - Ext4 steht für "Fourth Extended Filesystem" und ist die vierte Generation von Linux-Dateisystemen.
  - Es ist der Standarddateisystemtyp für viele Linux-Distributionen.
  - Ähnlich wie eine fortschrittliche Katalogisierungsmethode in einer Bibliothek, die das Auffinden von Büchern schneller und effizienter macht.

---

## Funktionen von Ext4

- **Größere Datei- und Dateisystemgrößen:**
  - Ext4 unterstützt Volumen mit bis zu 1 Exbibyte und Dateigrößen von bis zu 16 Tebibyte.
  - Stelle dir vor, eine Bibliothek könnte plötzlich Millionen zusätzlicher Bücher aufnehmen, ohne mehr Platz zu benötigen.

- **Extents:**
  - Ext4 verwendet Extents, eine effizientere Art der Dateispeicherung, die die Fragmentierung reduziert.
  - Ein Extent ist wie ein großer Regalabschnitt in einer Bibliothek, der mehrere Bücher eines Autors zusammenhält, anstatt sie über das ganze Gebäude zu verteilen.

---

## Weitere Merkmale von Ext4

- **Delayed Allocation:**
  - Eine Technik zur Verbesserung der Leistung und Reduzierung der Fragmentierung durch verzögerte Zuteilung von Blöcken.
  - Ähnlich wie wenn ein Bibliothekar Bücher sammelt und sie alle auf einmal in die richtigen Regale räumt, anstatt jedes einzeln zu platzieren.

- **Journaling:**
  - Ext4 unterstützt Journaling, was die Wiederherstellung des Dateisystems nach einem Absturz erleichtert.
  - Vergleichbar mit einem Protokoll in einer Bibliothek, das alle Bewegungen von Büchern aufzeichnet, sodass bei einem Problem schnell festgestellt werden kann, wo alles sein sollte.
