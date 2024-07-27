function Cell({ value, onClick }) {
  return (
    <button onClick={onClick}>{value}</button>
  );
}

export default Cell;
