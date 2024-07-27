import { useState, useEffect } from 'react';

import TodoItem from './TodoItem';
import TodoInput from './TodoInput';

function TodoList() {

  useEffect(() => {
    // Hier werden die Daten vom Server geladen

    setTimeout(() => {
      setTodos([
        { id: 0, text: 'Learn React', isComplete: false },
        { id: 1, text: 'Learn Vue', isComplete: false },
        { id: 2, text: 'Learn Angular', isComplete: false },
      ]);
      setLoading(false);
    }, 2000);
  });

  const [todos, setTodos] = useState([]);

  const [loading, setLoading] = useState(true);

  function todoToggleDone(index) {
    const newTodos = todos.slice();
    newTodos[index].isComplete = !newTodos[index].isComplete;
    setTodos(newTodos);
  }

  function addTodo(todo) {
    const newId = todos.length;
    todo.id = newId;
    setTodos([...todos, todo]);
  }

  function deleteTodo(index) {
    const newTodos = todos.slice();
    newTodos.splice(index, 1);
    setTodos(newTodos);
  }

  function updateTodo(updatedTodo) {
    const newTodos = todos.map(todo => {
      if (todo.id === updatedTodo.id) {
        return updatedTodo;
      }
      return todo;
    });
    setTodos(newTodos);
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
              onToggleDone={() => todoToggleDone(index)}
              onDelete={() => deleteTodo(index)}
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
