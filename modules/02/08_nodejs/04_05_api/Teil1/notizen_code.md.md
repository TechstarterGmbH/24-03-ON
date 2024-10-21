# Praxisaufgabe

Ziel: Eine Node.js-Anwendung, die SQLite verwendet, um eine Datenbank im Arbeitsspeicher zu erstellen, Tiere einzufügen und über einen einfachen HTTP-Server abzurufen. 

# Beispielhafte Tabelle für `tiere`

| id  | tierart | name  | krankheit | geburtstag | gewicht |
|-----|---------|-------|-----------|------------|---------|
| 1   | Hund    | Bello | Fieber    | 01.01.2020 | 5.5     |


---

# Tagesziel

| Schritt                | Beschreibung                                                                                               |
| ---------------------- | ---------------------------------------------------------------------------------------------------------- |
| SQLite Einbindung      | SQLite-Modul laden und Datenbank im Arbeitsspeicher erstellen                                              |
| Datenbank-Operationen  | Sicherstellen, dass alle Operationen nacheinander ausgeführt werden                                        |
| Erstellen der Tabelle  | Tabelle `tiere` mit den angegebenen Spalten erstellen                                                      |
| Einfügen von Daten     | Einfügen eines Datensatzes in die Tabelle                                                                  |
| Abfragen von Daten     | Abrufen und Anzeigen aller Datensätze aus der Tabelle                                                      |
| Server mit Express     | Express-Server einrichten und JSON-Daten parsen                                                            |
| Route für Startseite   | Route definieren, die eine HTML-Nachricht zurücksendet                                                     |
| Route für alle Tiere   | Route definieren, die alle Tiere aus der Datenbank zurückgibt                                              |
| Server starten/beenden | Server starten und beenden und sicherstellen, dass die Datenbankverbindung bei Beendigung geschlossen wird |

---
# Einrichten des Servers

1. **Erstelle ein neues Verzeichnis für dein Projekt:**


2. **Initialisiere ein neues npm-Projekt:**

   ```sh
   npm init -y
   ```

   Dieser Befehl erstellt eine `package.json` Datei mit den Standardwerten.

3. **Installiere Express:**

   ```sh
   npm install express
   ```

   Dieser Befehl installiert das Express-Framework und fügt es als Abhängigkeit in deiner `package.json` hinzu.

4. **Erstelle die Datei `app.js` und füge deinen Code ein:**

   Erstelle eine Datei namens `app.js` im Hauptverzeichnis deines Projekts und füge den folgenden Code ein:

   ```js
   const express = require('express');

   const app = express();

   app.use(express.json());

   const port = 3000;

   app.get('/', (req, res) => {
       res.send("<h1>Hello World</h1>");
   });

   // Server starten
   app.listen(port, () => {
       console.log(`Server läuft auf http://localhost:${port}`);
   });
   ```

5. **Starte den Server:**

   Im Terminal, im Verzeichnis deines Projekts, führe den folgenden Befehl aus:

   ```sh
   node server.js
   ```

   Du solltest die Ausgabe sehen: `Server läuft auf http://localhost:3000`.

6. **Testen des Servers:**

   Öffne deinen Webbrowser und gehe zu `http://localhost:3000`. Du solltest die Nachricht "Hello World" sehen.

----
# Datenbank einrichten

1. **SQLite Einbindung:**
   ```javascript
   const sqlite3 = require('sqlite3').verbose();
   const db = new sqlite3.Database(':memory:');
   ```
   - Hier wird das `sqlite3`-Modul geladen und eine SQLite-Datenbank im Arbeitsspeicher erstellt (`:memory:`). Das bedeutet, dass die Datenbank nur temporär existiert und bei Beendigung des Programms gelöscht wird.

2. **Datenbank-Operationen:**
   ```javascript
   db.serialize(() => {
       // Hier werden alle Datenbankoperationen innerhalb einer Transaktion ausgeführt
   });
   ```
   - `db.serialize()` sorgt dafür, dass alle Operationen nacheinander ausgeführt werden, um sicherzustellen, dass keine gleichzeitigen Zugriffe auftreten.

3. **Erstellen der Tabelle:**
   ```javascript
   createTableQuery = `CREATE TABLE IF NOT EXISTS tiere (
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       tierart TEXT NOT NULL,
       name TEXT NOT NULL,
       krankheit TEXT,
       geburtstag TEXT,
       gewicht REAL
   )`;
   db.run(createTableQuery);
   ```
   - Es wird eine Tabelle `tiere` erstellt, falls sie nicht existiert, mit den Spalten `id`, `tierart`, `name`, `krankheit`, `geburtstag` und `gewicht`.

4. **Einfügen von Daten:**
   ```javascript
   insertQuery = `INSERT INTO tiere (name, tierart, 
   krankheit, geburtstag, gewicht) 
   VALUES ('Bello', 'Hund', 'Fieber', 
   '01.01.2020', 5.5)`;
   db.run(insertQuery);
   ```
   - Ein Datensatz für ein Tier (in diesem Fall 'Bello') wird in die Tabelle `tiere` eingefügt.

5. **Abfragen von Daten:**
   ```javascript
   selectQuery = `SELECT * FROM tiere`;
   db.all(selectQuery, (err, rows) => {
       if (err) {
           console.error(err);
       } else {
           console.log(rows);
       }
   });
   ```
   - Alle Datensätze aus der Tabelle `tiere` werden abgerufen und entweder in der Konsole ausgegeben oder bei einem Fehler wird dieser ausgegeben.
```JavaScript
process.on('exit', function() { 
	db.close(); 
	}); 
```
- sicherstellen, dass die Datenbankverbindung bei Beendigung des Servers geschlossen wird

6. **Route für die Startseite ändern:**
   ```javascript
   app.get('/', (req, res) => {
       res.send("<h1>Bitte 'localhost:3000/tiere' verwenden</h1>")
   });
   ```
   - Eine einfache Route für die Startseite, die eine HTML-Nachricht zurücksendet.

7. **Route zum Abrufen aller Tiere:**
   ```javascript
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
   ```
   - Diese Route gibt alle Tiere aus der SQLite-Datenbank zurück, wenn sie über `localhost:3000/tiere` aufgerufen wird.


Das gesamte Beispiel kombiniert also die Verwendung von SQLite für die Datenbankoperationen und Express für das Routing und den HTTP-Server in Node.js.

--- 
# Gesamter Code

```JavaScript
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


// Server starten
app.listen(port, () => {
    console.log(`Server läuft auf http://localhost:${port}`);
});
```