# Aufgabe 2: Miniprojekt mit Elastic Beanstalk

Die folgende Aufgabe ist ein Miniprojekt, bei dem du deine eigene Wordpress Website auf AWS Elastic Beanstalk deployen wirst.
Ich weiß, dass es keine einfache Aufgabe ist, also falls du nicht weiterkommst, kannst du mich gerne kontaktieren oder im Slack nachfragen.

## Was ist Wordpress

- Wordpress ist ein Website Baukasten System, das es ermöglicht, Webseiten ohne Programmierkenntnisse zu erstellen.
- Es ist das beliebteste Content Management System (CMS) der Welt.
  - Ein CMS ist ein System, das es ermöglicht, Inhalte auf einer Website zu erstellen, zu bearbeiten und zu verwalten.
- Wordpress ist Open Source und kostenlos.
- Es gibt tausende von Themes und Plugins, die es ermöglichen, die Funktionalität der Website zu erweitern.

## Abgabe

- Bitte mach regelmäßig Screenshots von deinem Fortschritt und gebe diese am Ende ab.
- Falls du nicht fertig wirst, gib bitte einfach ab, was du bis dahin geschafft hast! (Wie gesagt, es ist eine schwierige Aufgabe also keine Sorge!)

## Anleitung

- Halte dich bitte an die offizielle Anleitung auf der AWS Website [Wordpress auf Elastic Beanstalk](https://docs.aws.amazon.com/de_de/elasticbeanstalk/latest/dg/php-hawordpress-tutorial.html)

## Schritte

Hier sind nochmal alle Schritte zusammengefasst, aber bitte an die offizielle Anleitung halten!

1. Erstelle eine MariaDB RDS Datenbank (Unter Templates -> Free Tier auswählen)
2. Der Teil mit der Security Gruppe kann erstmal übersprungen werden
3. Vorbereitung der Wordpress Dateien
4. **WICHTIG*:
  - Gehe in den IAM Service und erstelle eine neue Rolle
  - Für den Service EC2
  - Attach Policies: `AWSElasticBeanstalkWebTier`, `AWSElasticBeanstalkMulticontainerDocker`, `AWSElasticBeanstalkWorkerTier`
  - Name: `aws-elasticbeanstalk-ec2-role`
5. Erstellen einer Elastic Beanstalk Umgebung
  - Wähle PHP als Plattform
  - Sample Application auswählen
  - Single Instance auswählen
  - `Create and use new Service Role`
  - Unter `Instance Profile` die Rolle auswählen, die wir gerade erstellt haben
  - `Next`
  - `Next`
  - `Next`
  - `Submit`
6. Ein paar Minuten warten
7. Sobald die Konsole grün ist, klicke auf die `Domain` -> Dir sollte jetzt eine Website angezeigt werden! (Allerdings noch nicht Wordpress)
8. Im linken Menü unter `Environment: WP-env` -> `Configuration`
9. Unter `Updates, monitoring, and logging` -> `Edit`
10. Unter `Environment properties` -> `Edit`
11. `Add environment property` -> Für jede Zeile in der Tabelle (in der Anleitung unter `So konfigurieren Sie Umgebungseigenschaften für eine DB-Instance von Amazon RDS`)
12. Im Terminal die Dateie im `.ebextensions/efs-create.config` Ordner ändern -> Richtige VPC ID und Subnet IDs eintragen
13. Zippe die Wordpress Dateien und lade sie hoch
14. Warte ein paar Minuten
15. Gehe auf die Domain und du solltest jetzt die Wordpress Installation sehen

## Tipps

- Wie gesagt, es ist eine schwierige Aufgabe, also keine Sorge, wenn du nicht weiterkommst! Der Weg ist das Ziel, schaue wie weit du kommst und gib ab, was du bis dahin geschafft hast!
- Es kann sein, dass es Probleme mit dem Upload der Wordpress Dateien gibt. In dem Fall einfach mal probieren, nur die Dateien der Wordpress Installation hochzuladen (ohne den aws extras)
