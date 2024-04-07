# Die wichtigsten Linux-Befehle

## Hilfe

### `man` - Der man-Befehl

- **Zusammenfassung**: Öffnet das Handbuch für Befehle und Programme. (Älterer UNIX-Befehl)
- **Wichtige Argumente und Flags**:
  - `man [Befehl]` zeigt das Handbuch für den spezifizierten Befehl.
  - Beispiel: `man ls` zeigt das Handbuch für `ls`.

### `info` - Der info-Befehl

- **Zusammenfassung**: Bietet detaillierte Dokumentationen, ähnlich wie `man`, aber oft mit mehr Hintergrundinformationen. Neuerer Befehl von GNU.
- **Wichtige Argumente und Flags**:
  - `info [Befehl]` zeigt die Info-Seiten für den Befehl.
  - Beispiel: `info coreutils` für Informationen über GNU core utilities.

### `/usr/share/doc/` - Dokumentation aufrufen

- **Zusammenfassung**: Ein Verzeichnis voller zusätzlicher Dokumentationen zu deinen installierten Paketen.
- **Wichtige Argumente und Flags**:
  - Durchsuche dieses Verzeichnis mit `ls` oder `cd`, um mehr über spezifische Pakete zu lernen.
  - Beispiel: `cd /usr/share/doc/grep` und `ls` zeigt Dokumentationen zu `grep`.

## Shell

### `echo` - Echo-Befehl

- **Zusammenfassung**: Gibt Text oder Variablenwerte aus.
- **Wichtige Argumente und Flags**:
  - `echo [Text]` gibt den angegebenen Text aus.
  - Beispiel: `echo "Hallo Welt"` gibt "Hallo Welt" aus.

### `history` - History-Befehl

- **Zusammenfassung**: Zeigt eine Liste der Befehle, die du zuvor eingegeben hast.
- **Wichtige Argumente und Flags**:
  - `history` zeigt die letzten Befehle an.
  - Beispiel: `history | grep man` sucht in deiner Befehlshistorie nach `man`.

### `export` - Export-Befehl

- **Zusammenfassung**: Setzt oder exportiert eine neue Umgebungsvariable.
- **Wichtige Argumente und Flags**:
  - `export NAME=Wert` setzt die Variable `NAME` auf `Wert`.
  - Beispiel: `export PATH=$PATH:/neuer/pfad` fügt `/neuer/pfad` zum `PATH` hinzu.

### `type` - Type-Befehl

- **Zusammenfassung**: Zeigt, wie ein Befehl interpretiert wird (als Alias, Schlüsselwort, Funktion, eingebaut oder Datei).
- **Wichtige Argumente und Flags**:
  - `type [Befehl]` zeigt den Typ des Befehls.
  - Beispiel: `type ls` zeigt an, ob `ls` ein Alias oder ein eingebauter Befehl ist.

## Dateien / Verzeichnisse

### `mv` - Dateien/Verzeichnisse verschieben

- **Zusammenfassung**: Verschiebt oder benennt Dateien und Verzeichnisse um.
- **Wichtige Argumente und Flags**:
  - `mv [Quelle] [Ziel]` verschiebt oder benennt um.
  - `mv -i [Quelle] [Ziel]` fragt vor dem Überschreiben.
  - Beispiel: `mv dokument.txt /neuer/ordner/` verschiebt `dokument.txt` nach `/neuer/ordner/`.

### `cp` - Dateien/Verzeichnisse kopieren

- **Zusammenfassung**: Kopiert Dateien und Verzeichnisse.
- **Wichtige Argumente und Flags**:
  - `cp [Quelle] [Ziel]` kopiert Dateien oder Verzeichnisse.
  - `cp -r [Quellverzeichnis] [Zielverzeichnis]` kopiert ein Verzeichnis rekursiv.
  - Beispiel: `cp -r /alter/ordner/ /neuer/ordner/` kopiert alles aus `/alter/ordner/` nach `/neuer/ordner/`.

### `rm` - Dateien/Verzeichnisse löschen

- **Zusammenfassung**: Löscht Dateien und Verzeichnisse.
- **Wichtige Argumente und Flags**:
  - `rm [Datei]` löscht eine Datei.
  - `rm -r [Verzeichnis]` löscht ein Verzeichnis rekursiv.
  - Beispiel: `rm -r /zu/löschender/ordner/` löscht den Ordner und alles darin.

### `mkdir` - Verzeichnisse erstellen

- **Zusammenfassung**: Erstellt ein neues Verzeichnis.
- **Wichtige Argumente und Flags**:
  - `mkdir [Verzeichnisname]` erstellt ein neues Verzeichnis.
  - `mkdir -p /pfad/zu/neuem/ordner` erstellt alle fehlenden Verzeichnisse im Pfad.
  - Beispiel: `mkdir -p /neuer/ordner` erstellt `/neuer/ordner` und alle übergeordneten Verzeichnisse.

### `rmdir` - Verzeichnisse löschen

- **Zusammenfassung**: Löscht leere Verzeichnisse.
- **Wichtige Argumente und Flags**:
  - `rmdir [Verzeichnis]` löscht ein leeres Verzeichnis.
  - Beispiel: `rmdir /leerer/ordner` löscht `/leerer/ordner`, wenn er leer ist.

### `ls`, `ls -l`, `ls -al`, `ls -hl` - Verzeichnisinhalt auflisten

- **Zusammenfassung**: Listet Dateien und Verzeichnisse auf.
- **Wichtige Argumente und Flags**:
  - `ls` zeigt Dateien und Verzeichnisse im aktuellen Verzeichnis.
  - `ls -l` zeigt detaillierte Informationen an.
  - `ls -al` zeigt versteckte Dateien und detaillierte Informationen an.
  - `ls -hl` zeigt detaillierte Informationen in einer leicht lesbaren Form.
  - Beispiel: `ls -l /verzeichnis/` listet den Inhalt von `/verzeichnis/` detailliert auf.

## Finden

### Was ist rekursive Auflistung?

- **Zusammenfassung**: Eine rekursive Auflistung durchläuft ein Verzeichnis und all seine Unterverzeichnisse, um Dateien und Verzeichnisse anzuzeigen. Dies ist nützlich, um einen vollständigen Überblick über den Inhalt tieferer Ebenen zu erhalten.

### `find` - Dateien finden

- **Zusammenfassung**: Durchsucht Verzeichnisse nach Dateien, die bestimmte Kriterien erfüllen.
- **Wichtige Argumente und Flags**:
  - `find [Pfad] [Optionen]` sucht im angegebenen Pfad.
  - `find / -name "dateiname.txt"` sucht im Wurzelverzeichnis nach `dateiname.txt`.
  - Beispiel: `find /home -type f -name "*.txt"` findet alle `.txt` Dateien im `/home` Verzeichnis.

### `locate` - Dateien finden

- **Zusammenfassung**: Nutzt eine vorbereitete Datenbank, um Dateien schnell zu finden.
- Um `locate` zu verwenden, muss die Datenbank zuerst aktualisiert
  - `sudo updatedb`
- **Wichtige Argumente und Flags**:
  - `locate [Dateiname]` findet Dateien, die den Namen enthalten.
  - Beispiel: `locate dateiname.txt` findet schnell alle Instanzen von `dateiname.txt`.


## Archive / Komprimierung

### `tar` - Tar-Archive erstellen und extrahieren

- **Zusammenfassung**: Erstellt und extrahiert `.tar` Archive, eine Sammlung von Dateien und Verzeichnissen.
- **Wichtige Argumente und Flags**:
  - `tar cf archive.tar dateien` erstellt ein Archiv.
  - `tar xf archive.tar` extrahiert ein Archiv.
  - `tar czf archive.tar.gz dateien` erstellt ein komprimiertes Archiv.
  - Beispiel: `tar czf backup.tar.gz /mein/verzeichnis` komprimiert `/mein/verzeichnis` in `backup.tar.gz`.

### `gzip`, `bzip2`, `xz` - Dateien komprimieren/dekomprimieren

- **Zusammenfassung**: Diese Befehle komprimieren oder dekomprimieren Dateien. `gzip` ist schneller, aber `xz` komprimiert stärker.
- **Wichtige Argumente und Flags**:
  - `gzip datei` komprimiert zur `datei.gz`.
  - `gzip -d datei.gz` dekomprimiert `datei.gz`.
  - `bzip2 datei` und `bzip2 -d datei.bz2` für `bzip2`.
  - `xz datei` und `xz -d datei.xz` für `xz`.
  - Beispiel: `gzip -k datei.txt` komprimiert `datei.txt` zu `datei.txt.gz` und behält die Originaldatei.

### `zip` / `unzip` - Zip-Archive erstellen und extrahieren

- **Zusammenfassung**: Erstellt `.zip` Archive und extrahiert sie.
- **Wichtige Argumente und Flags**:
  - `zip archiv.zip dateien` erstellt ein `.zip` Archiv.
  - `unzip archiv.zip` extrahiert die Inhalte.
  - Beispiel: `zip -r archiv.zip /mein/ordner` erstellt ein Archiv von `/mein/ordner`.

## Text

### `cat` - Dateiinhalte anzeigen

- **Zusammenfassung**: Gibt den Inhalt von Dateien aus.
- **Wichtige Argumente und Flags**:
  - `cat datei.txt` zeigt den Inhalt von `datei.txt`.
  - Beispiel: `cat datei1.txt datei2.txt` zeigt den Inhalt beider Dateien nacheinander.

### `head` / `tail` - Dateianfang / Dateiende anzeigen

- **Zusammenfassung**: `head` zeigt die ersten, `tail` die letzten Zeilen einer Datei.
- **Wichtige Argumente und Flags**:
  - `head -n 5 datei.txt` zeigt die ersten 5 Zeilen.
  - `tail -n 5 datei.txt` zeigt die letzten 5 Zeilen.
  - Beispiel: `tail -f /var/log/syslog` beobachtet laufende Änderungen.

### `less` - Datei mittels Pager anzeigen

- **Zusammenfassung**: Ermöglicht das durchblättern und Suchen in Dateiinhalten.
- **Wichtige Argumente und Flags**:
  - `less datei.txt` öffnet `datei.txt` zur Ansicht.
  - Beispiel: `less /var/log/syslog` zum Lesen des Systemprotokolls.

### `sort` - Zeilen sortieren

- **Zusammenfassung**: Sortiert die Zeilen einer Textdatei.
- **Wichtige Argumente und Flags**:
  - `sort datei.txt` sortiert die Inhalte von `datei.txt`.
  - Beispiel: `sort -r datei.txt` sortiert in umgekehrter Reihenfolge.

### `cut` - Zeilen ausschneiden

- **Zusammenfassung**: Entfernt Abschnitte aus jeder Zeile von Dateien.
- **Wichtige Argumente und Flags**:
  - `cut -d':' -f1 datei.txt` schneidet den ersten Abschnitt jeder Zeile aus.
  - Beispiel: `cut -d',' -f2 datei.csv` extrahiert die zweite Spalte aus einer CSV-Datei.

### `wc` - Zeilen, Wörter und Zeichen zählen

- **Zusammenfassung**: Zählt Zeilen, Wörter und Zeichen in Dateiinhalten.
- **Wichtige Argumente und Flags**:
  - `wc datei.txt` zeigt Zeilen, Wörter und Zeichen von `datei.txt`.
  - Beispiel: `wc -l datei.txt` zählt nur die Zeilen.

## Systemüberwachung

### `ps` - Prozesse anzeigen

- **Zusammenfassung**: Listet laufende Prozesse auf.
- **Wichtige Argumente und Flags**:
  - `ps aux` zeigt alle laufenden Prozesse mit detaillierten Informationen.
  - Beispiel: `ps -u [Benutzername]` listet alle Prozesse des spezifizierten Benutzers auf.

### `top` - Systemzustand überwachen

- **Zusammenfassung**: Zeigt Echtzeitinformationen über laufende Prozesse und Systemressourcen.
- **Wichtige Argumente und Flags**:
  - Einfach `top` eingeben, um die Systemauslastung zu sehen.
  - Beispiel: Drücke `Shift + >` in `top`, um durch die Spalten zu sortieren.

### `free` - Freien Speicher anzeigen

- **Zusammenfassung**: Zeigt Informationen über freien und verwendeten Speicher.
- **Wichtige Argumente und Flags**:
  - `free -h` zeigt Speicherinformationen in einer leicht lesbaren Form.
  - Beispiel: `free -m` zeigt die Speichernutzung in Megabytes.

### `syslog` / `dmesg` - Systemprotokolle anzeigen

- **Zusammenfassung**: `syslog` zeigt Systemprotokolle, während `dmesg` Kernel-Nachrichten anzeigt.
- **Wichtige Argumente und Flags**:
  - `dmesg | less` um die Kernel-Nachrichten seitenweise anzuzeigen.
  - Beispiel: `cat /var/log/syslog | grep ssh` findet Einträge zu SSH im Systemprotokoll.

## Networking

### `ifconfig` / `ip addr show` - Netzwerkinterfaces konfigurieren und anzeigen

- **Zusammenfassung**: Beide Befehle zeigen Konfigurationen von Netzwerkinterfaces.
- **Wichtige Argumente und Flags**:
  - `ifconfig` zeigt alle Interfaces und deren Einstellungen.
  - `ip addr show` liefert ähnliche Informationen im neuen `ip`-Befehlssatz.
  - Beispiel: `ifconfig eth0` zeigt Details zu `eth0`.

### `route` / `ip route show` - Routen anzeigen und ändern

- **Zusammenfassung**: Zeigt oder ändert die IP-Routing-Tabelle.
- **Wichtige Argumente und Flags**:
  - `route -n` zeigt die Routing-Tabelle.
  - `ip route show` zeigt die Routing-Tabelle mit dem `ip`-Befehl.
  - Beispiel: `sudo ip route add 192.168.1.0/24 via 192.168.1.1` fügt eine Route hinzu.

### `netstat` / `ss` - Netzwerkzustand anzeigen

- **Zusammenfassung**: Zeigt Netzwerkverbindungen, Routingtabellen, Interface-Statistiken, Masquerade-Verbindungen und Multicast-Mitgliedschaften.
- **Wichtige Argumente und Flags**:
  - `netstat -tuln` zeigt aktive Internetverbindungen.
  - `ss -tuln` bietet eine ähnliche Funktion wie `netstat`, ist aber schneller.
  - Beispiel: `ss -tp` zeigt TCP-Verbindungen mit Prozessnamen.

### `ping` - Verbindung testen

- **Zusammenfassung**: Überprüft die Erreichbarkeit eines Hosts im Netzwerk.
- **Wichtige Argumente und Flags**:
  - `ping [Adresse]` testet die Verbindung zu einer IP-Adresse oder Domain.
  - Beispiel: `ping -c 4 google.com` sendet vier Ping-Anfragen an Google.

### `host` - DNS-Abfragen durchführen

- **Zusammenfassung**: Ermöglicht die Durchführung von DNS-Abfragen, um Domainnamen in IP-Adressen umzuwandeln und umgekehrt.
- **Wichtige Argumente und Flags**:
  - `host [Domainname]` findet die IP-Adresse zu einem Domainnamen.
  - Beispiel: `host google.com` gibt die IP-Adresse von Google zurück.

## User / Group

### `id` - User-ID und Gruppen-ID anzeigen

- **Zusammenfassung**: Zeigt die Benutzer- und Gruppen-IDs des aktuellen oder eines spezifizierten Benutzers.
- **Wichtige Argumente und Flags**:
  - `id [Benutzername]` zeigt UID, GID und Gruppen des Benutzers.
  - Beispiel: `id root` zeigt die IDs für den Benutzer `root`.

### `useradd` / `groupadd` - Benutzer und Gruppen hinzufügen

- **Zusammenfassung**: Fügt neue Benutzer und Gruppen zum System hinzu.
- **Wichtige Argumente und Flags**:
  - `useradd [Optionen] [Benutzername]` fügt einen neuen Benutzer hinzu.
  - `groupadd [Gruppenname]` fügt eine neue Gruppe hinzu.
  - Beispiel: `sudo useradd -m -s /bin/bash neuerbenutzer` fügt `neuerbenutzer` mit Home-Verzeichnis und Bash als Standard-Shell hinzu.

## Berechtigungen

### `chmod` - Dateirechte ändern

- **Zusammenfassung**: Ändert die Zugriffsrechte für Dateien und Verzeichnisse.
- **Wichtige Argumente und Flags**:
  - `chmod [Modus] [Datei]` ändert die Berechtigungen.
  - Beispiel: `chmod 755 skript.sh` setzt Lese-, Schreib- und Ausführungsrechte für den Besitzer und Lese- und Ausführungsrechte für Gruppe und Andere.

### `chown` - Dateieigentümer ändern

- **Zusammenfassung**: Ändert den Besitzer und/oder die Gruppe für Dateien und Verzeichnisse.
- **Wichtige Argumente und Flags**:
  - `chown [Benutzer]:[Gruppe] [Datei]` ändert den Besitzer und die Gruppe.
  - Beispiel: `chown benutzer:gruppe datei.txt` ändert den Besitzer von `datei.txt` zu `benutzer` und die Gruppe zu `gruppe`.
