# Aufgabe 2: Praxis

1. Erstelle ein VPC nach dem Vorbild der Praxis Aufgabe gestern:
  - 3 öffenlichen Subnetze
  - Internet Gateway
  - Route Table für öffentliche Subnetze
2. Erstelle ein S3 Bucket
3. Erstelle eine IAM Policy um Zugriff auf den erstellten S3 Bucket zu erlauben
4. Erstelle eine IAM Rolle (für EC2) und füge die erstellte Policy hinzu
5. Erstelle eine EC2 Instanz und füge die erstellte Rolle (als Instance Role) hinzu
6. Verbinde dich mit der EC2 Instanz und teste den Zugriff auf den S3 Bucket mit dem AWS CLI

## Freiwillig

- Füge ein Gateway Endpoint für S3 zu deinem VPC hinzu
- Hier ist eine Beschreibung [Link](https://docs.aws.amazon.com/de_de/vpc/latest/privatelink/vpc-endpoints-s3.html#create-gateway-endpoint-s3)
- Um den Gateway Endpoint zu testen, ...
  - Erstelle mindestens ein privates Subnetz (incl. Route Table)
  - Erstelle eine EC2 Instanz in dem privaten Subnetz
  - Verbinde dich mit der privaten EC2 Instanz (via Bastion Host) und teste den Zugriff auf den S3 Bucket mit dem AWS CLI
  - Da du kein NAT Gateway bentuzt, bedeutet es, dass alles funktioniert, wenn du den S3 Bucket erreichen kannst!
