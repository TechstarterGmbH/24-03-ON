```JavaScript
const request = require('supertest');
const { app, server } = require('../app'); // Importiere sowohl app als auch server

describe('Integration tests for Todos API', () => {
  // Testen der CORS-Funktionalität
  it('should have CORS enabled', async () => {
    const response = await request(app).options('/todos'); // Verwende 'app' hier
    expect(response.headers['access-control-allow-origin']).toBe('*');
  });

  // Testen des Abrufens aller Todos
  it('should get all todos', async () => {
    const response = await request(app).get('/todos'); // Verwende 'app' hier
    expect(response.statusCode).toBe(200);
    expect(Array.isArray(response.body)).toBe(true);
  });

  // Testen des Abrufens eines spezifischen Todos
  it('should get a todo by id', async () => {
    const response = await request(app).get('/todos/1'); // Verwende 'app' hier
    expect(response.statusCode).toBe(200);
    expect(response.body).toHaveProperty('id', 1);
  });

  // Testen des Abrufens eines nicht existierenden Todos
  it('should return 404 for non-existent todo', async () => {
    const response = await request(app).get('/todos/999'); // Verwende 'app' hier
    expect(response.statusCode).toBe(404);
  });

  // Testen des Erstellens eines neuen Todos
  it('should create a new todo', async () => {
    const newTodo = { text: 'Neues Todo', isComplete: false };
    const response = await request(app).post('/todos').send(newTodo); // Verwende 'app' hier
    expect(response.statusCode).toBe(201);
    expect(response.text).toBe('Todo created');
  });

  // Testen des Aktualisierens eines Todos
  it('should update a todo', async () => {
    const updatedTodo = { text: 'Aktualisiertes Todo', isComplete: true };
    const response = await request(app).put('/todos/1').send(updatedTodo); // Verwende 'app' hier
    expect(response.statusCode).toBe(200);
    expect(response.text).toBe('Todo updated');
  });

  // Testen des Löschens eines Todos
  it('should delete a todo', async () => {
    const response = await request(app).delete('/todos/1'); // Verwende 'app' hier
    expect(response.statusCode).toBe(200);
    expect(response.text).toBe('Todo deleted');
  });

  // Testen des Löschens eines nicht existierenden Todos
  it('should return 404 when deleting a non-existent todo', async () => {
    const response = await request(app).delete('/todos/999'); // Verwende 'app' hier
    expect(response.statusCode).toBe(404);
  });

  // Testen des Fehlers, wenn das Textfeld leer ist
  it('should return 400 if todo text is empty on creation', async () => {
    const newTodo = { text: '', isComplete: false };
    const response = await request(app).post('/todos').send(newTodo); // Verwende 'app' hier
    expect(response.statusCode).toBe(400);
    expect(response.text).toBe('Todo text cannot be empty');
  });

  // Schließe den Server nach den Tests
  afterAll(async () => {
    if (server && typeof server.close === 'function') {
      server.close();
    }

    // Falls eine Datenbankverbindung besteht, diese schließen
    if (global.database && typeof global.database.close === 'function') {
      await global.database.close();
    }

    // Timers zurücksetzen
    jest.clearAllTimers();
  });
});
```