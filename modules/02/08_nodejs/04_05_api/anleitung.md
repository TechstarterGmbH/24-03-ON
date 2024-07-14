# API mit NodeJS Teil 2

## 1. Alle Tiere abfragen

- Erstelle einen neuen GET-Endpunkt `/tiere` in deiner Express-Anwendung.
- Dieser Endpunkt soll alle Tiere aus der Datenbank zurückgeben.

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

## 2. Ein Tier abfragen

- Erstelle einen neuen GET-Endpunkt `/tiere/:id` in deiner Express-Anwendung.
- Das `:id` bedeutet, dass hier ein Parameter übergeben wird.
- Zum Beispiel für `/tiere/1` soll das Tier mit der ID 1 zurückgegeben werden.

```javascript
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
```

## 3. Ein neues Tier hinzufügen

- Erstelle einen neuen POST-Endpunkt `/tiere` in deiner Express-Anwendung.
- Dieser Endpunkt soll ein neues Tier in die Datenbank einfügen.
- Die Daten für das neue Tier werden im Body der Anfrage erwartet.

```javascript
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
```

## 4. Ein Tier aktualisieren

- Erstelle einen neuen PUT-Endpunkt `/tiere/:id` in deiner Express-Anwendung.
- Dieser Endpunkt soll ein vorhandenes Tier in der Datenbank aktualisieren.
- Die Daten für die Aktualisierung werden im Body der Anfrage erwartet.

```javascript
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
```

## 5. Ein Tier löschen

- Erstelle einen neuen DELETE-Endpunkt `/tiere/:id` in deiner Express-Anwendung.
- Dieser Endpunkt soll ein vorhandenes Tier aus der Datenbank löschen.

```javascript
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
```
