import { useState } from 'react';

import TodoItem from './TodoItem';
import TodoInput from './TodoInput';

const defaultTodos = [
  { id: 1, text: 'Einkaufen gehen', isComplete: false },
  { id: 2, text: 'Waschen', isComplete: false },
  { id: 3, text: 'React lernen', isComplete: false },
];

function TodoList() {

  const [todos, setTodos] = useState(defaultTodos);

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

  return (
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
          />
        ))}
      </div>

    </div>
  )
}

export default TodoList;
