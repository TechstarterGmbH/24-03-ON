# Einführung in Cloud Financial Management und End User Computing

## Cloud Financial Management

### Einführung in Cloud Financial Management

- **Definition**: Cloud Financial Management ist der Prozess, die finanziellen Aspekte von Cloud-Diensten zu verwalten und zu optimieren.
- **Ziel**: Kosteneffizienz und wirtschaftlicher Nutzen der Cloud-Dienste.
- **Metapher**: Stell dir Cloud Financial Management wie das Verwalten deines Haushaltsbudgets vor, nur dass du statt Miete und Strom für Servernutzung und Datenübertragung bezahlst.
- **Quellen**: [AWS Cloud Financial Management](https://aws.amazon.com/cloud-financial-management/)

### AWS Billing Conductor

### Überblick und Einführung in AWS Billing Conductor

- Stell dir vor du hast eine Firma mit verschiedenen getrennten Produkten (mit unterschiedlichen AWS Accounts)
- Dein Unternehmen eine AWS Organization und hat `Consolidated Billing` (Alle Kosten werden summiert) aktiviert
- Jedes Team will seine eigenen Kosten sehen und verwalten
- AWS Billing Conductor hilft dir dabei, die Kosten auf verschiedene Teams aufzuteilen und anschaulich zu machen

- **Definition**: AWS Billing Conductor hilft, komplexe Abrechnungen in der Cloud zu verwalten und zu optimieren.
- **Zielgruppe**: Besonders nützlich für große Organisationen mit komplexen Abrechnungsanforderungen.

#### Grundlagen von AWS Billing Conductor

- **Funktion**: AWS Billing Conductor ermöglicht dir, detaillierte Abrechnungsberichte zu erstellen und verschiedene Kostenstellen zu verwalten.
- **Vorteil**: Erhöhte Transparenz und Kontrolle über deine Cloud-Ausgaben.
- **Problemlösung**: Bietet eine zentrale Stelle zur Verwaltung und Zuordnung von Kosten, was die finanzielle Planung und Berichterstattung vereinfacht.
- **Preisstruktur**: Die Kosten für den AWS Billing Conductor hängen von der Anzahl der verwalteten Konten und der Komplexität der Abrechnungen ab.
- **Quellen**: [AWS Billing Conductor](https://aws.amazon.com/billing-conductor/)

### AWS Budgets

### Einführung in AWS Budgets

- **Definition**: AWS Budgets ist ein Tool zur Überwachung und Verwaltung deiner Cloud-Ausgaben und -Nutzung.
- **Zweck**: Hilft dir, Kosten im Griff zu behalten und unerwartete Ausgaben zu vermeiden.
- **Quellen**: [AWS Budgets](https://aws.amazon.com/aws-cost-management/aws-budgets/)

#### Verwendung von AWS Budgets

- **Erstellen von Budgets**: Du kannst Budgets basierend auf verschiedenen Kriterien wie Service, Kostenstelle oder Zeitraum erstellen.
- **Benachrichtigungen**: Automatische Benachrichtigungen, wenn du bestimmte Schwellenwerte erreichst.
- **Dashboards**: Benutzerfreundliche Dashboards zur Visualisierung und Verwaltung deiner Budgets.

#### Vorteile von AWS Budgets

- **Kostenkontrolle**: Verhindert Überschreitungen und fördert die Einhaltung deines Finanzplans.
- **Einfachheit**: Intuitive Oberfläche und einfache Einrichtung.
- **Proaktive Verwaltung**: Frühwarnsysteme, um rechtzeitig Maßnahmen zu ergreifen.
- **Preisstruktur**: AWS Budgets ist kostenlos für die Erstellung von zwei aktiven Budgets, zusätzliche Budgets sind kostenpflichtig.

#### Praktische Anwendung von AWS Budgets

- Öffne die AWS Management Console und navigiere zum `Billing and Cost Management` -> `Budgets`.
- Erstelle ein neues Budget `Create budget` und wähle die gewünschten Kriterien aus.
  - `Use a template` für vorgefertigte Budgets
  - `Monthly cost budget` für monatliche Budgets
  - `Budget name` und `Budget amount` festlegen
  - E-Mail-Benachrichtigungen aktivieren
- `Create` klicken, um das Budget zu erstellen und zu überwachen.

### AWS Cost and Usage Report

- Willst du detaillierte Einblicke in deine AWS-Kosten und -Nutzung erhalten?
- Oder musst von deinem Unternehmen regelmäßige Berichte über die Cloud-Ausgaben erstellen?
- Dann ist der AWS Cost and Usage Report das richtige Tool für dich!

### Einführung in AWS Cost and Usage Report

- **Definition**: Ein detaillierter Bericht, der alle deine AWS-Nutzungs- und Kosteninformationen enthält.
- **Zweck**: Umfassende Analyse deiner Cloud-Ausgaben.

#### Vorteile von AWS Cost and Usage Report

- **Transparenz**: Vollständiger Überblick über alle Kosten und Nutzungsmuster.
- **Analyse**: Hilft bei der Identifizierung von Kostensenkungspotenzialen.
- **Detailliert**: Liefert minutengenaue Nutzungsdaten und Kostenzusammenfassungen.
- **Preisstruktur**: AWS Cost and Usage Reports sind kostenlos verfügbar.

#### Praktische Anwendung von AWS Cost and Usage Report

- Erstelle ein S3 Bucket, um den Bericht zu speichern. [Link](https://docs.aws.amazon.com/cur/latest/userguide/cur-s3.html)
- Konfiguriere den Bericht in der AWS Management Console unter `Billing and Cost Management` -> `Cost and Usage Reports`. [Link](https://docs.aws.amazon.com/cur/latest/userguide/cur-create.html)

### AWS Cost Explorer

### Einführung in AWS Cost Explorer

- **Definition**: Ein Tool zur Visualisierung und Analyse deiner AWS-Kosten und -Nutzung.
- **Zweck**: Erleichtert die Identifizierung und Verwaltung von Kostentreibern.
- **Quellen**: [AWS Cost Explorer](https://aws.amazon.com/aws-cost-management/aws-cost-explorer/)

#### Verwendung von AWS Cost Explorer

- **Dashboards**: Interaktive Dashboards zur Visualisierung von Kosten- und Nutzungsdaten.
- **Filter**: Nutze verschiedene Filteroptionen, um spezifische Daten zu analysieren.
- **Berichte**: Erstelle benutzerdefinierte Berichte und exportiere Daten für detaillierte Analysen.

#### Vorteile von AWS Cost Explorer

- **Benutzerfreundlichkeit**: Intuitive Benutzeroberfläche für einfache Navigation und Analyse.
- **Effizienz**: Schnelle Identifizierung von Kostensenkungspotenzialen.
- **Echtzeit-Daten**: Zugriff auf aktuelle Daten für präzise Entscheidungen.
- **Preisstruktur**: AWS Cost Explorer ist kostenlos verfügbar.

#### Praktische Anwendung von AWS Cost Explorer

- In der AWS Konsole navigiere zu `Billing and Cost Management` -> `Cost Explorer`.
- An der Seite kannst du die AWS Kosten nach bestimmten Resourcen und Accounts filtern.
- Unter dem Punkt `Cost and Usage breakdown` kannst du den Report als CSV herunterladen.

### AWS Marketplace

### Einführung in AWS Marketplace

- **Definition**: Ein digitaler Katalog mit Tausenden von Software-Angeboten, die auf AWS ausgeführt werden können.
- **Zweck**: Erleichtert das Finden, Testen und Kaufen von Softwarelösungen.

#### Verwendung von AWS Marketplace

- **Suchen und Filtern**: Finde die passende Software für deine Bedürfnisse durch umfangreiche Such- und Filterfunktionen.
- **Abonnement**: Schließe Abonnements für Softwarelösungen direkt über den Marketplace ab.
- **Testversionen**: Nutze kostenlose Testversionen, um Software vor dem Kauf auszuprobieren.

#### Vorteile von AWS Marketplace

- **Vielfalt**: Große Auswahl an Software von verschiedenen Anbietern.
- **Bequemlichkeit**: Einfache Integration und Abrechnung über AWS.
- **Sicherheit**: Von AWS geprüfte Softwarelösungen für zusätzliche Sicherheit.
- **Preisstruktur**: Die Preisstruktur variiert je nach Anbieter und Softwarelösung, es gibt sowohl kostenlose als auch kostenpflichtige Angebote.

## End User Computing

### Einführung in End User Computing

- **Definition**: Bereitstellung von Desktops und Anwendungen für Endbenutzer in der Cloud.
- **Zweck**: Ermöglicht den sicheren und skalierbaren Zugriff auf Unternehmensressourcen.

### Verständnis von End User Computing

- **Flexibilität**: Benutzer können von überall und jedem Gerät aus auf ihre Arbeitsumgebung zugreifen.
- **Sicherheit**: Zentrale Verwaltung und Kontrolle der Benutzerumgebungen.
- **Kosteneffizienz**: Reduziert die Notwendigkeit für teure Hardware und Wartung.
- **Produktivität**: Verbesserte Produktivität durch sofortigen Zugriff auf benötigte Anwendungen.

### Amazon AppStream 2.0

### Einführung in Amazon AppStream 2.0

- **Definition**: Ein vollständig verwalteter Anwendungs-Streaming-Dienst, der es Benutzern ermöglicht, auf Desktop-Anwendungen über einen Webbrowser zuzugreifen.
- **Zweck**: Erleichtert den sicheren und skalierbaren Zugriff auf Anwendungen.

#### Verwendung von Amazon AppStream 2.0

- **Einrichtung**: Konfiguriere und starte Streaming-Sitzungen für deine Anwendungen.
- **Integration**: Integriere mit bestehenden Authentifizierungs- und Autorisierungssystemen.
- **Verwaltung**: Verwalte Benutzerzugriffe und Anwendungsversionen zentral.

#### Vorteile von Amazon AppStream 2.0

- **Skalierbarkeit**: Dynamische Skalierung basierend auf der Nachfrage.
- **Kostenkontrolle**: Zahle nur für die tatsächlich genutzte Rechenleistung.
- **Flexibilität**: Unterstützt eine Vielzahl von Anwendungen und Betriebssystemen.
- **Preisstruktur**: Die Kosten richten sich nach der genutzten Rechenleistung und Speicherplatz, sowie nach der Anzahl der gleichzeitigen Sitzungen.

### Amazon WorkSpaces

### Einführung in Amazon WorkSpaces

- **Definition**: Ein verwalteter, sicherer Desktop-as-a-Service (DaaS)-Lösung.
- **Zweck**: Bietet einen cloudbasierten Desktop, auf den Benutzer jederzeit und überall zugreifen können.

#### Verwendung von Amazon WorkSpaces

- **Bereitstellung**

: Erstelle und verwalte virtuelle Desktops für deine Benutzer.

- **Verwaltung**: Nutze zentrale Verwaltungstools zur Überwachung und Wartung.
- **Anpassung**: Passe die Desktop-Umgebungen an die spezifischen Anforderungen deiner Benutzer an.

#### Vorteile von Amazon WorkSpaces

- **Sicherheit**: Daten bleiben sicher in der AWS-Cloud.
- **Flexibilität**: Unterstützung für verschiedene Gerätetypen und Betriebssysteme.
- **Produktivität**: Sofortiger Zugriff auf Arbeitsumgebungen von überall.
- **Preisstruktur**: Bezahle nur für die genutzten WorkSpaces, verschiedene Preismodelle basierend auf Nutzung und Abonnement.

### Amazon WorkSpaces Web

### Einführung in Amazon WorkSpaces Web

- **Definition**: Ein vollständig verwalteter, sicherer Webbrowser für den Zugriff auf interne Webanwendungen.
- **Zweck**: Ermöglicht sicheren Zugriff auf Webressourcen ohne lokale Datenablage.
- **Quellen**: [Amazon WorkSpaces Web](https://aws.amazon.com/workspaces/web/)

#### Verwendung von Amazon WorkSpaces Web

- **Zugang**: Zugriff auf interne und externe Webanwendungen über einen sicheren Browser.
- **Konfiguration**: Zentral verwaltete Browserkonfigurationen und -richtlinien.
- **Sicherheit**: Alle Daten bleiben im Cloud-Browser, wodurch das Risiko von Datenlecks reduziert wird.

#### Vorteile von Amazon WorkSpaces Web

- **Sicherheit**: Schutz vor Datenverlust und Malware durch zentrale Verwaltung.
- **Flexibilität**: Zugriff von jedem Gerät ohne Installation von Software.
- **Kosteneffizienz**: Reduziert die Notwendigkeit für teure Geräte und Wartung.
- **Preisstruktur**: Die Kosten basieren auf der Anzahl der aktiven Benutzer und der Dauer der Sitzungen.
