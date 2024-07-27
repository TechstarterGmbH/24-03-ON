# Aufgabe 2

## Spielstand anzeigen

- Erweitere das Tic-Tac-Toe-Spiel, um den Spielstand anzuzeigen.
- Erstelle eine neue Datei `Status.js` im `src`-Ordner.
- Erstelle eine funktionale Komponente `Status` in der Datei. Diese Komponente wird den Spielstand anzeigen.
- Importiere die `Status`-Komponente in die `Board`-Komponente.
- Die `Status`-Komponente soll 2 Props erhalten: `scoreX` und `scoreO`.
- Die `Status`-Komponente soll den Spielstand wie folgt anzeigen: "X: 0 - O: 0" (wobei 0 die Anzahl der gewonnenen Spiele für X bzw. O ist).
- Füge der `Board`-Komponente zwei neue States hinzu: `scoreX` und `scoreO` (beide initial auf 0 setzen).
- Erhöhe den entsprechenden State, wenn ein Spieler gewinnt.

## Freiwillige Aufgaben

- Die `Status`-Komponente soll auch den Namen des Spielers anzeigen, der als nächstes an der Reihe ist.
- Jeder Spieler soll eine Farbe haben (z.B. X=Rot, O=Blau) und die Zellen sollen entsprechend eingefärbt werden.
- Füge eine Erkennung hinzu, wenn das Spiel unentschieden endet.
