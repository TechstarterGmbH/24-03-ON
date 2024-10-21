---
marp: true
theme: default
class:
  - invert
style: |-
  section {
    background-color: #090917;
    color: #F1F1F1;
  }
  h1, h2, h3, h4 {
    color: #FC6549;
  }
  em {
    color: #FC6549;
  }
paginate: true
footer:
---

# Einführung in API-Dokumentation

---

## Was ist eine API-Dokumentation?

- **Definition:** Eine API-Dokumentation ist ein Handbuch, das erklärt, wie eine API verwendet wird.
- **Zweck:** Sie hilft Entwicklern, die Funktionen der API zu verstehen und sie effektiv in ihren Anwendungen zu integrieren.

---

## Warum ist API-Dokumentation wichtig?

- **Klare Kommunikation:** Erklärt die Funktionen und Nutzung der API.
- **Fehlervermeidung:** Reduziert Missverständnisse und Fehler beim Implementieren.
- **Effizienzsteigerung:** Ermöglicht eine schnellere Entwicklung und Integration.

---

## Grundlagen der API-Dokumentation

1. **Übersicht**
2. **Endpunkt-Beschreibungen**
3. **Beispielanfragen und -antworten**
4. **Fehlercodes und deren Bedeutung**

---

## 1. Übersicht

- **Zweck der API**
- **Funktionen und Hauptmerkmale**
- **Basis-URL der API**

---

## 2. Endpunkt-Beschreibungen

- **URL und Methode (GET, POST, PUT, DELETE)**
- **Beschreibung des Endpunkts**
- **Parameter (Pfadvariablen, Query-Parameter, Body)**
- **Antwortformat**

---

## 3. Beispielanfragen und -antworten

- **Beispiel-Request**
  ```javascript
  fetch("http://localhost:5000/todos", {
    method: 'GET'
  })
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error:', error));
  ```
- **Beispiel-Response**
  ```json
  [
    {
      "id": 1,
      "text": "Einkaufen gehen",
      "isComplete": false
    }
  ]
  ```

---

## 4. Fehlercodes und deren Bedeutung

- **200 OK:** Anfrage erfolgreich.
- **201 Created:** Neues Objekt erfolgreich erstellt.
- **404 Not Found:** Angeforderte Ressource nicht gefunden.
- **500 Internal Server Error:** Serverfehler, bitte später erneut versuchen.

---

## Beispiel: API-Dokumentation für ToDoList

### Übersicht

- **API-Name:** ToDoList
- **Version:** CURRENT
- **Beschreibung:** Verwaltung von Todo-Listen.

### Endpunkte

1. **GET /todos** – Alle Todos abfragen
2. **GET /todos/:id** – Ein einzelnes Todo abfragen
3. **POST /todos** – Ein neues Todo hinzufügen
4. **PUT /todos/:id** – Ein Todo updaten
5. **DELETE /todos/:id** – Ein Todo löschen

---

## Endpunkt-Beispiel: Ein neues Todo hinzufügen

- **URL:** `http://localhost:5000/todos`
- **Methode:** POST
- **Body (JSON):**
  ```json
  {
    "text": "Einkaufen gehen",
    "isComplete": false
  }
  ```
- **Erfolgscode:** 201 Created
- **Fehlercode:** 500 Internal Server Error

---

## Tipps zur Erstellung einer API-Dokumentation

- **Sei klar und präzise:** Vermeide Fachjargon und sei direkt.
- **Verwende Beispiele:** Zeige, wie Anfragen gestellt und Antworten interpretiert werden.
- **Halte die Dokumentation aktuell:** Stelle sicher, dass sie immer mit der API-Version übereinstimmt.

---

## Fazit

- **Gute Dokumentation ist entscheidend für den Erfolg einer API.**
- **Sie erleichtert die Nutzung und Integration der API.**
- **Halte die Dokumentation übersichtlich und aktuell.**

---

# Fragen?

