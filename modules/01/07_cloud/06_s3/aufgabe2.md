# Aufgabe: Hinzufügen von Lebenszyklusregeln für Speicherklassen in einem Amazon S3-Bucket

1. **Anmeldung bei der AWS Management Console:**
   - Öffne deinen Webbrowser und melde dich bei der AWS Management Console an.

2. **Navigation zur S3-Konsole:**
   - Klicke oben auf der Seite auf `Services` und wähle dann `S3` unter `Storage` aus.

3. **Auswahl des Buckets:**
   - Wähle den Bucket aus, für den du Lebenszyklusregeln erstellen möchtest, indem du auf den Namen des Buckets in der Liste der verfügbaren Buckets klickst.
   - Falls du keinen passenden Bucket hast, erstelle einen mit beispielsweise mehreren Verzeichnissen mit Bildern darin.

4. **Lebenszyklusregel hinzufügen:**
   - Klicke auf die Registerkarte `Verwaltung` oben im Bereich des ausgewählten Buckets.
   - Wähle die Option `Lebenszyklusregeln` aus.

5. **Erstellen einer neuen Regel:**
   - Klicke auf `Lebenszyklusregel erstellen`.
   - Gib der Regel einen aussagekräftigen Namen, z. B. `Speicherklassenänderung nach 30 Tagen`.
   - Gebe danach ein Präfix ein, für das die Lebenszyklusregel gelten soll, zB für das Präfix `katzenfotos/`gilt dann die Lebenszyklusregel für alle Schlüssel darin wie `katzenfotos/katze1.jpg` 
   - wähle eine Regelaktion unter `Lebenszyklusregelaktionen` aus, wie z.B `Aktuelle Objektversionen in andere Speicherklassen verschieben`
   - daraufhin öffnet sich ein weiteres Optionenmenü, in dem du die Bedingungen für die Regel definieren kannst
   - Definiere die Bedingungen für die Regel, z. B. die Anzahl der Tage seit der Objekterstellung.
   - Lege die Aktion unter `Übergänge der Speicherklasse auswählen` fest, die ausgeführt werden soll, z. B. das Ändern der Speicherklasse auf "Glacier".
   - Bestätige die Regel mit dem Klick auf `Übergang hinzufügen`

6. **Überprüfung der Regel:**
   - Überprüfe die erstellte Regel, um sicherzustellen, dass sie deinen Anforderungen entspricht.

7. **Speichern der Änderungen:**
   - Klicke auf `Speichern`, um die Lebenszyklusregeln für den Bucket zu aktualisieren.

Nachdem du diese Schritte ausgeführt hast, werden die Lebenszyklusregeln aktiviert und automatisch die Speicherklassen deiner Objekte im Bucket entsprechend den definierten Kriterien geändert. Diese Regeln helfen dir, die Kosten zu optimieren und die Verwaltung deiner Daten in Amazon S3 zu automatisieren.

Dokumentiere deinen Prozess mit Screenshots, sodass die Hausaufgabe nachvollziehbar wird. Dies könnte ein Screenshot sein, der die Regel unter `Verwaltung` zeigt.