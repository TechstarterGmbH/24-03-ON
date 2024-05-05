## Aufgabe 2: Praxis

## Szenario

- Du arbeitest für ein Unternehmen, was Kunden dynamisch Anwendungen bereitstellt.
- Die Anwendungen werden auf EC2 Instanzen virtualisiert gehostet.
- Kunden sollen die Möglichkeit haben, neue DynamoDB Tabellen zu erstellen.
- Das heißt die Anwendung (auf der EC2 Instanz) soll die Möglichkeit haben, weitere DynamoDB Tabellen zu erstellen.

## Schritte

### 1. Erstellen einer IAM-Policy

Erstelle eine IAM-Policy, die es einer EC2-Instanz erlaubt, weitere DynamoDB-Tabellen zu starten.

### 2. Erstellen einer IAM-Rolle

Erstelle eine IAM-Rolle für EC2 Instanzen, welche die zuvor erstellte IAM-Policy enthält. Diese Rolle wird später der EC2-Instanz zugewiesen.

### 3. Erstellung einer EC2-Instanz

Erstelle eine neue EC2-Instanz nach folgenden Vorgaben:
- **Instanzentyp**: `t2.micro`
- **AMI**: `Amazon Linux`
- **IAM-Rolle (Unter `Advanced`)**: Die zuvor erstellte IAM-Rolle

### 4. Testen des Zugriffs

Stelle sicher, dass die EC2-Instanz gestartet ist und teste, ob die Anwendung auf der Instanz in der Lage ist, neue DynamoDB-Tabellen zu erstellen.

```bash
aws dynamodb create-table --table-name MyNewTable --attribute-definitions AttributeName=ID,AttributeType=S --key-schema AttributeName=ID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1
```

### 5. Überprüfung

- Überprüfe, ob die neue DynamoDB-Tabelle erfolgreich erstellt wurde.

## Freiwillige Aufgabe

- Ändere die Policy so ab, dass du auch die Möglichkeit hast, Daten in die DynamoDB-Tabelle zu schreiben.
- Teste, ob du Daten in die Tabelle schreiben kannst.
- Überprüfe, ob die Daten erfolgreich in die Tabelle geschrieben wurden.
- Kannst du ein Python-Skript schreiben, dass Daten in die Tabelle schreibt?
