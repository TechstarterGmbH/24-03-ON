const express = require('express');

const app = express();
const port = 3000;

// Importiere die Funktion aus generateUsers.js
const generateUsers = require('./generateUsers');

const users = generateUsers.createRandomUsers();

// Endpunkt zur Abfrage der Benutzer
app.get('/users', (req, res) => {
  res.json(users);
});

app.listen(port, () => {
  console.log(`Server läuft auf http://localhost:${port}`);
});
