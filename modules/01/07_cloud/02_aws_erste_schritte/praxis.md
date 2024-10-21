# Erste Schritte

1. **Konto Login**: Log dich in deiner Sandbox unter https://techstarter.awsapps.com/start#/ ein.

2. **Auswahl der Region**: Wähle die AWS-Region aus, in der du deine Ressourcen bereitstellen möchtest, bei uns ist dies Frankfurt.

3. **Ressourcen bereitstellen**: Beginne mit der Bereitstellung von Ressourcen wie virtuellen Servern (EC2-Instanzen), Speicher (S3-Buckets), Datenbanken (RDS), etc., je nach den Anforderungen deiner Anwendung.

**Wichtig**
Für dich notwendig sind nur die aufgeführten Schritte, scrolle bei allem anderen einfach weiter und verändere erst einmal nichts.

**Schritt 1: EC2-Instanz erstellen:**

- Navigiere zum Dienst "EC2". Entweder kannst du neben dem Punkt ,,Services" die Lupe für die Suchfunktion nutzen und dort ,,EC2" eintippen. Oder dieser Dienst könnte dir unter dem Punkt ,,Kürzlich besucht" zu finden sein, falls du ihn kürzlich benutzt hast.

- Klicke auf "Instances" in der linken Seitenleiste und dann auf "Instances starten".

- Vergebe einen Namen, zB Mein erster Webserver

- Wähle "Amazon Linux 2 AMI" als Betriebssystem aus.

- Wähle als Instanztyp t2.micro.

- Wähle unter dem Punkt ,,Schlüsselpaar(Anmeldung)", wähle ,,Ohne Schlüsselpaar fortfahren" aus. Es führt für dieses erste Beispiel sonst zu weit.

**Schritt 2: Konfiguration der EC2-Instanz:**

- Unter dem Punkt Netzwerkeinstellungen wählst du folgendes

- Wähle ,,Sicherheitsgruppe erstellen" aus. Erlaube den HTTP-Zugriff (Port 80) von überall. Wähle dazu ,,HTTP-Datenverkehr aus dem Internet zulassen" an.

![alt text](Bilder/image-1.png)


- Füge unter "Erweiterte Details" das Skript in das Feld "Benutzerdaten" ein. Dieses Skript wird ausgeführt, sobald die Instanz gestartet wird.

```bash
#!/bin/bash
# Benutzerdaten (von oben nach unten ausführen)
# Installiere httpd (Linux 2 Version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Erstelle index.html-Datei mit eingebettetem GIF
echo "<h1>Yeah! Wir haben es geschafft!</h1> <div style=\"padding-top:56.250%;position:relative;\"><iframe src=\"https://gifer.com/embed/PT71\" width=\"400\" height=\"225\" style='position:absolute;top:0;left:0;' frameBorder=\"0\" allowFullScreen></iframe></div>" > /var/www/html/index.html
```

- Klicke auf "Starten".

![alt text](Bilder/image-2.png)

- Suche unter Netzwerkeinstellungen ,,VPC - Pflichtfeld" und klicke dort auf die blau unterlegte Option ,,erstellen Sie eine neue Standard-VPC".

**Erklärung:** Wir erstellen Standard-VPC, um die EC2-Instanz in einem dort zu erstellen.

**Schritt 3: Erstellen eines Standard-VPC:**

- es öffnet sich ein neues Browser-Tab mit folgender Ansicht

![alt text](Bilder/image-3.png)


- Klicke in dem neuen Tab auf "Standard-VPC erstellen".

- dies sollte dir direkt bestätigt werden

![alt text](Bilder/image-4.png)

- navigiere in das EC2-Tab zurück und aktualisiere das VPC Feld

![alt text](Bilder/image-5.png)

- das Standard-VPC sollte dadurch automatisch eingesetzt sein, mache dies ebenso mit dem Feld ,,Subnetz"

![alt text](Bilder/image-6.png)

- du solltest nun folgende Ansicht haben

![alt text](Bilder/image-7.png)

- Klicke auf ,,Instance starten".

**Schritt 5: Warten auf das Starten der EC2-Instanz:**

Sobald du die EC2-Instanz gestartet hast, dauert es einige Minuten, bis sie vollständig einsatzbereit ist. Du kannst den Status der Instanz im AWS Management Console überprüfen.

- Navigiere zum "EC2 Dashboard".

- Klicke auf "Instances" in der linken Seitenleiste.

- Die Liste der Instanzen zeigt den Status jeder Instanz an. Wenn der Status "running" ist, ist die Instanz gestartet und einsatzbereit.

Es kann einige Minuten dauern, bis die Instanz vollständig startet. Bitte habe Geduld während dieses Vorgangs.

![alt text](Bilder/image-10.png)

- Wähle im linken Feld neben deiner Instanz und dem Instanznamen den Button an

![alt text](Bilder/image-8.png)

- Nun werden dir Informationen über deine Instanz angezeigt. Kopiere die Öffentliche IPv4-Adresse über das linke Symbol neben der Nummer

![alt text](Bilder/image-9.png)

- öffne ein neues Browser Tab und tippe dort http:// ein und füge dahinter die kopierte IP Adresse ein. Zum Beispiel http://3.67.8.145 

**Schritt 5: EC2-Instanz beenden:**

- Gehe zur AWS Management Console und logge dich ein, falls erforderlich.

- Navigiere zum "EC2 Dashboard".

- Klicke auf "Instanzen" in der linken Seitenleiste.

- Markiere die Instanz, die du beenden möchtest.

- Klicke auf "Instance-Status" und wähle ,,Instance stoppen" und dann auf "Instance beenden".

- Bestätige die Aktion, wenn du dazu aufgefordert wirst.

- Klicke auf "Instance-Status" dann auf "Instance beenden".

- Bestätige die Aktion, wenn du dazu aufgefordert wirst.

Die EC2-Instanz wird nun beendet. Stelle sicher, dass du keine laufenden Instanzen benötigst, bevor du sie beendest, um unerwartete Auswirkungen auf deine Anwendungen zu vermeiden.

![](Bilder/EC2.JPG)

4. **Kostenoptimierung**: Achte darauf, die Kosten im Auge zu behalten, indem du Ressourcen richtig verwaltest. In diesem Fall ist es daher sehr wichtig die EC2-Instanz zu beenden.