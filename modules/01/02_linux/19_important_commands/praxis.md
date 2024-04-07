# Praxis

## Aufgaben

- Finde alle Dateien in deinem /etc-Verzeichnis (Rekursiv)

```bash
find /etc -type f
```

- Speichere die Liste der Dateien in einer Textdatei

```bash
find /etc -type f > etc_files.txt
```

- Erstelle ein Archiv der gerade erstellten Datei

```bash
tar -czvf etc_files.tar.gz etc_files.txt
```

- Entpacke das Archiv in ein neues Verzeichnis

```bash
mkdir etc_backup
tar -xzvf etc_files.tar.gz -C etc_backup
```

- Zeige den Inhalt der Datei /etc/passwd
  - Zeige nur die ersten 10 Zeilen
  - Zeige nur die letzten 10 Zeilen
  - Öffne die Datei mit einem Pager

```bash
cat /etc/passwd
head /etc/passwd
tail /etc/passwd
less /etc/passwd
```

- Sortiere die `etc_files.txt` Datei alphabetisch

```bash
sort etc_files.txt
```

- Zähle die Anzahl der Zeilen

```bash
wc -l etc_files.txt
```

- Zeige dir die ersten 10 Prozesse auf deinem System an

```bash
ps aux | head
```

- Zeige dir die Prozesse an, die von deinem Benutzer gestartet wurden

```bash
ps aux | grep $USER
```

- Zeige dir alle Nutzer auf dem System an

```bash
cat /etc/passwd | cut --delimiter=":" --fields=1
```

- Zeige dir deine User-ID und Gruppen-ID an

```bash
id
```
