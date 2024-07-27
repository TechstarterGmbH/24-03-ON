# Aufgabe 2

## Ziel der Aufgabe:

Entwickle eine App, in der Benutzer Text über ein Eingabefeld eingeben können, der dann als neues Element zur Liste hinzugefügt wird. Jedes Listenelement soll auch einen Button haben, um es wieder zu entfernen.

### Technische Anforderungen:
- Verwendung von React Hooks (`useState`)
- Grundlegendes Event Handling und Listen-Rendering

### Schritte zum Erstellen der App:

1. **Projekt Setup**
   - Stelle sicher, dass Node.js und npm installiert sind.
   - Erstelle ein neues React-Projekt:
     ```bash
     npx create-react-app list-manager-app
     cd list-manager-app
     npm start
     ```

2. **Erstellen der Komponentenstruktur**
   - Nutze die vorhandene `App` Komponente in `src/App.js` als Hauptkomponente.

3. **Implementierung der Liste**
   - Füge eine Zustandsvariable `items` hinzu, die die Liste der Elemente speichert.
   - Implementiere ein Eingabefeld und einen Button, um neue Elemente zur Liste hinzuzufügen.
   - Implementiere eine Funktion, um Elemente aus der Liste zu entfernen.

### Beispielcode für die `App` Komponente:

```jsx
import React, { useState } from 'react';

function App() {
  const [items, setItems] = useState([]);
  const [inputValue, setInputValue] = useState('');

  const addItem = () => {
    if (!inputValue) return; // Verhindert das Hinzufügen leerer Elemente
    setItems([...items, inputValue]);
    setInputValue(''); // Setzt das Eingabefeld zurück
  };

  const removeItem = (index) => {
    const newItems = items.filter((_, i) => i !== index);
    setItems(newItems);
  };

  return (
    <div>
      <input
        type="text"
        value={inputValue}
        onChange={(e) => setInputValue(e.target.value)}
        placeholder="Neues Element hinzufügen"
      />
      <button onClick={addItem}>Hinzufügen</button>
      <ul>
        {items.map((item, index) => (
          <li key={index}>
            {item}
            <button onClick={() => removeItem(index)}>Entfernen</button>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;
```

### Anleitung zur Verwendung des Codes:

- **Eingabefeld und Hinzufügen-Button**: Benutzer können Text eingeben und durch Klicken auf den "Hinzufügen"-Button zur Liste hinzufügen.
- **Liste darstellen**: Die `items` Zustandsvariable speichert alle hinzugefügten Elemente. Diese Elemente werden in einer ungeordneten Liste gerendert. Jedes Listenelement hat auch einen "Entfernen"-Button.
- **Entfernen von Elementen**: Der "Entfernen"-Button löscht das entsprechende Element aus der Liste.
