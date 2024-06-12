# Amazon S3-Website hosting

Jetzt werden wir unsere Anwendung innerhalb kurzer Zeit mit Amazon S3 hosten. Das hat den Vorteil, dass wir komplett `Severless` agieren und somit sehr günstig für Millionen von Nutzern unsere Anwendung bereitstellen können.

## Schritt 1: Amazon S3-Bucket erstellen

Erstelle wieder S3 Bucket mit einem eindeutigen Namen. Wähle als Region eu-central-1 aus.

## Schritt 2: Bucket-Einstellungen konfigurieren

1. Wähle den erstellten Bucket aus.
2. Klicke auf "Permissions".
3. Unter "Block public access" klicke auf "Edit".
4. Entferne den Haken bei `Block all public access` und klicke auf "Save changes". Danach tippe `confirm` in das Feld und klicke auf "Save changes".
5. Klicke auf "Properties".
6. Scrolle nach unten zu "Static website hosting". Hier auch auf Edit klicken.
7. Enable auswählen und dann `index.html` als Indexdokumentnamen angeben.
8. Klicke auf "Save changes".
9. Jetzt müsste in der Zeile "Static website hosting" ein Link angezeigt werden. Öffne diesen Link in einem neuen Tab (gerade noch ein Error)

## Schritt 3: Website-Dateien hochladen

1. Uploade die Dateien deiner Webseite in den Bucket. Dazu klickst du auf "Upload" und wählst die Dateien aus.
2. **WICHTIG** - Stelle sicher, dass du die Dateien in den Bucket hochlädst, nicht in einen Unterordner. Die Dateien müssen im Bucket-Root-Verzeichnis liegen.
3. Wenn du die Dateien hochgeladen hast, öffne den Link aus Schritt 2 in einem neuen Tab. Wird die Website angezeigt?

## Schritt 4: Bucket Policy

Die Website wird nicht angezeigt, da der Bucket nicht öffentlich zugänglich ist. Wir müssen die Bucket-Policy ändern, um den Zugriff auf den Bucket zu erlauben.

1. Gehe zurück zu den Bucket-Einstellungen und klicke auf "Permissions".
2. Klicke auf "Bucket Policy" -> "Edit".
3. Füge folgenden Code ein und **ersetze DEIN_BUCKET_NAME mit dem Namen deines Buckets**:
4. **Beachte das `/*` am Ende von Resource!**

```json
{
  "Id": "MyBucketPolicy",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1682277883982",
      "Action": [
        "s3:GetObject",
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::DEIN_BUCKET_NAME/*",
      "Principal": "*"
    }
  ]
}
```

4. Speichere die Änderungen

## Schritt 4: Website testen

1. Kopiere den bereitgestellten Endpunkt-Link für die statische Website aus den Bucket-Einstellungen.
2. Öffne einen Webbrowser und die Endpunkt-URL ein.
3. Überprüfe, ob deine Website erfolgreich gehostet wird und korrekt angezeigt wird.

Herzlichen Glückwunsch! Wir haben erfolgreich eine statische Website mit Amazon S3 erstellt und gehostet.

Denke daran deine neue Webseite mit Freunden und Familie zu teilen! 🚀
