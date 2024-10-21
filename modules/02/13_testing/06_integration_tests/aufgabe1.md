Lass uns eine API erstellen, die Benutzer verwaltet. Diese API ermöglicht das Erstellen, Abrufen, Aktualisieren und Löschen von Benutzern (CRUD-Operationen).

### 1. Projekt einrichten

Wie zuvor, richte ein neues Node.js-Projekt ein und installiere die benötigten Pakete:

```bash
npm init -y
npm install express
npm install --save-dev jest supertest
```

### 2. Erstellen einer Benutzerverwaltung-API

Erstelle eine Datei `app.js` für die API:

```js
const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const app = express();
app.use(express.json());

// SQLite-Datenbank einrichten
const db = new sqlite3.Database(':memory:'); // Verwenden einer In-Memory-Datenbank; für Datei-basiert nutzen Sie './users.db'

// Tabelle erstellen, falls sie nicht existiert
db.serialize(() => {
    db.run(`CREATE TABLE IF NOT EXISTS users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE
    )`);
});

// Benutzer erstellen
app.post('/api/users', (req, res) => {
    const { name, email } = req.body;
    
    if (!name || !email) {
        return res.status(400).json({ message: 'Name and email are required' });
    }
    
    const insertQuery = 'INSERT INTO users (name, email) VALUES (?, ?)';
    
    db.run(insertQuery, [name, email], function (err) {
        if (err) {
            return res.status(500).json({ message: 'Error creating user'});
        }
        
        res.status(201).json({ message: 'User created successfully', name, email });
    });
});


// Alle Benutzer abrufen
app.get('/api/users', (req, res) => {
    db.all('SELECT * FROM users', (err, rows) => {
        if (err) {
            return res.status(500).json({ message: 'Error fetching users'});
        }
        res.status(200).json(rows);
    });
});

// Benutzer nach ID abrufen
app.get('/api/users/:id', (req, res) => {
    db.get('SELECT * FROM users WHERE id = ?', [req.params.id], (err, row) => {
        if (err) {
            return res.status(500).json({ message: 'Error fetching user' });
        }
        if (!row) {
            return res.status(404).json({ message: 'User not found' });
        }
        res.status(200).json(row);
    });
});

// Benutzer aktualisieren
app.put('/api/users/:id', (req, res) => {
    const { name, email } = req.body;
    db.run('UPDATE users SET name = ?, email = ? WHERE id = ?', [name, email, req.params.id], function (err) {
        if (err) {
            return res.status(500).json({ message: 'Error updating user' });
        }
        if (this.changes === 0) {
            return res.status(404).json({ message: 'User not found' });
        }
        res.status(200).json({ id: req.params.id, name, email });
    });
});

// Benutzer löschen
app.delete('/api/users/:id', (req, res) => {
    db.run('DELETE FROM users WHERE id = ?', [req.params.id], function (err) {
        if (err) {
            return res.status(500).json({ message: 'Error deleting user' });
        }
        if (this.changes === 0) {
            return res.status(404).json({ message: 'User not found' });
        }
        res.status(204).send();
    });
});


const server = app.listen(port, () => {
  console.log(`Server läuft auf http://localhost:${port}`);
});

module.exports = { app, server };

```

### 3. Einrichten von Jest für erweiterte Integrationstests

Erstelle eine Datei `user.test.js` im Ordner `tests`, um die Benutzer-API zu testen:

Hier sind einige Hinweise, wie du die Tests für deine User-API umsetzen kannst:

1. **Benutzer erstellen (`POST /api/users`)**:
   - Stelle sicher, dass du einen Testbenutzer mit einem Namen und einer E-Mail-Adresse sendest.
   - Überprüfe, ob die API den richtigen Statuscode für die erfolgreiche Erstellung zurückgibt.
   - Vergleiche die Antwortdaten, um sicherzustellen, dass die gesendeten Informationen korrekt gespeichert wurden.

2. **Alle Benutzer abrufen (`GET /api/users`)**:
   - Überprüfe, ob der Statuscode 200 ist.
   - Stelle sicher, dass die Antwort eine Liste von Benutzern enthält, die größer als 0 ist.

3. **Benutzer nach ID abrufen (`GET /api/users/:id`)**:
   - Teste das Abrufen eines Benutzers mit einer spezifischen ID.
   - Überprüfe den Statuscode und die korrekten Benutzerinformationen in der Antwort.

4. **Benutzer aktualisieren (`PUT /api/users/:id`)**:
   - Sende eine Anfrage, um die Benutzerdaten zu aktualisieren.
   - Stelle sicher, dass der Statuscode 200 ist und die aktualisierten Daten korrekt zurückgegeben werden.

5. **Benutzer löschen (`DELETE /api/users/:id`)**:
   - Teste das Löschen eines Benutzers mit einer spezifischen ID.
   - Überprüfe, ob der Statuscode 204 für eine erfolgreiche Löschung zurückgegeben wird.

6. **Nicht vorhandenen Benutzer abrufen (`GET /api/users/:id` mit nicht existierender ID)**:
   - Überprüfe, dass die API den Statuscode 404 zurückgibt, wenn versucht wird, einen nicht existierenden Benutzer abzurufen.

Für jede dieser Testfälle solltest du sicherstellen, dass die API auf die erwartete Weise reagiert, und die Antworten sorgfältig prüfen, um sicherzustellen, dass sie korrekt sind.

**Hinweis: Vergiss am Ende nicht deinen Server zu beenden**

### 4. Hinzufügen eines Testskripts in `package.json`

Fügen Sie das Testskript wie zuvor in Ihrer `package.json` hinzu:

```json
"scripts": {
    "test": "jest"
}
```

### 5. Testen der API

Führen Sie die Tests mit Jest aus:

```bash
npm test
```

### Erklärung

- Die API unterstützt CRUD-Operationen für Benutzer.
- Jeder Benutzer hat eine eindeutige ID, einen Namen und eine E-Mail-Adresse.
- **Jest** führt Integrationstests durch, um sicherzustellen, dass die API richtig funktioniert.
- Die Tests decken die verschiedenen Endpunkte ab und überprüfen die HTTP-Statuscodes sowie die API-Antworten.

Dies macht die API etwas spannender, da sie nun eine grundlegende Benutzerverwaltung ermöglicht, die eine typische Funktion in vielen Anwendungen ist.