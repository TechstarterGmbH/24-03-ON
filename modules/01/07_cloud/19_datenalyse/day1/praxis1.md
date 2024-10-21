# Lambda erste einfache Funktion

### Schritt 1: Erstellen der Lambda-Funktion

1. Gehe zur AWS Managementkonsole und navigiere zu **Lambda**.
2. Klicke auf **Create function**.
3. Wähle **Author from scratch**.
4. Gib der Funktion einen Namen, z.B. `IsWeekendFunction`.
5. Wähle **Python 3.x** als Laufzeitumgebung.
6. Klicke auf **Create function**.

### Schritt 2: Hinzufügen des Codes

1. Füge den folgenden Python-Code in das Code-Editorfenster ein:

    ```python
    def lambda_handler(event, context):
        # Wochentag aus dem Ereignis extrahieren
        day_of_week = event.get('day')

        # Prüfen, ob der Wochentag ein Wochenende ist
        if day_of_week in ['Saturday', 'Sunday']:
            result = "Heute ist Wochenende!"
        else:
            result = "Heute ist kein Wochenende."

        # Ergebnis zurückgeben
        return {
            'message': result
        }
    ```

2. Klicke auf **Deploy**.

### Schritt 3: Testen der Funktion

1. Klicke auf **Test**.
2. Erstelle ein neues Testereignis. Gib den Wochentag im `event`-Objekt an, z.B.:

    ```json
    {
        "day": "Saturday"
    }
    ```

3. Gib dem Testereignis einen Namen, z.B. `TestWeekend`.
4. Klicke auf **Create**.
5. Klicke auf **Test**, um die Funktion auszuführen.

### Erklärung des Codes

1. **Definieren der Lambda-Handler-Funktion**
    ```python
    def lambda_handler(event, context):
    ```
    - `lambda_handler`: Dies ist die Hauptfunktion, die von AWS Lambda aufgerufen wird, wenn das Ereignis eintritt.
    - `event`: Enthält Informationen über das Ereignis, das die Lambda-Funktion ausgelöst hat.
    - `context`: Enthält Informationen über die Ausführungsumgebung der Lambda-Funktion (wird in diesem einfachen Beispiel nicht verwendet).

2. **Wochentag aus dem Ereignis extrahieren**
    ```python
    day_of_week = event.get('day')
    ```
    - `event.get('day')`: Holt den Wochentag aus dem Ereignis. Wenn der Wochentag nicht angegeben ist, gibt es `None` zurück.

3. **Prüfen, ob der Wochentag ein Wochenende ist**
    ```python
    if day_of_week in ['Saturday', 'Sunday']:
        result = "Heute ist Wochenende!"
    else:
        result = "Heute ist kein Wochenende."
    ```
    - Überprüft, ob der Wochentag ein Samstag oder Sonntag ist.

4. **Ergebnis zurückgeben**
    ```python
    return {
        'message': result
    }
    ```
    - Gibt eine einfache Nachricht zurück, die angibt, ob heute ein Wochenende ist oder nicht.

### Testen der Funktion

- Nachdem du die Funktion getestet hast, solltest du ein Ergebnis wie das folgende erhalten, wenn du `"day": "Saturday"` angibst:

    ```json
    {
        "message": "Heute ist Wochenende!"
    }
    ```

- Wenn du `"day": "Tuesday"` angibst, wird das Ergebnis entsprechend ändern:

    ```json
    {
        "message": "Heute ist kein Wochenende."
    }
    ```

Dieses Beispiel zeigt auf die einfachste Weise, wie du einen fiktiven Wochentag im `event` übergeben und die Lambda-Funktion testen kannst, um zu sehen, ob der Tag ein Wochenende ist oder nicht.