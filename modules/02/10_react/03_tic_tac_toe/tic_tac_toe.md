# Tic Tac Toe

## Plan

- Folgende Komponenten werden erstellt:
  - Spielbrett (Board)
  - Zelle (Cell)
- Der Zustand des Spiels wird in der Board-Komponente gespeichert.
- Die Zelle-Komponente wird als Button implementiert.
- Der Spieler kann auf eine Zelle klicken, um sein Symbol zu setzen.

## Schritte

### 1. Vorbereitungen

- Erstelle einen neuen Ordner und öffne ihn in VS Code.
- Erstelle ein neues React-Projekt mit `npx create-react-app .`.
- Lösche folgende Dateien (im `src`-Ordner):
  - `index.css`
  - `App.css`
  - `App.test.js`
  - `logo.svg`
  - `serviceWorker.js`
  - `setupTests.js`

### 2. App-Komponente

- Öffne die `App.js`-Datei und füge folgenden Code hinzu:

```jsx
import Board from './Board';

function App() {
  return (
    <>
      <h1>Tic Tac Toe</h1>
      <Board />
    </>
  );
}

export default App;
```

- Dieser Code importiert die `Board`-Komponente, die wir gleich erstellen werden, und rendert sie zusammen mit einem Titel "Tic Tac Toe".
- Öffne die `index.js`-Datei und füge folgenden Code hinzu (ersetze den vorhandenen Code):

```jsx
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
```

### 3. Board-Komponente

- Erstelle eine neue Datei `Board.js` im `src`-Ordner.
- Erstelle eine funktionale Komponente `Board` in der Datei. Diese Komponente wird das Hauptspielbrett darstellen.
- Füge folgenden Code zu `Board.js` hinzu:

```jsx
import { useState } from 'react';
import Cell from './Cell';
import './Board.css';

function Board() {
  const [cells, setCells] = useState(Array(9).fill(null));
  const [xIsNext, setXIsNext] = useState(true);
  const [winner, setWinner] = useState(null);
```

- Hier haben wir den Anfang der `Board`-Komponente. Wir verwenden `useState`, um den Zustand des Spielfelds, den aktuellen Spieler und den Gewinner zu verwalten.
- Die `cells`-State speichert den Zustand jeder Zelle des Spielfelds.
- Der `xIsNext`-State speichert, welcher Spieler als nächstes an der Reihe ist.
- Der `winner`-State speichert den Gewinner des Spiels, falls es einen gibt.

### 4. Zellenklick-Handler

- Füge die Funktion `handleClick` zur `Board`-Komponente hinzu:

```jsx
  function handleClick(index) {
    if (cells[index] || winner) {
      return;
    }

    const newCells = cells.slice();
    newCells[index] = xIsNext ? 'X' : 'O';
    setCells(newCells);
    setXIsNext(!xIsNext);

    const calculatedWinner = calculateWinner(newCells);
    if (calculatedWinner) {
      setWinner(calculatedWinner);
    }
  }
```

- Diese Funktion wird aufgerufen, wenn auf eine Zelle geklickt wird.
- Wenn die Zelle bereits gefüllt ist oder das Spiel gewonnen wurde, passiert nichts.
- Andernfalls wird die Zelle mit dem Symbol des aktuellen Spielers gefüllt und der Zustand aktualisiert.
- Wenn es einen Gewinner gibt, wird der Gewinner-Zustand gesetzt.

### 5. Gewinnerberechnung

- Füge die Funktion `calculateWinner` zur `Board`-Komponente hinzu:

```jsx
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
```

- Diese Funktion überprüft alle möglichen Gewinnkombinationen und gibt den Gewinner zurück, falls eine Kombination übereinstimmt.

### 6. Neustart des Spiels

- Füge die Funktion `restartGame` zur `Board`-Komponente hinzu:

```jsx
  function restartGame() {
    setCells(Array(9).fill(null));
    setWinner(null);
  }
```

- Diese Funktion setzt den Zustand des Spiels zurück, sodass ein neues Spiel gestartet werden kann.

### 7. Rendern des Spielbretts

- Füge den Render-Teil zur `Board`-Komponente hinzu:

```jsx
  return (
    <>
      {winner ? <h2>Winner is: {winner}</h2> : ""}
      <div className="board">
        {cells.map((value, index) => (
          <Cell
            key={index}
            onClick={() => handleClick(index)}
            value={value}
          />
        ))}
      </div>
      {winner && <button className="restart" onClick={restartGame}>Restart</button>}
    </>
  );
}
```

- Hier wird das Spielbrett gerendert. Jede Zelle wird als `Cell`-Komponente gerendert, die wir als nächstes erstellen.
- Wenn es einen Gewinner gibt, wird eine Nachricht angezeigt und ein Neustart-Button angezeigt.
- Wir verwenden die `Cell`-Komponente, um die Zellen zu rendern.
- Wir nutzen `cells.map` um eine Schleife über alle Zellen zu machen und die `Cell`-Komponente für jede Zelle zu rendern.
- Der `onClick`-Handler wird an die `Cell`-Komponente übergeben, um den Klick auf die Zelle zu behandeln.
- Der `value`-Prop wird an die `Cell`-Komponente übergeben, um den Wert der Zelle anzuzeigen.
- Der Neustart-Button wird nur angezeigt, wenn es einen Gewinner gibt.

### 8. Cell-Komponente

- Erstelle eine neue Datei `Cell.js` im `src`-Ordner.
- Erstelle eine funktionale Komponente `Cell` in der Datei.
- Füge folgenden Code zu `Cell.js` hinzu:

```jsx
function Cell({ value, onClick }) {
  return (
    <button onClick={onClick}>{value}</button>
  );
}

export default Cell;
```

- Diese Komponente rendert eine einzelne Zelle als Button. Der Wert der Zelle wird als `value`-Prop übergeben und die Klickfunktion als `onClick`-Prop.

### 9. CSS für das Spielbrett

- Erstelle eine neue Datei `Board.css` im `src`-Ordner.
- Füge folgenden Code zu `Board.css` hinzu:

```css
.board {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 10px;
  width: 200px;
  margin: 0 auto;
}

.board button {
  background: #fff;
  border: 1px solid #999;
  font-size: 24px;
  cursor: pointer;
  height: 60px;
  width: 60px;
}

.restart {
  display: block;
  padding: 10px 20px;
  background: #333;
  color: #fff;
  border: 1px solid #999;
  font-size: 16px;
  cursor: pointer;
}
```

- Dieses CSS sorgt dafür, dass das Spielbrett als ein 3x3-Raster angezeigt wird und dass die Zellen sowie der Neustart-Button stilisiert werden.

### 10. Finalisieren

- Stelle sicher, dass `Board.js` die CSS-Datei importiert:

```jsx
import './Board.css';
```

- Das fertige Projekt sollte nun im Browser ein funktionierendes Tic Tac Toe-Spiel anzeigen.
