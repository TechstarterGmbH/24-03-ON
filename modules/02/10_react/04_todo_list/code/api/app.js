const express = require('express');
const sqlite3 = require('sqlite3');
const cors = require('cors');

const db = new sqlite3.Database(':memory:');


// Datenbank Erstellen

db.serialize(() => {

    createTableQuery = `CREATE TABLE IF NOT EXISTS todo (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        text TEXT NOT NULL,
        isComplete BOOLEAN NOT NULL
    )`;

    db.run(createTableQuery);

});

process.on('exit', function() {
    db.close();
});


// Server erstellen

const app = express();

// Wir nutzen den Port 5000
const port = 5000;

// Wir aktivieren den Json Body-Parser
app.use(express.json());

// Wir aktivieren CORS (Damit der Frontend-Server auf den Backend-Server zugreifen kann)
app.use(cors());

// Wir erstellen eine Hello World Route
app.get('/', (req, res) => {
  res.send('Hello World!');
});


// SQL Code um alle Todos abzufragen
const selectQuery = `SELECT * FROM todo`;

// Alle Todos abfragen
app.get('/todos', (req, res) => {
  db.all(selectQuery, (err, rows) => {
    if (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.json(rows);
    }
  });
});


// SQL Code um ein neues Todo zu erstellen

const insertQuery = `INSERT INTO todo (text, isComplete) VALUES (?, ?)`;

// Ein neues Todo erstellen
app.post('/todos', (req, res) => {
  const { text, isComplete } = req.body;

  db.run(insertQuery, [text, isComplete], function(err) {
    if (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.status(201).send('Todo created');
    }
  });
});

// SQL Code um ein Todo zu löschen
const deleteQuery = `DELETE FROM todo WHERE id = ?`;

// Ein Todo löschen
app.delete('/todos/:id', (req, res) => {
  const { id } = req.params;

  db.run(deleteQuery, [id], function(err) {
    if (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.status(200).send('Todo deleted');
    }
  });
});

// SQL Code um ein Todo zu aktualisieren
const updateQuery = `UPDATE todo SET text = ?, isComplete = ? WHERE id = ?`;

// Ein Todo aktualisieren
app.put('/todos/:id', (req, res) => {
  const { id } = req.params;
  const { text, isComplete } = req.body;

  db.run(updateQuery, [text, isComplete, id], function(err) {
    if (err) {
      console.error(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.status(200).send('Todo updated');
    }
  });
});


app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
