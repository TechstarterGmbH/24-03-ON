# Erste Einführung in React

## Einleitung

### Was ist React und warum ist es wichtig

#### Definition von React

React ist eine JavaScript-Bibliothek, die von Facebook entwickelt wurde, um Benutzeroberflächen für Web- und Mobilanwendungen zu bauen. Sie ermöglicht es Entwicklern, wiederverwendbare UI-Komponenten zu erstellen, die den Zustand der Anwendung verwalten können.

#### Anwendungsbereiche von React

React wird hauptsächlich verwendet, um Single-Page-Anwendungen (SPAs) zu entwickeln, bei denen alle Interaktionen mit der Benutzeroberfläche in einer einzigen HTML-Seite dynamisch aktualisiert werden, ohne die Seite neu laden zu müssen.

#### Vorteile der Verwendung von React

Einige der Hauptvorteile von React sind:

- **Deklarativer Ansatz**: Einfaches Erstellen interaktiver UIs.
- **Komponentenbasiert**: Baue gekapselte Komponenten, die ihren eigenen Zustand verwalten, und setze sie zusammen, um komplexe UIs zu erstellen.
- **Einmal lernen, überall schreiben**: React kann auf verschiedenen Plattformen verwendet werden (Web, Native Mobile).

## Grundlegende Konzepte

### Der Aufbau einer React Anwendung

#### React Komponenten

- Eine React-Komponente ist eine unabhängige, wiederverwendbare Code-Einheit, die für ein bestimmtes Stück der Benutzeroberfläche verantwortlich ist.
- Zum Beispiel kann eine `Button`-Komponente erstellt werden, die überall in der Anwendung wiederverwendet werden kann.
- Eine Komponente kann auch andere Komponenten enthalten, um eine hierarchische Struktur zu erstellen.

#### React Elemente und JSX

- JSX ist eine Syntaxerweiterung für JavaScript, die ähnlich wie HTML aussieht.
- Sie wird verwendet, um die Struktur der Benutzeroberfläche innerhalb von React-Komponenten zu beschreiben.
- JSX wird von Babel in JavaScript umgewandelt, bevor es vom Browser gerendert wird.

### Das React-Ökosystem

#### Node und npm

Node.js ist eine Laufzeitumgebung, die es ermöglicht, JavaScript auf dem Server zu verwenden. npm ist der Paketmanager für JavaScript, der das Teilen und Verwenden von Code erleichtert.

#### React-Entwicklungstools

Entwicklungstools wie Create React App, Babel und Webpack helfen bei der Einrichtung und Entwicklung von React-Anwendungen.

#### React-Bibliotheken und Frameworks

React ist umgeben von einer großen Ökosystembibliothek wie Redux für die Zustandsverwaltung und React Router für die Navigation.

## Arbeiten mit React

### Installation und Setup

#### Installieren von Node und npm

Zur Nutzung von Reacht brauchst du NodeJs und NPM, was wir aber bereits installiert haben.

#### Einrichten einer React-Umgebung

Jetzt können wir unsere React-Umgebung einrichten, indem wir Create React App verwenden:
Create React App ist ein Befehlszeilenprogramm, das eine neue React-Anwendung mit einer vorgefertigten Ordnerstruktur und Konfiguration erstellt.

```bash
npx create-react-app mein-app
cd mein-app
npm start
```

Dies wird eine neue React-Anwendung erstellen und starten.

### Erste Schritte mit React

#### Erstellen einer ersten React-Komponente

Öffne die Datei `App.js` in deinem Projektverzeichnis und modifiziere den Code, um deine erste Komponente zu erstellen:

```jsx
function App() {
  return <h1>Hallo, React!</h1>;
}
export default App;
```

#### Verwendung von JSX

- JSX ermöglicht es dir, HTML direkt in JavaScript zu schreiben.
- Es vereinfacht die Erstellung von React-Elementen und sorgt für eine saubere Trennung zwischen Logik und Darstellung.
- Jede Kompontente muss in JSX geschrieben werden.
- Im Endeffekt ist eine Komponente eine Funktion die JSX (HTML) zurückgibt (return).

### Zustand und Lebenszyklus

#### Verwenden von Zustandsdaten und -methoden

- In einer Komponente kannst du Zustände verwalten, um Daten zu speichern, die sich im Laufe der Zeit ändern können.
- Hierfür wird der `useState`-Hook verwendet, um den Zustand in funktionalen Komponenten zu verwalten.
- Der Zustand kann mit der `useState`-Funktion initialisiert und mit der `setCount`-Funktion aktualisiert werden.
- Hier ein Beispiel für einen einfachen Zähler:


```jsx
import React, { useState } from 'react';

function Counter() {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>Du hast {count} mal geklickt</p>
      <button onClick={() => setCount(count + 1)}>
        Klick mich
      </button>
    </div>
  );
}
export default Counter;
```

#### Verstehen des Komponentenlebenszyklus

- React-Komponenten durchlaufen verschiedene Lebenszyklusphasen, wie z.B. die Initialisierung, das Rendern und das Entfernen.

#### Lebenszyklus

- **Mounting**: Die Komponente wird in den DOM eingefügt.
- **Updating**: Die Komponente wird aktualisiert, z.B. durch Änderung des Zustands.
- **Unmounting**: Die Komponente wird aus dem DOM entfernt.

#### Lifecycle-Methoden

- `componentDidMount`: Wird nach dem ersten Rendern aufgerufen.
- `componentDidUpdate`: Wird nach einer Aktualisierung aufgerufen.
- `componentWillUnmount`: Wird vor dem Entfernen der Komponente aufgerufen.

## Vertiefen Sie Ihr Wissen

### Datenhandling in React

#### Datenfluss und Aufheben von Zuständen

React folgt einem unidirektionalen Datenfluss, was bedeutet, dass Zustände in der Regel von oben nach unten (von Eltern- zu Kindkomponenten) weitergegeben werden. Das Aufheben des Zustandes ist ein häufiges Muster, um den Zustand in der nächsten höheren Komponente zu verwalten.

#### Verwenden von Hooks

- Hooks sind eine neue Ergänzung in React 16.8, die es dir ermöglicht, Zustand und andere React-Funktionen in funktionalen Komponenten zu verwenden.
- Zum Beispiel der `useState`-Hook.
- Davor wurden Klassenkomponenten verwendet, um den Zustand zu verwalten.

#### Nebenwirkungen und Effekte

- Nebenwirkungen sind Aktionen, die außerhalb der normalen Datenflussrichtung stattfinden, wie z.B. Daten laden oder DOM-Manipulationen.
- Effekte sind Funktionen, die nach dem Rendern ausgeführt werden und Nebenwirkungen verursachen.
- Der `useEffect`-Hook wird verwendet, um Effekte in funktionalen Komponenten zu verwalten.

```jsx
import React, { useState, useEffect } from 'react';

function Example() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    document.title = `Du hast ${count} mal geklickt`;
  });

  return (
    <div>
      <p>Du hast {count} mal geklickt</p>
      <button onClick={() => setCount(count + 1)}>
        Klick mich
      </button>
    </div>
  );
}
```

### Fehlerbehandlung und Debugging

#### Umgang mit Fehlern

- Verwende Fehlergrenzen in React, um Fehler in Komponentenbaumen zu fangen und eine Fallback-UI anzuzeigen.
- Ansonsten kann natürlich auch `console.log` verwendet werden, um Fehler zu diagnostizieren.

#### Verwenden von Debugging-Tools

Nutze Chrome DevTools und die React Developer Tools, um deine Anwendung zu inspizieren und Fehler zu diagnostizieren.
