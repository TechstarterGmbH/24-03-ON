# Einführung in Archivierung und Kompression

## Grundlagen

### Archivierung

- **Was ist Archivierung?**
  - Vergleichbar mit einem digitalen Lagerhaus, in dem Daten organisiert gespeichert werden.
  - Ermöglicht die langfristige Aufbewahrung von Informationen.

- **Warum brauchen wir Archivierung?**
  - Stellt sicher, dass wichtige Daten sicher, zugänglich und unversehrt bleiben.
  - Hilft, den Überblick über große Datenmengen zu behalten und diese effizient zu nutzen.

- **Methoden der Archivierung**
  - **Physische Datenträger:** CDs, DVDs oder externe Festplatten, die für die Offline-Archivierung verwendet werden.
  - **Cloud-Speicherung:** Online-Plattformen wie Google Drive oder Dropbox, die Flexibilität und Zugänglichkeit bieten.
  - **Archivierungssoftware:** Spezielle Programme, die Daten komprimieren und organisieren, um die Archivierung zu erleichtern.

### Kompression

- **Was ist Kompression?**
  - Die Reduzierung der Dateigröße, ähnlich dem Vakuumverpacken von Kleidung, um Platz zu sparen.
  - Erlaubt eine effizientere Speicherung und schnellere Übertragung von Daten.

- **Warum wird Kompression benötigt?**
  - Spart Speicherplatz auf Datenträgern und in der Cloud.
  - Beschleunigt die Datenübertragung über das Internet.

- **Arten der Kompression**
  - **Verlustfreie Kompression:** Wie das sorgfältige Falten von Kleidung in einem Koffer, um Platz zu sparen, ohne etwas wegzuwerfen. Beispiele sind ZIP oder PNG.
  - **Verlustbehaftete Kompression:** Entfernt Details aus den Daten, die für den Betrachter oder Hörer wahrscheinlich unwichtig sind, ähnlich dem Weglassen von Büchern, die man auf eine Reise mitnimmt, weil man sie wahrscheinlich nicht lesen wird. Beispiele sind JPEG für Bilder oder MP3 für Musik.

## Archivierungswerkzeuge

### TAR

- **Einführung in Tar**
  - Ein traditionelles Werkzeug für Unix-Systeme, um Dateien in einem Archiv zu bündeln, vergleichbar mit dem Packen eines Koffers für eine Reise.

- **Erstellen einer Tar-Archivdatei**
  - **Dateien auspacken:** Entpacken des Inhalts eines Tar-Archivs, ähnlich dem Auspacken eines Koffers nach der Ankunft.
  - **Dateien hinzufügen:** Hinzufügen weiterer Dateien zu einem existierenden Archiv, vergleichbar mit dem nachträglichen Hinzufügen eines vergessenen Gegenstands in den Koffer.

- **Übersicht der gebräuchlichen Tar-Optionen**
  - `tar -cvf`: Erstellt ein neues Archiv.
  - `tar -xvf`: Entpackt ein Archiv.

## Komprimierungswerkzeuge

### GZIP

- **Einführung in Gzip**
  - Ein beliebtes Werkzeug zur Dateikompression, das für seine Effizienz bekannt ist.

- **Erstellen einer Gzip-Datei**
  - **Entpacken von Gzip-Dateien:** Wiederherstellen der ursprünglichen Dateigröße und -form.
  - **Hinzufügen von Dateien zu Gzip:** Nicht direkt möglich, da Gzip nur einzelne Dateien komprimiert.

### BZIP2

- **Einführung in Bzip2**
  - Ein weiteres Komprimierungswerkzeug, das für höhere Kompressionsraten bekannt ist, aber möglicherweise mehr Zeit benötigt.

- **Erstellen einer Bzip2-Datei**
  - **Entpacken von Bzip2-Dateien:** Ähnlich wie bei Gzip, aber mit potenziell besseren Kompressionsraten.
  - **Hinzufügen von Dateien zu Bzip2:** Ebenfalls limitiert auf die Kompression einzelner Dateien.

### XZ

- **Einführung in XZ**
  - Bietet eine hohe Kompressionsrate und ist besonders nützlich für große Archive.

- **Erstellen einer XZ-Datei**
  - **Entpacken von XZ-Dateien:** Effizientes Wiederherstellen der Originaldateien.

### Zip-unzip Methoden

- **Was ist Zip und Unzip?**
  - **Zip:** Ein weit verbreitetes Format und Werkzeug zur Dateikompression und -archivierung, ähnlich dem Verpacken mehrerer Objekte in einen einzigen Behälter.
  - **Unzip:** Der Prozess des Entpackens oder Öffnens dieses Behälters, um an die einzelnen Objekte heranzukommen.

- **Was ist der Unterschied zu Tar?**
  - **Tar:** Bündelt Dateien in einem Archiv, ohne sie zu komprimieren. (Wird häufig mit Gzip kombiniert, um Dateien zu archivieren und zu komprimieren.)
  - **Zip:** Bündelt und komprimiert Dateien, um Speicherplatz zu sparen.

- **Erstellen und Entpacken von ZIP-Dateien**
  - **ZIP-Erstellung:** Bündelt und komprimiert mehrere Dateien und Ordner in einer einzigen ZIP-Datei.
  - **ZIP-Entpacken:** Extrahiert die ursprünglichen Dateien und Ordner aus einer ZIP-Datei.

- **Übersicht der gebräuchlichen Zip- und Unzip-Optionen**
  - **Zip-Optionen:**
    - `zip -r archivname.zip ordnername`: Erstellt ein ZIP-Archiv eines Ordners.
    - `zip -m archivname.zip datei1 datei2`: Fügt Dateien zu einem ZIP-Archiv hinzu und löscht die Originaldateien.
  - **Unzip-Optionen:**
    - `unzip archivname.zip`: Entpackt eine ZIP-Datei in das aktuelle Verzeichnis.
    - `unzip -l archivname.zip`: Listet den Inhalt einer ZIP-Datei auf, ohne sie zu entpacken.

## Archivierung und Kompression in der Praxis

- Da immer nur einzelne Dateien komprimiert werden können, ist es oft sinnvoll, diese zuerst in einem Archiv zu bündeln und dann zu komprimieren.
- Dieser Prozess spart Speicherplatz und erleichtert die Verwaltung von Dateien.
- Durch die Kombination von Archivierung und Kompression können große Datenmengen effizient und sicher gespeichert werden.
- Das `tar` Programm kann verwendet werden, um Dateien zu archivieren, während `gzip`, `bzip2` oder `xz` für die Kompression genutzt werden können.
- `tar` kann auch direkt mit den Kompressionswerkzeugen kombiniert werden, um den Prozess zu vereinfachen und zu beschleunigen.
