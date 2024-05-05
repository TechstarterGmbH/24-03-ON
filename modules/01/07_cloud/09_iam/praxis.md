# Praxisanleitung

## EC2 Instanz mit S3-Bucket verbinden

- In dieser Übung wirst du lernen, wie du eine EC2-Instanz mit einem S3-Bucket verbindest, um Dateien zwischen der Instanz und dem Bucket zu übertragen.
- Für die Berechtigungen werden wir eine IAM-Policy und Rolle erstellen.

## Schritt 1: AWS Management Console öffnen

- Öffne deinen Webbrowser und gehe zur AWS Management Console unter [https://aws.amazon.com/console/](https://aws.amazon.com/console/).
- Melde dich mit deinen AWS-Anmeldeinformationen an.


## Schritt 2: Einen neuen S3-Bucket erstellen

- Klicke auf die Schaltfläche "Bucket erstellen", um einen neuen Bucket zu erstellen.
- Wähle einen **eindeutigen Bucket-Namen (es darf auf der Welt keinen anderen Bucket mit diesem Namen geben!)** und wähle die Region aus, in der der Bucket gespeichert werden soll (eu-central-1).
- Klicke auf "Weiter" und lasse alle anderen Optionen vorerst unverändert.
- Klicke auf "Bucket erstellen", um den Bucket zu erstellen.
- Lade eine Datei in den Bucket hoch
- Notiere dir den Namen des Buckets, da du ihn später benötigen wirst.

## Schritt 3: IAM-Policy erstellen

- Navigiere zur IAM-Verwaltungskonsole, indem du auf den Service "IAM" klickst.
- Wähle `Policies` (`Richtlinien`) im linken Menü und dann `Create Policy` / `Richtlinie erstellen`.
- Wähle den `JSON`-Tab und füge folgenden JSON-Code ein:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket",
                "s3:GetObject",
                "s3:PutObject"
            ],
            "Resource": [
                "arn:aws:s3:::dein-bucket-name",
                "arn:aws:s3:::dein-bucket-name/*"
            ]
        }
    ]
}
```
- Ersetze `dein-bucket-name` durch den Namen des S3-Buckets, den du in Schritt 2 erstellt hast.
- Klicke auf "Überprüfen-Richtlinie" und gib der Richtlinie einen aussagekräftigen Namen zum Beispiel `MyS3Policy` und optional eine Beschreibung.
- Klicke auf "Richtlinie erstellen", um die Richtlinie zu erstellen.

## Schritt 4: IAM-Rolle erstellen

- Navigiere zur IAM-Verwaltungskonsole, indem du auf den Service "IAM" klickst.
- Wähle "Rollen" im linken Menü und dann "Rolle erstellen".
- Wähle den AWS-Dienst "EC2" aus und klicke auf "Weiter: Berechtigungen".
- Suche nach der Richtlinie `MyS3Policy` (oder dem Namen, den du in Schritt 3 gegeben hast) und wähle sie aus.
- Klicke auf "Weiter: Tags" und füge bei Bedarf Tags hinzu. Klicke dann auf "Weiter: Überprüfen".
- Vergib einen aussagekräftigen Namen `MyS3Ec2Role` für die Rolle und optional eine Beschreibung.
- Klicke auf "Rolle erstellen", um die Rolle zu erstellen.

## Schritt 5: IAM-Rolle an EC2-Instanz zuweisen

- Gehe zurück zur EC2-Verwaltungskonsole, indem du auf den Service "EC2" klickst.
- Erstelle eine neue `t2.micro`-Instanz oder wähle eine vorhandene Instanz aus.
- Klicke auf "Aktionen" und dann auf "Instanz-Einstellungen bearbeiten" > "IAM-Rolle ändern".
- Wähle die erstellte IAM-Rolle aus der Dropdown-Liste aus und klicke auf "Speichern".

## Schritt 6: Testen des Zugriffs

- Stelle sicher, dass die EC2-Instanz gestartet ist und greife auf sie zu.
- Führe Befehle aus, um auf den S3-Bucket zuzugreifen und abzurufen.

```bash
aws s3 ls s3://dein-bucket-name
# Hier bitte dein-bucket-name und deine-datei ersetzen
aws s3 cp s3://dein-bucket-name/deine-datei.txt .
```

## Schritt 7: Aufräumen (Optional)

- Wenn du die Übung beendet hast, kannst du den S3-Bucket und die IAM-Rolle löschen, um Kosten zu sparen.
