import { useState } from 'react';
import Cell from './Cell';
import './Board.css';

function Board() {

  const [cells, setCells] = useState(Array(9).fill(null));

  const [xIsNext, setXIsNext] = useState(true);

  const [winner, setWinner] = useState(null);

  function handleClick(index) {
    if (cells[index]) {
      return;
    }

    const newCells = cells.slice();

    newCells[index] = xIsNext ? 'X' : 'O';
    setCells(newCells);
    setXIsNext(!xIsNext);

    if (calculateWinner(newCells)) {
      setWinner(newCells[index]);
      return;
    }

  }

  function calculateWinner(cells) {
    const lines = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (let i = 0; i < lines.length; i++) {
      const [a, b, c] = lines[i];

      if (cells[a] && cells[a] === cells[b] && cells[a] === cells[c]) {
        return cells[a];
      }
    }

    return null;
  }

  function restartGame() {
    setCells(Array(9).fill(null));
    setWinner(null);
  }

  return (

    <>
      {winner ? <h2>Winner is: {winner}</h2> : ""}
      <div className="board">
        {/*Für jede Zelle im Array cells wird ein Cell-Element gerendert.*/}
        {/*Der Wert der Zelle wird als value-Prop übergeben.*/}
        { !winner ? cells.map((value, index) =>
          (
            <Cell
              key={index}
              onClick={() => handleClick(index)}
              value={value}
            />
          )
        ) : <a className="restart" onClick={restartGame}>Restart</a>}
      </div>
    </>
  )
}

export default Board;
