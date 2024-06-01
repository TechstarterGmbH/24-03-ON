# Gruppenaufgabe

## Szenario

- Stell dir vor, unser Techstarter Kurs ist ein Startup und wir beraten große Unternehmen die in die Cloud migrieren
- Wir haben einen Kunden, ein Start-Up Unternehmen, das eine Webanwendung entwickelt hat, die in der Cloud gehostet werden soll
- Da es bis jetzt noch keine Cloud-Infrastruktur gibt, müssen wir eine neue Infrastruktur für den Kunden aufbauen (**Green-Field Projekt**)

### Das Start-Up Unternehmen

- Das Start-Up Unternehmen hat das Ziel eine Mobile Anwendung zu entwickeln
- Diese Webanwendung soll `Cloud-Native` sein (d.h. von Anfang an für die Cloud gedacht)
- In einem ersten wurde bereits beschlossen, dass die Webanwendung auf `EC2` Instanzen in einer **AutoScaling Group** und einem **Application Load Balancer (ALB)** gehostet werden soll.

### Ziel

- Ziel soll es sein die gesamte Infrastruktur für das Start-Up Unternehmen zu planen
- Am Ende soll ein **Infrastruktur Diagramm** erstellt werden, das die gesamte Infrastruktur zeigt
- **Jede Gruppe soll am Ende eine Präsentation halten, in der die Infrastruktur vorgestellt wird**
  - Jeder der Gruppenmitglieder soll einen Teil der Präsentation halten
- **Alle Services die euch zugewiesen wurden, sollten in der Präsentation kurz erwähnt werden.**
  - Wieso habt ihr diesen Service gewählt/nicht gewählt?

## Gruppen

### Developer

- Ihr seid für die Entwicklung der Webanwendung zuständig
- Somit schreibt ihr den Quellcode für die Webanwendung
- **Da ihr ein Start-Up Unternehmen seid, solltet darauf geachtet werden schon bestehende Lösungen zu nutzen!**
  - Man muss nicht immer das Rad neu erfinden
  - Hier gibt es von AWS seiten mehrere Services die euch helfen können (Tipp)

#### Developer Services

- AWS AppConfig
- AWS CLI
- AWS Management Console
- AWS Cloud9
- AWS CloudShell
- AWS Amplify
- AWS AppSync
- AWS Device Farm

### Operations

- Ihr seid für dafür verantwortlich, dass alles immer richtig läuft
-

#### Operations Services

- AWS Auto Scaling
- AWS Control Tower
- AWS Health Dashboard
- AWS CloudFormation
- AWS Organizations
- AWS Systems Manager
- AWS Well-Architected Tool
- AWS Service Catalog
- AWS Resource Groups and Tag Editor

### DevOps

- DevOps ist nicht nur ein Trend, sondern ein echter Job!
- Ihr seid die Schnittstelle zwischen Operations und Development
- Ihr sorgt dafür, dass die Webanwendung immer verfügbar ist und die Entwickler sich auf das Schreiben von Code konzentrieren können
- **Ihr seid für die Automatisierung der Prozesse zuständig!**
- Wie könnt ihr die Prozesse automatisieren?
- Was soll passieren wenn der Code in das Repository gepusht wird?

#### DevOps Services

- AWS CodeBuild
- AWS CodeCommit
- AWS CodeDeploy
- AWS CodePipeline
- AWS CodeArtifact
- AWS CodeStar
- AWS X-Ray

### Security and Monitoring

- Ihr seid für die Sicherheit der Webanwendung zuständig
- Außerdem stellt ihr sicher, dass sich an Compliance Regeln gehalten wird
- Ihr sorgt dafür, dass die Webanwendung immer überwacht wird
- Falls es irgendwo Probleme gibt, solltet ihr sofort informiert werden

#### Security and Monitoring Services

- AWS CloudTrail
- AWS IAM
- AWS VPC
- AWS Config
- Amazon CloudWatch
- AWS Compute Optimizer
- AWS Launch Wizard
- AWS License Manager
- AWS Trusted Advisor
