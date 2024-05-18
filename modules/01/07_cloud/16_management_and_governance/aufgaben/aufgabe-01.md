# Aufgabe 1

1. Erstelle eine EC2-Instanz und nutze dafür AWS CloudFormation. Gebe einen Screenshot des erstellten CloudFormation Stacks ab und die verwendete Konfiguration.
2. Wieso ist es sinnvoll, AWS CloudFormation für die Erstellung von Ressourcen zu verwenden? Was sind Vor- und Nachteile im Vergleich zum manuellen Erstellen in der Konsole
3. Ein Mitarbeiter im Team hat versehentlich eine wichtige Ressource gelöscht. Wie kannst du herausfinden, wer es war? Welchen Service nutzt du dafür?
4. Was ist die Aufgabe des AWS Compute Optimizer?
5. Was sind die Vorteile von AWS Organizations und wie können sie in der Praxis genutzt werden?
6. Erstelle eine Alarmierung in Amazon CloudWatch, die dich benachrichtigt, wenn die CPU-Auslastung deiner EC2-Instanz über 80% steigt. Gebe einen Screenshot der Alarmierung ab und die verwendete Konfiguration.
7. Zeige dir den Verlauf der CPU-Auslastung deiner EC2-Instanz in Amazon CloudWatch an. Gebe einen Screenshot des Verlaufs ab.
8. Was ist die Funktion von AWS Config und wie kann es dir bei der Verwaltung deiner Ressourcen helfen?
9. Was ist AWS Control Tower und welches Problem versucht es zu lösen?
10. Erstelle ein neues Objekt im AWS Systems Manager Parameter Store und lese diese in diner EC2 Instanz aus!
  Tipps:
  - Hast du schon die Berechtigung für die EC2-Instanz konfiguriert?
  - Wie haben wir EC2-Instanzen die Berechtigung gegeben, auf S3 zuzugreifen?
  - Nutze die AWS CLI auf der EC2-Instanz, um auf den Parameter Store zuzugreifen. (den `aws` Befehl im Terminal)
  - Findest du den richtigen Befehl um einen Parameter aus dem Parameter Store zu lesen?

## Freiwillige Aufgaben

### Szenario

- Für einen Kunden wollen wir eine Webanwendung zur Verfügung stellen, die auf einer EC2-Instanz läuft.
- Da die Last auf der Anwendung stark schwankt, soll die EC2-Instanz automatisch skaliert werden.
- Die Entscheidung wurde getroffen die Anwendung in einer Auto Scaling Group zu betreiben.

1. Erstelle eine Auto Scaling Group mit einer Launch Configuration, die eine EC2-Instanz startet.
  - Stelle sicher, dass du der Instanz die richtigen Berechtigungen gibst, um auf den erstellten Parameter im Systems Manager Parameter Store zuzugreifen.
  - Erstelle ein User Data Script, das den Parameter aus dem Parameter Store liest und in einer Datei speichert.
2. Verbinde dich mit einer der EC2 Instanzen, die von der Auto Scaling Group gestartet wurde und überprüfe, ob die Datei erstellt wurde.
3. Erstelle einen Alarm in Amazon CloudWatch, der dich benachrichtigt, wenn die CPU-Auslastung über 50% steigt

