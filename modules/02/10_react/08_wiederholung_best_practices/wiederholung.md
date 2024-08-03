# Wiederholung von React

## Was ist State?

### Definition von State

State repräsentiert das Gedächtnis einer Komponente in React, das Daten speichert, die sich während der Interaktionen mit der Benutzeroberfläche ändern können.

### Wozu dient der State?

Der State ermöglicht es React-Komponenten, auf Benutzereingaben zu reagieren, Daten temporär zu speichern und das User Interface automatisch zu aktualisieren, wenn sich diese Daten ändern.

## Wie definiert man State?

### Erstellen von State in einer Komponente

- Der `useState` Hook ist die Standardmethode, um State in funktionalen Komponenten zu initialisieren.
- Der `useState` Hook gibt ein Array zurück, das den aktuellen State und eine Setter-Funktion enthält.
- Der Setter-Funktion wird verwendet, um den State zu aktualisieren und die Komponente neu zu rendern.
- Beispiel:

```javascript
import { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);

  return (
    <button onClick={() => setCount(count + 1)}>
      Klicks: {count}
    </button>
  );
}
```

### Änderung von State

Ändere den State niemals direkt. Benutze stattdessen die von `useState` bereitgestellte Setter-Funktion:

```javascript
setCount(count + 1);
```

### Unveränderlichkeit des States

Vermeide die direkte Mutation von State-Objekten, da dies zu unerwarteten Bugs führen kann. Nutze stattdessen Funktionen wie `setState`, die den State unveränderlich halten.
Deshalb ist es wichtig, den State immer zu kopieren und zu aktualisieren, anstatt ihn direkt zu ändern.
Vor allem bei komplexen Datenstrukturen wie Arrays oder Objekten ist es wichtig, die Unveränderlichkeit des States zu gewährleisten.
Ein Array oder ein Objekt sollte immer kopiert und dann aktualisiert werden, um unerwünschte Seiteneffekte zu vermeiden.

```javascript
const [todos, setTodos] = useState([]);

// Falsch: Direkte Mutation des State-Objekts
todos.push(newTodo); // FALSCH!!
setTodos([...todos, newTodo]); // RICHTIG
```

## Was sind Props?

### Definition von Props

Props in React dienen als Konfigurationswerte für Komponenten, ähnlich wie Parameter in einer Funktion.

```javascript
function Greeting(props) {
  return <h1>Hallo, {props.name}!</h1>;
}
```

### Wozu dienen Props?

Props ermöglichen es, Daten zwischen Komponenten zu übergeben und beeinflussen das Verhalten und Aussehen einer Komponente.
Es ist eine Möglichkeit, Daten von einer übergeordneten Komponente an eine untergeordnete Komponente weiterzugeben.

#### Funktionen als Props

Du kannst Funktionen als Props übergeben, um Custom-Events oder Datenänderungen von Kindkomponenten zu den Elternkomponenten zu handhaben.

```javascript
function Button(props) {
  return <button onClick={props.onClick}>{props.label}</button>;
}
```

```javascript
function App() {
  const handleClick = () => {
    console.log("Button wurde geklickt!");
  };

  return <Button onClick={handleClick} label="Klick mich!" />;
}
```

## Was ist JSX?

### Einführung in JSX

JSX ist eine Syntaxerweiterung für JavaScript, die es dir ermöglicht, HTML-ähnlichen Code in JavaScript zu schreiben.

### Syntax von JSX

JSX erlaubt dir, HTML-Tags in JavaScript einzubetten. Es macht den Code visuell einfacher zu verstehen und zu verwalten.

```jsx
const element = <h1>Hello, {user.name}!</h1>;
```

### Unterschiede zwischen JSX und HTML

JSX verwendet `className` anstelle von `class`, da `class` ein reserviertes Wort in JavaScript ist.

## Hooks in React

### Was sind Hooks?

- Hooks sind spezielle Funktionen, die dir erlauben, zusätzliche Funktionalitäten in funktionalen Komponenten zu nutzen.
- Früher konnten nur Klassenkomponenten State und Lifecycle-Methoden verwenden, aber Hooks ermöglichen es, diese auch in funktionalen Komponenten zu nutzen.

### useState Hook

`useState` ist ein Hook, der es ermöglicht, State in funktionalen Komponenten zu verwalten.

```javascript
const [name, setName] = useState("React");
```

### useEffect Hook

`useEffect` dient dazu, Nebenwirkungen in Komponenten zu verwalten, z.B. Daten laden oder auf externe Updates reagieren.

```javascript
useEffect(() => {
  document.title = `Hallo ${name}`;
}, [name]);
```

## Best Practices in React

### Konsistente Namensgebung

- Verwende durchgängig klare und beschreibende Namen für Komponenten und Variablen, um den Code für andere Entwickler verständlich zu machen.
- Die Komponente sollte immer mit einem Großbuchstaben beginnen, um sie von normalen HTML-Tags zu unterscheiden.
- Die Datei sollte immer den gleichen Namen wie die Komponente haben.

```javascript
// MyComponent.js
function MyComponent() {
  // ...
}
```

### Import / Export

- Eine Komponente muss immer exportiert werden, um sie in anderen Dateien verwenden zu können.
- Um sie in einer anderen Datei zu verwenden, muss sie importiert werden.

```javascript
// MyComponent.js
function MyComponent() {
  // ...
}
export default MyComponent;
```


```javascript
// App.js
import MyComponent from './MyComponent

function App() {
  return <MyComponent />;
}
```

### Kleine, fokussierte Komponenten

Strukturiere deine Anwendung in kleine, wiederverwendbare Komponenten, die jeweils nur eine Funktion erfüllen. Dies verbessert die Wartbarkeit und Testbarkeit.

### Verwendung von Hooks

Nutze Hooks, um Zustand und Lifecycle-Methoden in funktionalen Komponenten zu implementieren. Dies hält deinen Code sauber und modern.

### Prop-Drilling vermeiden

Vermeide zu tiefes "Prop-Drilling", also das Durchreichen von Props durch viele Ebenen von Komponenten. Nutze stattdessen Context oder State Management Libraries wie Redux.

### Typsicherheit

Verwende TypeScript oder PropTypes, um die Typsicherheit in deiner Anwendung zu erhöhen. Dies hilft, Fehler frühzeitig zu erkennen und zu vermeiden.

### Automatisierte Tests

Schreibe Tests für deine Komponenten, um sicherzustellen, dass sie wie erwartet funktionieren. Dies erhöht die Zuverlässigkeit und fördert eine nachhaltige Entwicklung.
