const sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database(':memory:');

// Datenbank-Operationen
db.serialize(() => {

    createTableQuery = `CREATE TABLE IF NOT EXISTS tiere (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        tierart TEXT NOT NULL,
        name TEXT NOT NULL,
        krankheit TEXT,
        geburtstag TEXT,
        gewicht REAL

    )`;

    db.run(createTableQuery);

    insertQuery = `INSERT INTO tiere (name, tierart, krankheit, geburtstag, gewicht) VALUES ('Bello', 'Hund', 'Fieber', '01.01.2020', 5.5)`;

    db.run(insertQuery);

    selectQuery = `SELECT * FROM tiere`;

    db.all(selectQuery, (err, rows) => {
        if (err) {
            console.error(err);
        } else {
            console.log(rows);
        }
    });

});

process.on('exit', function() {
    db.close();
});

// Server

const express = require('express');

const app = express();

app.use(express.json());

const port = 3000;

// Alle Tiere abfragen
app.get('/tiere', (req, res) => {
    db.all(selectQuery, (err, rows) => {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.json(rows);
        }
    });
});

// Einzelnes Tier abfragen
app.get('/tiere/:id', (req, res) => {
    const { id } = req.params;

    const selectOneQuery = `SELECT * FROM tiere WHERE id = ?`;

    db.get(selectOneQuery, [id], (err, row) => {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else if (row) {
            res.json(row);
        } else {
            res.status(404).send('Not Found');
        }
    });
});

// Neues Tier hinzufügen
app.post('/tiere', (req, res) => {
    const { name, tierart, krankheit, geburtstag, gewicht } = req.body;

    if (!name || !tierart) {
        res.status(400).send('Bad Request');
        return;
    }

    const insertQuery = `INSERT INTO tiere (name, tierart, krankheit, geburtstag, gewicht) VALUES (?, ?, ?, ?, ?)`;

    db.run(insertQuery, [name, tierart, krankheit, geburtstag, gewicht], (err) => {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.status(201).send('Created');
        }
    });
});

// Tier löschen
app.delete('/tiere/:id', (req, res) => {
    const { id } = req.params;

    const deleteQuery = `DELETE FROM tiere WHERE id = ?`;

    db.run(deleteQuery, [id], (err) => {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.status(200).send('OK');
        }
    });
});

// Tier aktualisieren
app.put('/tiere/:id', (req, res) => {
    const { id } = req.params;
    const { name, tierart, krankheit, geburtstag, gewicht } = req.body;

    if (!name) {
        res.status(400).send('Bad Request');
        return;
    }

    const updateQuery = `UPDATE tiere SET name = ?, tierart = ?, krankheit = ?, geburtstag = ?, gewicht = ? WHERE id = ?`;

    db.run(updateQuery, [name, tierart, krankheit, geburtstag, gewicht, id], (err) => {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.status(200).send('OK');
        }
    });
});

// Server starten
app.listen(port, () => {
    console.log(`Server läuft auf http://localhost:${port}`);
});
