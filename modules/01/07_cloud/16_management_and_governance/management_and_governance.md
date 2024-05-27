# Einführung in Management und Governance

## Einleitung

### Einführung ins Thema

- **Was ist Management und Governance in der Cloud?**
  - Management umfasst die Tools und Prozesse zur Verwaltung von Cloud-Ressourcen.
  - Governance stellt sicher, dass diese Ressourcen sicher und regelkonform verwendet werden.
- **Wieso sind Management und Governance in der Cloud wichtig?**
  - Verhindert ineffiziente Ressourcennutzung und Sicherheitsrisiken.
  - Gewährleistet Einhaltung von **Compliance-Anforderungen**.
  - Verbessert die **Transparenz und Kontrolle** über die Cloud-Umgebung.
  - Unterstützt **Kostenoptimierung** und **Leistungsverbesserung**.

## Management Tools

### 1. AWS CloudFormation

- **Was ist Infrastructure as Code (IaC)?**
  - IaC bedeutet, Infrastruktur durch Code zu definieren und bereitzustellen.
  - Das heißt, wir schreiben eine Textdatei, die die gewünschten Ressourcen beschreibt.
  - Diese werden dann automatisch erstellt und konfiguriert.
  - Wie ein **Bauplan für die Cloud**.
  - Vorteile: Konsistenz, Automatisierung, Wiederholbarkeit.
- **Einführung in AWS CloudFormation**
  - Ermöglicht das Erstellen und Verwalten von AWS-Ressourcen mit Templates.
  - Unterstützt JSON und YAML Format.
  - Ein Tool zur Umsetzung von Infrastructure as Code (IaC)-Prinzipien.
- **Vorteile und Anwendung von AWS CloudFormation**
  - Automatisierte und konsistente Bereitstellung.
  - Einfache Verwaltung und Aktualisierung von Ressourcen.
  - Rollback-Funktion bei Fehlern.

#### Praxisbeispiel: Erstellen eines S3-Buckets

1. Erstelle eine Datei `s3_bucket.yaml`:
(Bitte den Bucket-Namen anpassen, da er global eindeutig sein muss.)

```yaml
Resources:
  MyS3Bucket:
    Type: 'AWS::S3::Bucket'
    Properties:
      BucketName: 'my-example-bucket-3148234oi'
```

2. Lade die Datei in der AWS CloudFormation-Konsole hoch.
3. Klicke auf "Stack erstellen" und folge den Anweisungen.

### 2. AWS CloudTrail

- **Was ist AWS CloudTrail?**
  - Service, der API-Aufrufe protokolliert.
  - Jede Aktion im AWS-Konto ist ein API-Aufruf und wird aufgezeichnet.
  - Hilft bei der Überwachung und Überprüfung von Aktivitäten.
- **Aktivierung und Nutzung von AWS CloudTrail**
  - Ist standardmäßig aktiviert!
  - Einfach den CloudTrail-Service in der AWS-Konsole öffnen.
- **Compliance und Sicherheit**
  - Nachverfolgbarkeit von Aktionen und Änderungen.
  - Unterstützung bei der Untersuchung von Sicherheitsvorfällen.
  - Erfüllung von Compliance-Anforderungen.

#### Praxisbeispiel: Nachverfolgen eines API-Aufrufs

1. Öffne die CloudTrail-Konsole.
2. Findest du den Aufruf, der den S3-Bucket erstellt hat?

### 3. AWS Compute Optimizer

- **Einführung in AWS Compute Optimizer**
  - Analysiert Ressourcennutzung und gibt Optimierungsempfehlungen.
  - Unterstützt EC2-Instances, Auto Scaling Groups, EBS-Volumes und Lambda-Funktionen.
- **Nutzen von AWS Compute Optimizer**
  - Kostenoptimierung durch richtige Dimensionierung von Ressourcen.
  - Leistungsverbesserung durch Anpassung der Ressourcen.
  - Nutzung:
    - Aktiviere Compute Optimizer in der AWS-Konsole.
    - Erhalte Empfehlungen zur Optimierung.

### 4. AWS Organizations

- **Welches Problem wird gelöst?**
  - Stell dir vor du bist in einer Firmenstruktur mit vielen Abteilungen.
  - Jede Abteilung hat eigene AWS-Konten.
  - Wie behältst du den Überblick und die Kontrolle?
  - Vielleicht willst du auch zentrale Richtlinien durchsetzen.
  - AWS Organizations hilft dabei: **Mehrere Konten zentral verwalten und steuern**.
- **Was ist AWS Organizations?**
  - Service zur Verwaltung mehrerer AWS-Konten.
  - Unterstützt zentralisierte Verwaltung und Abrechnung.
- **Wieso verschiedene AWS Accounts?**
  - Zum Beispiel: Trennung von Entwicklungs-, Test- und Produktionsumgebungen.
  - Bessere Kostenkontrolle und Sicherheit.
- **Nutzung und Möglichkeiten von AWS Organizations**
  - Erstellen und Verwalten von Organisationseinheiten (engl. organizational units, OUs).
  - Konsolidierte Abrechnung (engl. consolidated billing).
  - Durchsetzung von Richtlinien über alle Konten.
- **Service Control Policies (SCPs)**
  - SCPs definieren erlaubte Aktionen auf Kontoebene.
  - Einsatz zur Sicherstellung von Compliance und Sicherheitsrichtlinien.
  - Ähnlich IAM-Richtlinien, aber auf Organisationsebene.
  - **In unserer Sandbox werden SCPs verwendet, um bestimmte Aktionen zu blockieren.**

## Governance Tools

### 1. Amazon CloudWatch

- **Was ist Observability?**
  - Wir wollen immer wissen, was in unserem System gerade passiert. Bei Problemen wollen wir benachrichtigt werden.
  - Fähigkeit, den Zustand eines Systems durch Überwachung und Analyse zu verstehen.
- **Einführung in Amazon CloudWatch**
  - Das zentrale Tool für Observability / Monitoring in AWS.
  - Unterstützt verschiedene Arten von Überwachungsdaten: Logs, Metriken, Alarms, Dashboards.
- **Funktionen und Nutzen von Amazon CloudWatch**
  - **Logs:**
    - Speicherung und Analyse von Logdaten
    - z.B. Zugriffsprotokoll
    - Für EC2 muss erst ein Agent (Programm zur Datenerfassung) installiert werden.
  - **Metrics:** Sammlung und Überwachung von Leistungsdaten (z.B. CPU-Auslastung).
  - **Alarms:** Benachrichtigungen bei Schwellenwertüberschreitungen (z.B. Benachrichtigung wenn die CPU-Auslastung höher als 80% für länger als 5 Minuten).
  - **Dashboards:** Visualisierung von Metriken und Logs.

#### Praxisbeispiel: Erstellen eines Alarms

1. Erstelle eine EC2-Instance
2. Gehe zur CloudWatch-Konsole.
3. Gehe zum Alarm-Tab und klicke auf "Create Alarm".
4. Wähle eine Metrik `EC2` -> `Per-Instance Metrics`, gebe die ID der EC2-Instance ein. und wähle eine Metrik (z.B. `CPUUtilization`).
5. Definiere einen Schwellenwert (z.B. `10`)
6. Definiere die Alarmaktion `In Alarm` -> `Create new topic` -> `Create topic`. Name des Topics: `HighCPUAlarm` und Email-Adresse eingeben. -> `Create topic`.
7. Name: `HighCPUAlarm`, Description: `Alarm when CPU Utilization is high`, State: `Enabled`, Actions: `HighCPUAlarm`.
8. `Create Alarm`.
9. E-Mail bestätigen.
10. CPU-Auslastung der EC2-Instance erhöhen und Alarm beobachten.

```bash
# Installiere Stress-Test-Tool
sudo dnf update
sudo dnf install stress -y

# Starte Stress-Test
stress --cpu 2 --timeout 360
```

### 2. AWS Config

- **Wie stelle ich sicher, dass meine AWS Ressourcen konform sind?**
  - Um Compliance sicherzustellen, müssen wir **die Konfigurationen unserer Ressourcen dauerhaft überwachen**.
  - Genau dafür ist AWS Config da.
- **Einführung in AWS Config**
  - Service zur Überwachung von Ressourcen-Konfigurationen.
  - Wir können Richtlinien definieren, die sicherstellen, dass unsere Ressourcen konform sind.
  - AWS Config protokolliert alle Konfigurationsänderungen und erstellt Compliance-Berichte.
  - Falls wir feststellen, dass eine Ressource nicht konform ist, werden wir benachrichtigt und können entsprechend reagieren.
- **Vorteile und Anwendung von AWS Config**
  - Automatisierte Überwachung und Compliance-Berichterstattung.
  - Historische Konfigurationsänderungen und deren Auswirkungen nachvollziehen.
  - Teilweise automatische Wiederherstellung von konformen Zuständen.
  - Es gibt vorgefertigte Regeln, die wir einfach aktivieren können.
- **Praxisbeispiel** wird in unserer Sandbox genutzt, um sicherzustellen, dass alle Accounts den gleichen Regeln folgen. Wir können aber keine eigenen Regeln erstellen.

### 3. AWS Control Tower

- **Was ist eine Landing Zone?**
  - Ein Bauplan für neue AWS-Konten.
  - Enthält die notwendigen Ressourcen und Konfigurationen für ein sicheres und konformes Konto.
  - Automatische Einbettung in die Organisation.
- **Was ist AWS Control Tower?**
  - Ein weiterer Service der einfach nur verschiedene AWS-Services zusammenfasst.
  - Service zur Einrichtung und Verwaltung einer sicheren Multi-Account-Umgebung.
- **Funktionen von AWS Control Tower**
  - Automatisierte Einrichtung von Landing Zones.
  - Durchsetzung von Richtlinien und Best Practices.
- **Vorteile und Anwendung von AWS Control Tower**
  - Mit wenigen Klicks eine sichere und konforme AWS-Umgebung einrichten (brauchbar für große Unternehmen!).
  - Vereinfachte Verwaltung und Governance.
  - Sichere und konforme AWS-Umgebungen.

### 4. AWS Health Dashboard

- **Einführung in AWS Health Dashboard**
  - Bietet Echtzeit-Informationen über den Zustand deiner AWS-Ressourcen und -Dienste.
  - Kann sowohl die verwendeten Resourcen in unserem Account als auch die allgemeine Verfügbarkeit von AWS-Diensten betreffen.
- **Nutzung und Vorteile von AWS Health Dashboard**
  - Proaktive Benachrichtigungen über Ereignisse und geplante Wartungen.

#### Praxisbeispiel: Überwachung von Service-Ausfällen

1. Gehe zur AWS Health Dashboard-Konsole.
2. Finde alle Ereignisse in der Region `eu-central-1`.

### 5. AWS Service Catalog

- **Einführung in AWS Service Catalog**
  - Verpacke CloudFormation-Stacks in wiederverwendbare Produkte.
  - Verwaltung und Bereitstellung genehmigter AWS-Dienste.
- **Wie man AWS Service Catalog verwendet**
  - Erstellen und Verwalten von Produktportfolios.
  - Macht es einfach auch für nicht-technische Benutzer, Ressourcen bereitzustellen.

### 6. AWS Systems Manager

- **Erklärung von AWS Systems Manager**
  - Zentrales Management-Tool für AWS-Ressourcen und -Operationen.
  - Wie schaffen wir es hunderte von Instanzen einfach zu verwalten? (Updates durchführen, Befehle ausführen, etc.)
  - Der Systems Manager ist ein Werkzeugkasten mit verschiedenen Werkzeugen.
- **Nutzung und Nutzen von AWS Systems Manager**
  - Vereinfachte Verwaltung, Überwachung und Automatisierung von Ressourcen.
- **Verschiedene Funktionen von AWS Systems Manager**
  - **Session Manager:** Remote-Zugriff auf EC2 ohne SSH.
  - **Automation:** Automatisierung wiederkehrender Aufgaben.
  - **Patch Manager:** Verwaltung von Software-Patches.
  - **Run Command:** Ausführung von Befehlen auf mehreren Instanzen.
  - **State Manager:** Verwaltung von Zustandsinformationen.
  - **Parameter Store:** Speicherung und Verwaltung von Konfigurationsdaten.
  - **OpsCenter:** Verwaltung von Betriebsereignissen.

#### Praxisbeispiel: Erstellen eines SSM Parameters

1. Gehe zur Systems Manager-Konsole.
2. Wähle Parameter Store im linken Menü.
4. Setze den Parameter `test` auf `MySecretValue`.
5. Diesen Parameter könnten wir jetzt in verschiedenen EC2 Instanzen verwenden.

### 7. AWS Trusted Advisor

- **Was ist der AWS Trusted Advisor?**
  - Ein Tool, das Empfehlungen zur Optimierung deiner AWS-Ressourcen gibt.
- **Möglichkeiten mit AWS Trusted Advisor**
  - Kostenoptimierung, Leistungssteigerung, Sicherheit und Fehlertoleranz.
  - Wo weicht dein Account von best practices ab?
