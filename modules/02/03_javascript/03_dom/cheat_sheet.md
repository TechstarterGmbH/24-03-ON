# JavaScript DOM Manipulation Cheat Sheet

## Grundlegendes zum DOM

- **Was ist das DOM?**

  - DOM (Document Object Model) ist eine Programmierschnittstelle für HTML- und XML-Dokumente.
  - Es repräsentiert das Dokument als Baumstruktur von Knoten/Elementen.

- **Warum DOM verwenden?**

  - Ermöglicht dynamische Änderungen an der Struktur, dem Stil und Inhalt der Webseite.
  - Reagiert auf Benutzerinteraktionen ohne eine Seite neu laden zu müssen.

## DOM Elemente selektieren

- **Elemente durch ID selektieren:**

  ```javascript
  const element = document.getElementById('elementId');
  ```

- **Elemente durch Klasse selektieren:**

  ```javascript
  const elements = document.getElementsByClassName('className');
  ```

- **Elemente durch Tag selektieren:**

  ```javascript
  const elements = document.getElementsByTagName('tagName');
  ```

## Elemente manipulieren

- **Textinhalt ändern:**

  ```javascript
  element.textContent = 'Neuer Text';
  ```

- **HTML-Inhalt ändern:**

  ```javascript
  element.innerHTML = '<span>Neuer Inhalt</span>';
  ```

- **Stil ändern:**

  ```javascript
  element.style.color = 'red';
  ```

- **Attribute ändern:**

  ```javascript
  element.setAttribute('href', 'https://www.example.com');
  ```

- **Klasse hinzufügen/entfernen:**

  ```javascript
  element.classList.add('className');
  element.classList.remove('className');
  ```

- **Elemente verstecken/zeigen:**

  ```javascript
  element.style.display = 'none'; // Verstecken
  element.style.display = 'block'; // Zeigen
  ```

## Ereignisse handhaben

- **Ereignis-Listener hinzufügen:**

  ```javascript
  element.addEventListener('click', function() {
    console.log('Element geklickt!');
  });
  ```

- **Ereignis-Listener entfernen:**

  ```javascript
  element.removeEventListener('click', handlerFunction);
  ```

## Dynamisches Erstellen und Hinzufügen von Elementen

- **Neues Element erstellen:**

  ```javascript
  const newElement = document.createElement('div');
  ```

- **Element zum DOM hinzufügen:**

  ```javascript
  parentElement.appendChild(newElement);
  ```

- **Element entfernen:**

  ```javascript
  element.remove();
  ```
