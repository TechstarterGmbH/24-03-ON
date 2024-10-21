
### Schritte zur Einrichtung mit Amazon S3

#### 1. Erstellen eines neuen Buckets mit einem eindeutigen Namen

```sh
aws s3 mb "s3://glitzer-einhorn" --profile deinProfilname
```

Kontrolliere, dass der s3 Bucket erstellt wurde
```sh
aws s3 ls --profile deinProfilname
```

#### 2. Aktivieren des öffentlichen Zugriffs auf den Bucket

```sh
aws s3api put-public-access-block --bucket glitzer-einhorn --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false" --profile deinProfilname
```
#### 3. Aktualisieren der Bucket-Richtlinie für öffentlichen Lesezugriff
```sh
aws s3api put-bucket-policy --bucket glitzer-einhorn --policy "{ \"Version\": \"2012-10-17\", \"Statement\": [ { \"Sid\": \"PublicReadGetObject\", \"Effect\": \"Allow\", \"Principal\": \"*\", \"Action\": \"s3:GetObject\", \"Resource\": \"arn:aws:s3:::glitzer-einhorn/*\" } ] }" --profile deinProfilname
```

Achtung, nicht erschreckend, dies ist eine ganz normale Bucket-Policy

```sh
aws s3api put-bucket-policy --bucket dein-bucket-name --policy "{
  \"Version\": \"2012-10-17\",
  \"Statement\": [
      {
          \"Sid\": \"PublicReadGetObject\",
          \"Effect\": \"Allow\",
          \"Principal\": \"*\",
          \"Action\": \"s3:GetObject\",
          \"Resource\": \"arn:aws:s3:::dein-bucket-name/*\"
      }
  ]
}"
```

So kennen wir es bereits:

```JSON
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::dein-bucket-name/*"
        }
    ]
}
```

#### 4. Erstellen einer `index.html`-Datei mit dem angegebenen Inhalt

Erstelle einen Ordner namens `html`. Erstelle eine Datei namens `index.html` und füge folgenden Inhalt ein:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unicorn</title>
</head>
<body>
    <h1>Yeah, its a Unicorn!</h1>
    <div style="padding-top: 81.633%; position: relative;">
        <iframe src="https://gifer.com/embed/QhO" width="50%" height="50%" style="position: absolute; top: 0; left: 0;" frameborder="0" allowfullscreen></iframe>
    </div>
</body>
</html>
```

#### 5. Hochladen deiner index.html Datei

wähle den Ordner mit der index.html Datei darin mit einem rechtsklick an und wähle `Als Pfad kopieren` aus. Ersetze im unteren Befehl `verzeichnis-pfad` mit dem eben kopierten Pfad.

```sh
aws s3 sync verzeichnis-pfad "s3://glitzer-einhorn/" --profile deinProfilname
```

`aws s3 sync`aktualisiert den Inhalt des Buckets mit dem Inhalt des lokalen Verzeichnisses.

Wenn du nur eine einzelne Datei kopieren möchtest, kannst du verwenden`aws s3 cp`

```sh
aws s3 cp verzeichnis-pfad s3://glitzer-einhorn/" --profile deinProfilname
```

ebenso kannst du eine Datei aus deinem Bucket heruaskopieren

```sh
aws s3 cp "s3://your-bucket-name/filename" verzeichnispfad --profile deinProfilname
```
Gehe in deine Konsole, in den S3 Bucket, wähle die index.html dort aus, klicke auf die Object-url und mache einen screenshot davon
### Bereinigen


Um einen Bucket zu löschen, musst du zunächst alle Objekte im Bucket löschen und dann den Bucket selbst löschen. 
Alle Objekte im Bucket löschen

```sh
aws s3 rm s3://glitzer-einhorn --recursive --profile deinProfilname
```

Den Bucket selbst löschen
```sh
aws s3api delete-bucket --bucket glitzer-einhorn --profile deinProfilname
```
