import { useState, useEffect } from 'react';

import TodoItem from './TodoItem';
import TodoInput from './TodoInput';

const API_HOST = 'http://127.0.0.1';
const API_PORT = '5000';
const API_URL = `${API_HOST}:${API_PORT}/todos`;

function TodoList() {
  const [todos, setTodos] = useState([]);

  const [loading, setLoading] = useState(true);

  function fetchTodos() {
    fetch(API_URL)
      .then(response => response.json())
      .then(data => {
        setTodos(data);
        setLoading(false);
      });
  }

  useEffect(() => {
    // Hier werden die Daten vom Server geladen
    fetchTodos();

  }, []);


  function addTodo(todo) {

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

      });
  }

  function deleteTodo(todo) {
    fetch(`${API_URL}/${todo.id}`, {
      method: 'DELETE'
    })
      .then(response => {
        if (!response.ok) {
          throw new Error('Failed to delete todo');
        }
        fetchTodos();
      });
  }

  function updateTodo(updatedTodo) {
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
      });
  }

  return (

    <>
      {loading ? <h1>Loading</h1> : (
      <div className="todo-list">

        <h2>Add new Todo</h2>

        <TodoInput addTodo={addTodo} />

        <h2>Todo List</h2>

        <div className="todos">
          {todos.map( (todo, index) => (
            <TodoItem
              key={index}
              todo={todo}
              onDelete={deleteTodo}
              onUpdate={updateTodo}
            />
          ))}
        </div>

      </div>
      )}
    </>
  )
}

export default TodoList;
