import "./TodoItem.css";

function TodoItem({ todo, onToggleDone }) {
  const todoStrikeClass = todo.isComplete ? 'todo-strikethrough' : '';
  return (
    <div className="todo">
      <input type="checkbox" checked={todo.isComplete} onChange={onToggleDone} />
      <span className={todoStrikeClass}>{todo.text}</span>
    </div>
  )
}

export default TodoItem;
