# Cheat Sheet: Management und Governance in AWS

## Einleitung

### Einführung ins Thema

- **Management in der Cloud:** Verwaltung von Cloud-Ressourcen.
- **Governance in der Cloud:** Sicherstellen von Sicherheit und Compliance.
- **Wichtigkeit:** Verhindert ineffiziente Ressourcennutzung und Sicherheitsrisiken, gewährleistet Compliance, verbessert Transparenz und Kontrolle.

## Management Tools

### 1. AWS CloudFormation

- **IaC:** Infrastruktur als Code definieren und bereitstellen.
- **AWS CloudFormation:** Templates zur Verwaltung von AWS-Ressourcen (JSON/YAML).
- **Vorteile:** Automatisierung, Konsistenz, Rollback bei Fehlern.
- **Stack:** Sammlung von AWS-Ressourcen, die als eine Einheit verwaltet werden.
- **Change Sets:** Vorschau von Änderungen, bevor sie angewendet werden.
- **Drift Detection:** Identifiziert Unterschiede zwischen der realen Infrastruktur und dem definierten Template.

### 2. AWS CloudTrail

- **Funktion:** Protokolliert API-Aufrufe im AWS-Konto.
- **Nutzung:** Standardmäßig aktiviert, einfach zu verwenden.
- **Vorteile:** Nachverfolgbarkeit, Unterstützung bei Sicherheitsvorfällen, Erfüllung von Compliance-Anforderungen.
- **Events:** API-Aufrufe und Änderungen an AWS-Ressourcen werden erfasst.
- **Trails:** Konfigurationen, um Events in S3-Buckets zu speichern und CloudWatch Logs zu senden.

### 3. AWS Compute Optimizer

- **Funktion:** Analyse der Ressourcennutzung und Optimierungsempfehlungen.
- **Vorteile:** Kostenoptimierung, Leistungsverbesserung.
- **Empfehlungen:** Anpassungen für EC2-Instances, Auto Scaling Groups, EBS-Volumes und Lambda-Funktionen.

### 4. AWS Organizations

- **Funktion:** Verwaltung mehrerer AWS-Konten.
- **Vorteile:** Trennung von Umgebungen, zentrale Verwaltung, konsolidierte Abrechnung.
- **SCPs:** Richtlinien auf Organisationsebene durchsetzen.
- **Organizational Units (OUs):** Gruppierung von Konten zur einfacheren Verwaltung.

## Governance Tools

### 1. Amazon CloudWatch

- **Funktion:** Überwachung und Analyse von Logs, Metriken, Alarme und Dashboards.
- **Vorteile:** Echtzeitüberwachung, automatische Benachrichtigungen.
- **Logs:** Sammlung und Analyse von Logdaten.
- **Metrics:** Leistungsdaten überwachen (z.B. CPU-Auslastung).
- **Alarms:** Benachrichtigungen bei Schwellenwertüberschreitungen.
- **Dashboards:** Visualisierung von Metriken und Logs.

### 2. AWS Config

- **Funktion:** Überwacht und bewertet Ressourcenkonfigurationen.
- **Vorteile:** Automatisierte Überwachung, Compliance-Berichterstattung.
- **Config Rules:** Überprüfen von Konformitätsanforderungen.
- **Configuration Recorder:** Erfasst Konfigurationsänderungen von Ressourcen.

### 3. AWS Control Tower

- **Funktion:** Einrichtung und Verwaltung einer sicheren Multi-Account-Umgebung.
- **Vorteile:** Automatisierte Einrichtung, Durchsetzung von Richtlinien.
- **Landing Zone:** Sichere Umgebung für neue AWS-Konten.
- **Guardrails:** Vordefinierte Richtlinien und Best Practices.

### 4. AWS Health Dashboard

- **Funktion:** Echtzeit-Informationen über Zustand der AWS-Ressourcen.
- **Vorteile:** Proaktive Benachrichtigungen, Überwachung von Service-Ausfällen.
- **Personal Health Dashboard:** Konto-spezifische Ereignisse.
- **Service Health Dashboard:** Status von AWS-Diensten.

### 5. AWS Service Catalog

- **Funktion:** Verwaltung und Bereitstellung genehmigter AWS-Dienste.
- **Vorteile:** Einfache Bereitstellung, Wiederverwendbarkeit.
- **Products:** Vordefinierte CloudFormation-Templates.
- **Portfolios:** Gruppierung von Produkten zur einfacheren Verwaltung.

### 6. AWS Systems Manager

- **Funktion:** Zentrales Management-Tool für AWS-Ressourcen.
- **Vorteile:** Vereinfachte Verwaltung, Automatisierung.
- **Session Manager:** Remote-Zugriff auf EC2 ohne SSH.
- **Automation:** Automatisierung wiederkehrender Aufgaben.
- **Patch Manager:** Verwaltung von Software-Patches.
- **Run Command:** Ausführung von Befehlen auf mehreren Instanzen.
- **State Manager:** Verwaltung von Zustandsinformationen.
- **Parameter Store:** Speicherung und Verwaltung von Konfigurationsdaten.
- **OpsCenter:** Verwaltung von Betriebsereignissen.

### 7. AWS Trusted Advisor

- **Funktion:** Empfehlungen zur Optimierung von AWS-Ressourcen.
- **Vorteile:** Kostenoptimierung, Leistungssteigerung, Sicherheit, Fehlertoleranz.
- **Best Practices:** Überprüfen der Sicherheits- und Leistungsstandards.
- **Advisor Checks:** Empfehlungen zu Kosten, Leistung, Sicherheit und Fehlertoleranz.
