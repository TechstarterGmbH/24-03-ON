
### Integrationstests für die Todo-API

In diesem Beispiel konzentrieren wir uns auf Integrationstests für eine Todo-API. Diese API ermöglicht das Verwalten von Todo-Elementen, einschließlich Erstellen, Abrufen, Aktualisieren und Löschen von Todos. Wir verwenden `supertest`, um HTTP-Anfragen an unsere Express-Anwendung zu senden und `jest`, um die Tests auszuführen.

#### Beispielanwendung: Integrationstests für eine Todos-API

Da du sowohl ein Frontend als auch ein Backend hast, die jeweils ihre eigenen `package.json`-Dateien haben, solltest du `jest` und `supertest` im Backend-Verzeichnis installieren. 
### Installation im Backend-Verzeichnis

Gehe in das Verzeichnis, das deinen Backend-Code enthält (wo sich die `app.js`-Datei und die `package.json` des Backends befinden). Dies ist in diesem Fall der Ordner `api`. Führe dort den folgenden Befehl aus:

```bash
npm install --save-dev jest supertest
```

Dies installiert `jest` und `supertest` als Entwicklungsabhängigkeiten für dein Backend. Die Integrationstests, die wir zuvor geschrieben haben, sind speziell dafür gedacht, die Backend-API zu testen.

### Einrichtung der Tests für das Backend

Stelle sicher, dass deine `package.json` im Backend-Verzeichnis den folgenden Abschnitt unter `scripts` enthält:

```json
"scripts": {
  "test": "jest"
}
```

Mit diesem Befehl kannst du die Tests im Backend mit dem Befehl `npm test` ausführen.

### Integrationstests im Backend schreiben

Lege die Testdateien, wie z.B. `app.test.js`, im Backend-Verzeichnis an. Typischerweise kannst du einen Ordner namens `__tests__` oder `tests` erstellen und deine Testdateien dort ablegen:

```
/api
  ├── app.js
  ├── package.json
  ├── __tests__
      └── app.test.js
```

Hier sind die Erklärungen zu den hinzugefügten Code-Snippets:

### Erklärungen zu `server` und `afterAll` in den Tests

1. **Server starten und exportieren**

   ```javascript
   const server = app.listen(port, () => {
     console.log(`Server läuft auf http://localhost:${port}`);
   });

   module.exports = { app, server };
   ```

   - **Server starten**: Der Code `const server = app.listen(port, ...)` startet den Express-Server auf dem angegebenen Port. Dies ist notwendig, um die API während der Tests ansprechbar zu machen.
   - **Exportieren**: Durch `module.exports = { app, server };` wird sowohl die Express-Anwendung (`app`) als auch der Server (`server`) exportiert. Dies ermöglicht es den Tests, auf den laufenden Server zuzugreifen und HTTP-Anfragen zu senden.

2. **Server und Ressourcen nach den Tests schließen**

   ```javascript
   afterAll(async () => {
     if (server && typeof server.close === 'function') {
       server.close();
     }
   });
   ```

   - **`afterAll` Hook**: Der `afterAll` Hook von Jest wird nach Abschluss aller Tests in einer Testdatei ausgeführt. Er stellt sicher, dass nach den Tests keine Ressourcen mehr offen sind, um etwaige Speicherlecks oder unerwünschte Nebeneffekte zu vermeiden.
   - **Server schließen**: `if (server && typeof server.close === 'function') { server.close(); }` prüft, ob der Server existiert und eine `close`-Methode hat. Falls ja, wird der Server geschlossen. Dies ist wichtig, um sicherzustellen, dass der Server nach den Tests nicht weiterläuft und keine Portkonflikte oder unnötige Verbindungen bestehen bleiben.

Diese Code-Snippets sorgen dafür, dass deine Testumgebung nach den Tests sauber und stabil bleibt, indem alle Ressourcen ordnungsgemäß geschlossen werden.

1. **Setup**

   - **Importieren der erforderlichen Module**: Wir benötigen `supertest` zum Senden von HTTP-Anfragen und `jest` zum Ausführen und Überwachen der Tests.
   - **Importieren der Express-Anwendung**: Die Express-Anwendung (`expressApp`) wird in den Tests verwendet, um Anfragen zu simulieren.

   ```javascript
   const request = require('supertest');
   const { app, server } = require('../app'); // Importiere sowohl app als auch server
   ```

2. **Testfälle**

   Jeder Testfall prüft eine bestimmte Funktionalität der API:

   - **CORS (Cross-Origin Resource Sharing) überprüfen**

     Testet, ob die API CORS korrekt eingerichtet hat, indem eine OPTIONS-Anfrage an den Endpunkt `/todos` gesendet und die `Access-Control-Allow-Origin`-Header überprüft werden.

     ```javascript
     it('should have CORS enabled', async () => {
       const response = await request(app).options('/todos');
       expect(response.headers['access-control-allow-origin']).toBe('*');
     });
     ```

   - **Abrufen aller Todos**

     Testet, ob der Endpunkt `/todos` alle Todo-Elemente korrekt zurückgibt und ob die Antwort den Statuscode `200 OK` hat.

     ```javascript
     it('should get all todos', async () => {
       const response = await request(app).get('/todos');
       expect(response.statusCode).toBe(200);
       expect(Array.isArray(response.body)).toBe(true);
     });
     ```

   - **Abrufen eines spezifischen Todos**

     Testet, ob der Endpunkt `/todos/1` das Todo mit der ID `1` korrekt zurückgibt.

     ```javascript
     it('should get a todo by id', async () => {
       const response = await request(app).get('/todos/1');
       expect(response.statusCode).toBe(200);
       expect(response.body).toHaveProperty('id', 1);
     });
     ```

   - **Abrufen eines nicht existierenden Todos**

     Testet, ob der Endpunkt `/todos/999` den Statuscode `404 Not Found` zurückgibt, wenn das Todo nicht existiert.

     ```javascript
     it('should return 404 for non-existent todo', async () => {
       const response = await request(app).get('/todos/999');
       expect(response.statusCode).toBe(404);
     });
     ```

   - **Erstellen eines neuen Todos**

     Testet, ob ein neues Todo korrekt erstellt wird und ob der Endpunkt `/todos` den Statuscode `201 Created` zurückgibt.

     ```javascript
     it('should create a new todo', async () => {
       const newTodo = { text: 'Neues Todo', isComplete: false };
       const response = await request(app).post('/todos').send(newTodo);
       expect(response.statusCode).toBe(201);
       expect(response.text).toBe('Todo created');
     });
     ```

   - **Aktualisieren eines Todos**

     Testet, ob ein Todo korrekt aktualisiert wird und ob der Endpunkt `/todos/1` den Statuscode `200 OK` zurückgibt.

     ```javascript
     it('should update a todo', async () => {
       const updatedTodo = { text: 'Aktualisiertes Todo', isComplete: true };
       const response = await request(app).put('/todos/1').send(updatedTodo);
       expect(response.statusCode).toBe(200);
       expect(response.text).toBe('Todo updated');
     });
     ```

   - **Löschen eines Todos**

     Testet, ob ein Todo korrekt gelöscht wird und ob der Endpunkt `/todos/1` den Statuscode `200 OK` zurückgibt.

     ```javascript
     it('should delete a todo', async () => {
       const response = await request(app).delete('/todos/1');
       expect(response.statusCode).toBe(200);
       expect(response.text).toBe('Todo deleted');
     });
     ```

   - **Fehler bei leerem Textfeld**

     Testet, ob der Endpunkt `/todos` den Statuscode `400 Bad Request` zurückgibt, wenn das Textfeld des neuen Todos leer ist.

     ```javascript
     it('should return 400 if todo text is empty on creation', async () => {
       const newTodo = { text: '', isComplete: false };
       const response = await request(app).post('/todos').send(newTodo);
       expect(response.statusCode).toBe(400);
       expect(response.text).toBe('Todo text cannot be empty');
     });
     ```

3. **Tests ausführen**

Füge in der `package.json` den Testbefehl hinzu, falls noch nicht vorhanden:

```json
"scripts": {
  "test": "jest"
}
```

Führe die Tests aus:

```bash
npm test
```

Diese Tests stellen sicher, dass deine API wie erwartet funktioniert und robust gegenüber verschiedenen Szenarien ist. Integrationstests sind eine wertvolle Ergänzung zum Testprozess, da sie das Zusammenspiel der verschiedenen Teile deiner Anwendung überprüfen und potenzielle Integrationsfehler aufdecken.