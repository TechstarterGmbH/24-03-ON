<img src="Techstarter.svg" style="height: 50px; width: auto">

### 1. Fehlerbehandlung bei `POST`-Anfragen

**Code:**

```javascript
app.post('/todos', (req, res) => {
    const { text, isComplete } = req.body;
    if (!text) {
        return res.status(400).send('Todo text cannot be empty');
    }
    const insertQuery = `INSERT INTO todos (text, isComplete) VALUES (?, ?)`;
    db.run(insertQuery, [text, isComplete], (err) => {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.status(201).send('New Entry created');
        }
    });
});
```

**Erklärung:**
- **Prüfung auf leeren `text`:** Vor dem Einfügen eines neuen Todos wird geprüft, ob der `text` leer ist. Falls ja, wird ein 400-Statuscode (`Bad Request`) zurückgegeben mit der Nachricht 'Todo text cannot be empty'.
- **Fehlerbehandlung:** Wenn ein Fehler beim Einfügen auftritt (`err`), wird ein 500-Statuscode (`Internal Server Error`) zurückgegeben, und der Fehler wird in der Konsole protokolliert.

### 2. Fehlerbehandlung bei `PUT`-Anfragen

**Code:**

```javascript
app.put('/todos/:id', (req, res) => {
    const { id } = req.params;
    const { text, isComplete } = req.body;
    if (!text) {
        return res.status(400).send('Todo text cannot be empty');
    }
    const updateQuery = `UPDATE todos SET text = ?, isComplete = ? WHERE id = ?`;
    db.run(updateQuery, [text, isComplete, id], (err) => {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else {
            res.status(200).send('OK');
        }
    });
});
```

**Erklärung:**
- **Prüfung auf leeren `text`:** Vor dem Aktualisieren eines Todos wird geprüft, ob der `text` leer ist. Falls ja, wird ein 400-Statuscode (`Bad Request`) zurückgegeben mit der Nachricht 'Todo text cannot be empty'.
- **Fehlerbehandlung:** Wenn ein Fehler beim Aktualisieren auftritt (`err`), wird ein 500-Statuscode (`Internal Server Error`) zurückgegeben, und der Fehler wird in der Konsole protokolliert.

### 3. Fehlerbehandlung bei `DELETE`-Anfragen

**Code:**

```javascript
app.delete('/todos/:id', (req, res) => {
    const { id } = req.params;
    const deleteQuery = `DELETE FROM todos WHERE id = ?`;
    
    db.run(deleteQuery, [id], function(err) {
        if (err) {
            console.error(err);
            res.status(500).send('Internal Server Error');
        } else if (this.changes > 0) {
            res.status(200).send('OK');
        } else {
            res.status(404).send('Todo not Found');
        }
    });
});
```

**Erklärung:**
- **Fehlerbehandlung:** Wenn ein Fehler beim Löschen auftritt (`err`), wird ein 500-Statuscode (`Internal Server Error`) zurückgegeben, und der Fehler wird in der Konsole protokolliert.
- **Überprüfung der betroffenen Zeilen:** wie bei add

### 4. Fehlerbehandlung in der React-Komponente für `POST` und `PUT`-Anfragen

**Code für `addTodo`:**

```javascript
function addTodo(todo) {
    if (!todo.text) {
        alert('Todo text cannot be empty');
        return;
    }

    fetch(API_URL, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(todo)
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Failed to create todo');
        }
        fetchTodos();
    })
    .catch(error => alert(error.message));
}
```

**Code für `updateTodo`:**

```javascript
function updateTodo(updatedTodo) {
    if (!updatedTodo.text) {
        alert('Todo text cannot be empty');
        return;
    }

    fetch(`${API_URL}/${updatedTodo.id}`, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(updatedTodo)
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Failed to update todo');
        }
        fetchTodos();
    })
    .catch(error => alert(error.message));
}
```

**Erklärung:**
- **Fehlerbehandlung in der UI:** Wenn der `text` des Todos leer ist, wird eine Warnmeldung angezeigt, und die Anfrage wird nicht gesendet. 
- **Fehlerbehandlung bei Netzwerkfehlern:** Bei einem fehlgeschlagenen `POST` oder `PUT`-Request wird ein Fehler ausgelöst, und der Fehlertext wird als Warnmeldung angezeigt.

