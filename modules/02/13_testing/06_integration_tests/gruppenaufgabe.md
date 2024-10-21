

### Aufgabe: Integrationstests für die Tiere-API erstellen

#### 1. **Setup: `jest` und `supertest` installieren**
Stelle sicher, dass die Testbibliotheken `jest` und `supertest` in deinem Projekt installiert sind. Führe diesen Befehl in deinem Backend-Verzeichnis aus:
```bash
npm install --save-dev jest supertest
```

#### 2. **Express-App exportieren**
Füge in der Hauptdatei deiner Express-Anwendung (`app.js` oder wie auch immer sie heißt) einen Export der Express-App hinzu. Dadurch kannst du die App in den Tests importieren:
```javascript
// Der bestehende Code

module.exports = app; // Express-App exportieren
```

#### 3. **Integrationstests erstellen**
Erstelle eine Testdatei, zum Beispiel `app.test.js`, im Testverzeichnis deines Projekts (`__tests__` oder `tests`). In dieser Datei wirst du die Integrationstests für die API-Routen schreiben.

1. **Abrufen aller Tiere**:
   - **Was getestet wird**: Ob die Route zum Abrufen aller Tiere (`/tiere`) korrekt funktioniert und alle Tiere aus der Datenbank zurückgibt.
   - **Erwartetes Ergebnis**: Der Server sollte erfolgreich antworten (Statuscode 200). Die Antwort sollte ein Array von Tieren enthalten, das mindestens einen Eintrag hat. Der erste Eintrag sollte eine Eigenschaft `tierart` mit dem Wert „Hund“ haben.

2. **Einfügen eines neuen Tiers**:
   - **Was getestet wird**: Ob die Route zum Einfügen eines neuen Tiers (`/tiere`) korrekt funktioniert und ein neues Tier erfolgreich erstellt wird.
   - **Erwartetes Ergebnis**: Der Server sollte eine erfolgreiche Antwort (Statuscode 201) zurückgeben, und der Text „Tier created“ sollte enthalten sein.

3. **Fehler bei fehlenden erforderlichen Feldern**:
   - **Was getestet wird**: Ob die Route zum Einfügen eines neuen Tiers korrekt auf fehlende erforderliche Felder reagiert.
   - **Erwartetes Ergebnis**: Der Server sollte einen Fehlerstatus (Statuscode 400) zurückgeben und eine entsprechende Fehlermeldung anzeigen, dass bestimmte erforderliche Felder fehlen.

4. **Löschen eines Tiers**:
   - **Was getestet wird**: Ob die Route zum Löschen eines Tiers (`/tiere/:id`) korrekt funktioniert und das angegebene Tier gelöscht wird.
   - **Erwartetes Ergebnis**: Der Server sollte erfolgreich antworten (Statuscode 200), und der Text „Tier deleted“ sollte enthalten sein.

- **GET `/tiere` Route**: Überprüft, ob alle Tiere korrekt abgerufen werden.
- **POST `/tiere` Route**: Testet das Einfügen eines neuen Tiers und stellt sicher, dass die Operation erfolgreich war.
- **Validation Error**: Überprüft, ob bei fehlenden obligatorischen Feldern ein Fehler zurückgegeben wird.
- **DELETE `/tiere/:id` Route**: Testet das Löschen eines Tiers und überprüft, ob die Rückmeldung korrekt ist.

#### 4. **Tests ausführen**
Nachdem du die Testdatei erstellt hast, kannst du die Tests mit folgendem Befehl ausführen:
```bash
npm test
```

Durch diese Tests stellst du sicher, dass alle wichtigen Routen der API ordnungsgemäß funktionieren und die erwarteten Ergebnisse liefern.