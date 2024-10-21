```JavaScript
const request = require('supertest');
const app = require('../app');

describe('User API Tests with SQLite', () => {
    it('should create a new user', async () => {
        const res = await request(app)
            .post('/api/users')
            .send({ name: 'Alice', email: 'alice@example.com' });
        expect(res.statusCode).toEqual(201);
        expect(res.body.name).toEqual('Alice');
        expect(res.body.email).toEqual('alice@example.com');
    });

    it('should fetch all users', async () => {
        const res = await request(app).get('/api/users');
        expect(res.statusCode).toEqual(200);
        expect(res.body.length).toBeGreaterThan(0);
    });

    it('should fetch a user by ID', async () => {
        const res = await request(app).get('/api/users/1');
        expect(res.statusCode).toEqual(200);
        expect(res.body.name).toEqual('Alice');
    });

    it('should update a user', async () => {
        const res = await request(app)
            .put('/api/users/1')
            .send({ name: 'Alice Updated', email: 'alice_updated@example.com' });
        expect(res.statusCode).toEqual(200);
        expect(res.body.name).toEqual('Alice Updated');
    });

    it('should delete a user', async () => {
        const res = await request(app).delete('/api/users/1');
        expect(res.statusCode).toEqual(204);
    });

    it('should return 404 for a non-existent user', async () => {
        const res = await request(app).get('/api/users/999');
        expect(res.statusCode).toEqual(404);
    });

	// Schließe den Server nach den Tests

  afterAll(async () => {
    if (server && typeof server.close === 'function') {
      server.close();
    }

  });
});
```