const express = require('express');
const { v4: uuidv4 } = require('uuid');

const app = express();

app.use(express.json());

const port = 3000;
const apiKey = process.env.API_KEY || "abcde";

const books = [];

function auth(req, res) {
  const { api_key } = req.query;
  console.log(api_key);

  if (api_key !== apiKey) {
    res.status(401).send('Unauthorized');
    return false;
  }
  return true;
}

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/books', (req, res) => {
  if (!auth(req, res)) {
    return;
  }
  res.json(books);
});

app.post('/books', (req, res) => {
  if (!auth(req, res)) {
    return;
  }
  const { title, author } = req.body;
  const book = { id: uuidv4(), title, author };
  books.push(book);
  res.status(201).json(book);
});

app.get('/books/:id', (req, res) => {
  if (!auth(req, res)) {
    return;
  }
  const { id } = req.params;
  const book = books.find((book) => book.id === id);
  if (!book) {
    res.status(404).send('Book not found');
    return;
  }
  res.json(book);
});

app.put('/books/:id', (req, res) => {
  if (!auth(req, res)) {
    return;
  }
  const { id } = req.params;
  const { title, author } = req.body;
  const bookIndex = books.findIndex((book) => book.id === id);
  if (bookIndex === -1) {
    res.status(404).send('Book not found');
    return;
  }
  books[bookIndex] = { id, title, author };
  res.json(books[bookIndex]);

});

app.delete('/books/:id', (req, res) => {
  if (!auth(req, res)) {
    return;
  }
  const { id } = req.params;
  const bookIndex = books.findIndex((book) => book.id === id);
  if (bookIndex === -1) {
    res.status(404).send('Book not found');
    return;
  }
  books.splice(bookIndex, 1);
  res.status(204).send();
});


app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
