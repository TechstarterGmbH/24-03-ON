# Tag 3: Zusammenführung Back- und Frontend

| **Beschreibung der Änderung**                                                                 | **Gründe dafür**                                                           |
| --------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| Hinzufügen der Verwendung von CORS in der Datei mit der SQLite3-Datenbank und den API-Routen. | Erlaubt es, dass dein Frontend von einem anderen Ort auf die API zugreift. |
| Entfernen des `onToggleDone` Props aus `TodoItem`.                                            | Die Funktionalität wird intern in der Komponente `TodoItem` behandelt.     |
| Hinzufügen von `handleToggleDone` und `handleDelete` Funktionen in `TodoItem`.                | Um die Checkbox und den Lösch-Button lokal in `TodoItem` zu steuern.       |
| Änderung des `onChange` Handlers der Checkbox, um `handleToggleDone` zu verwenden.            | Lokale Behandlung der Toggle-Funktionalität in `TodoItem`.                 |
| Änderung des `onClick` Handlers des Lösch-Buttons, um `handleDelete` zu verwenden.            | Lokale Behandlung der Lösch-Funktionalität in `TodoItem`.                  |
| Definition der API-URL mit `API_HOST` und `API_PORT` Konstanten in `TodoList`.                | Einfachere Wiederverwendung der API-URL.                                   |
| Verwendung der Funktion `fetchTodos` und Implementierung von Fetch-API-Aufrufen.              | Abrufen der Todo-Liste vom Server.                                         |
| Verwenden von `fetchTodos` im `useEffect` Hook.                                               | Laden der Daten beim Laden der Komponente.                                 |
| Hinzufügen von Fetch-API-Aufrufen in `addTodo` Funktion.                                      | Erstellen eines neuen Todos auf dem Server.                                |
| Änderung der `deleteTodo` Funktion zur Verwendung der Fetch-API.                              | Löschen eines Todos auf dem Server und Aktualisierung der Todos-Liste.     |
| Hinzufügen von Fetch-API-Aufrufen in `updateTodo` Funktion.                                   | Aktualisieren eines Todos auf dem Server.                                  |
| Entfernen des `onToggleDone` Props bei der Übergabe an `TodoItem` in `TodoList`.              | Da die Toggle-Funktionalität jetzt intern in `TodoItem` behandelt wird.    |
| Hinzufügen der Verwendung von CORS in der Datei mit der SQLite3-Datenbank und den API-Routen. | Ermöglichen von Cross-Origin-Anfragen für die API.                         |

