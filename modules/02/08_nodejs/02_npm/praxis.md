# NPM Praxis

## Nutzung von `faker.js` und `express` zur Erstellung einer einfachen API

### Ziel

Entwickle eine kleine Node.js-Anwendung, die zufällig generierte Benutzerdaten erstellt und über einen Webserver zugänglich macht.

### Schritte

1. **Projektsetup**:

   - Stelle sicher, dass Node.js und npm auf deinem System installiert sind.
   - Initialisiere ein neues Projekt mit `npm init`.

2. **Pakete installieren**:

   - Installiere `faker` zur Generierung zufälliger Benutzerdaten: `npm install @faker-js/faker`

3. **Benutzerdaten generieren**:

   - Erstelle eine Datei `generateUsers.js` und füge folgenden Code hinzu:
   - Dieses Skript erzeugt fünf zufällige Benutzer und gibt sie in der Konsole aus.

```javascript
const { faker } = require('@faker-js/faker');

function createRandomUsers() {
  let users = [];

  for (let i = 0; i < 5; i++) {
    const user = {
      userId: i,
      username: faker.internet.userName(),
      email: faker.internet.email(),
      password: faker.internet.password(),
      birthdate: faker.date.birthdate(),
      registeredAt: faker.date.past(),
    };

    users.push(user);
  }

  return users;

}

console.log(createRandomUsers());

exports.createRandomUsers = createRandomUsers;

```

4. Führe das Skript mit `node generateUsers.js` aus und überprüfe die generierten Benutzerdaten in der Konsole.

5. **Webserver einrichten**:

   - Installiere `express` für das Webserver-Framework: `npm install express`
   - Erstelle eine Datei `app.js` und füge folgenden Code hinzu:
   - Dieses Skript startet einen Express-Server, der auf Port 3000 hört und einen Endpunkt `/users` bereitstellt, um die generierten Benutzerdaten als JSON zurückzugeben.

 ```javascript
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

 ```

5. **Server starten und testen**:

   - Starte den Server mit `node app.js`.
   - Öffne einen Browser oder verwende ein Tool wie Postman, um auf `http://localhost:3000/users` zuzugreifen und die Benutzerdaten zu sehen.
