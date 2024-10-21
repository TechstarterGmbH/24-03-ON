

# Aufgabe 1
### 1. Fragen zur Löschfunktion in `TodoList.js`

1. Wie wird sichergestellt, dass das ursprüngliche Array `todos` nicht direkt verändert wird?

2.  Was passiert nach dem Entfernen des Elements aus der Kopie des Arrays?

3. Was passiert, wenn die `id` eines To-Do-Elements mit der `id` des `updatedTodo` übereinstimmt?

4. Wie wird das Array `todos` aktualisiert, wenn eine Aufgabe bearbeitet wird?

### 2. Fragen zum Bearbeitungsmodus und zur Löschfunktion in `TodoItem.js`

1. Wie beeinflusst `isEditing`, wie der Text des To-Do-Elements angezeigt wird?

2. Was passiert, wenn der Bearbeitungsmodus aktiviert oder deaktiviert wird?

3. Wie beeinflusst `updatedText` das Rendering des To-Do-Elements?

4. Woher erhält die `onDelete` Funktion den `index` des zu löschenden To-Do-Elements?

### 3. Fragen zu `useEffect` für das Datenladen in `TodoList.js`

1. Warum wird `setTimeout` verwendet, um die Daten zu laden?

2. Was passiert mit dem `loading` Zustand, nachdem die Daten geladen sind?

3. Welche Daten werden im `todos` Array gespeichert?

### 4. Fragen zum State-Management für `loading` in `TodoList.js`

1. Was passiert, wenn `loading` auf `true` gesetzt ist?

2. Was wird angezeigt, wenn `loading` auf `false` gesetzt ist?

3. Welche Funktionen werden als Props an `TodoItem` weitergegeben?

### Weitere Fragen:

1. Wie werden die Änderungen an `updatedText` verarbeitet und gespeichert?

2. Welche Rolle spielen die Props `onToggleDone`, `onDelete`, und `onUpdate` bei der Interaktion mit den To-Do-Elementen?

