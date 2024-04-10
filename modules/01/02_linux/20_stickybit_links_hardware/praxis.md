# Praktische Sitzung: Anwendung des Sticky Bits und Erstellen von Links

## Nun wollen wir das Gelernte in einer praktischen Sitzung anwenden.

### Schritte:
- Erstellen Sie ein Verzeichnis: mkdir praktische_sitzung

- Wenden Sie das Sticky Bit an: chmod +t praktische_sitzung

- Erstellen Sie Dateien im Verzeichnis: touch praktische_sitzung/datei1.txt

- Versuchen Sie, eine Datei zu löschen: rm praktische_sitzung/datei1.txt

- Erstellen Sie eine Datei: touch original_datei.txt

- Erstellen Sie eine Hartverknüpfung: ln original_datei.txt hart_verknuepfung.txt

- Erstellen Sie einen symbolischen Link: ln -s original_datei.txt symbolischer_link.txt

---

## Bonus

- Erstellen Sie einen neuen Benutzer: useradd benutzer
- Wechseln Sie zum neuen Benutzer: su benutzer
- Versuchen Sie, eine Datei zu löschen: rm praktische_sitzung/datei1.txt
- Versuchen Sie, die Datei zu löschen: rm hart_verknuepfung.txt
- Beschreiben Sie die Unterschiede zwischen den beiden Versuchen.
