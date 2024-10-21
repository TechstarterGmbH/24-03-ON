#  Eine AWS Lambda-Funktion einrichten, die eine Nachricht in eine SQS-Warteschlange schreibt, wenn ein Objekt in einen S3-Bucket hochgeladen wird


#### Schritt 1: Erstellen eines S3-Buckets
1. Gehe zur AWS Managementkonsole und navigiere zu **S3**.
2. Klicke auf **Create bucket**.
3. Gib einen eindeutigen Namen für den Bucket ein und wähle eine Region aus.
4. Klicke auf **Create bucket**.

#### Schritt 2: Erstellen einer SQS-Warteschlange
1. Gehe zur AWS Managementkonsole und navigiere zu **SQS**.
2. Klicke auf **Create queue**.
3. Gib einen Namen für die Warteschlange ein und klicke auf **Create queue**.
4. Kopiere dir die URL der Warteschlange.

#### Schritt 3: Erstellen einer Lambda-Funktion
1. Gehe zur AWS Managementkonsole und navigiere zu **Lambda**.
4. Gib einen Namen für die Funktion ein, z.B. `S3ToSQSFunction`.
5. Wähle **Python 3.x** als Laufzeitumgebung.
6. Klicke auf **Create function**.

#### Schritt 4: Hinzufügen eines S3-Trigger zu der Lambda-Funktion
1. Gehe zur Lambda-Konsole und wähle die erstellte Funktion aus.
2. Klicke auf **Add trigger**.
3. Wähle **S3** als Trigger aus.
4. Wähle den S3-Bucket aus und setze **Event type** auf **All object create events**.
5. Klicke auf **Add**.

#### Schritt 5: Hinzufügen einer SQS-Warteschlange zu der Lambda-Funktion
2. Klicke auf **Add destination**.
3. Wähle unter **Conditions** **On success** aus.
3. Wähle **SQS** als Destination Type aus.
4. Wähle deine SQS-Warteschlange aus.
5. Klicke auf **Add**.

#### Schritt 6: Testen der Einrichtung
1. Lade eine Datei in den S3-Bucket hoch.
2. Überprüfe die SQS-Warteschlange in der SQS-Konsole. Es sollte eine Nachricht mit den Details der hochgeladenen Datei erscheinen.
