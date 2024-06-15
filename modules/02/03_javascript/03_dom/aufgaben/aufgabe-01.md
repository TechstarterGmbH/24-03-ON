# Aufgabe 1: DOM Manipulation

1. Erstelle eine neue HTML Datei und verknüpfe eine JavaScript Datei.
2. Erstelle ein `div` Element mit der ID `game-board` in deinem HTML Dokument.
3. Im JavaScript, erstelle eine Referenz zu dem `div` Element mit der ID `game-board`. (Tipp: `getElementById`)
4. Definiere ein leeres Array `gameDivs` `let gameDivs = [];`
5. Erstelle ein For-Loop, der sich 9 Mal wiederholt. In jeder Iteration der Schleife:
- Erstelle ein neues Div Element
- Verpasse dem Div Element die CSS-Klasse `game-board-cell`
- Nutze die Referezen zu dem `game-board`-Div und füge die neue Zelle als Kind Element dem HTML hinzu. (`gameBoard.appendChild(newEl)`)
- Füge das neue Element als Element zum `gameDivs` Array hinzu
6. Stelle sicher, dass die 9 Divs richtig erzeugt werden.
7. Füge eine CSS Datei mit folgendem Inhalt hinzu:
8. (Freiwillig) Erstelle einen weiteren For-Loop nach dem gleichen Prinzip
- Erstelle einen Event-Listener, jedes Mal wenn jemand auf eine der Zellen klickt
- Findest du heraus auf welche Zelle geklickt wurde?
- Kannst du ein X in die entsprechende Zelle schreiben?
- Kannst du abwechselnd ein X und ein O in die entsprechende Zelle schreiben?
- Wenn schon ein Buchstabe in der Zelle steht, soll nichts passieren.

```css
/* Grundlegendes Styling für das Spielbrett */
#game-board {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: repeat(3, 1fr);
    gap: 5px;
    max-width: 300px;
    margin: 20px auto;
    border: 3px solid black;
}

/* Styling für jede Zelle des Spielbretts */
.game-board-cell {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100px;
    background-color: #f4f4f4;
    border: 1px solid #ddd;
    cursor: pointer;
    font-size: 24px;
    font-weight: bold;
    color: #333;
}

```
