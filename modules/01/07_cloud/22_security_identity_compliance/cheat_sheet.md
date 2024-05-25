# AWS Cloud Practitioner Cheat Sheet

## Identitäts- und Zugriffsmanagement

### AWS Identity and Access Management (IAM)

- **Benutzer und Gruppen**: Erstellen und Verwalten von IAM-Benutzern und -Gruppen
- **Rollen und Richtlinien**: Erstellen und Anpassen von Berechtigungen
- **Multi-Faktor-Authentifizierung (MFA)**: Erhöhen der Sicherheit durch (Benutzername, Passwort, Gerät)
- **Preis**: Kostenlos. Zusätzliche Kosten können durch die Nutzung anderer AWS-Dienste anfallen.

### AWS IAM Identity Center (AWS Single Sign-On)

- **Zentralisierte Zugriffsverwaltung**: Verwaltung des Zugriffs auf mehrere AWS-Konten und -Ressourcen
- **Integration mit Verzeichnisdiensten**: Verbindung zu externen Verzeichnisdiensten wie Active Directory oder LDAP
- **Benutzererfahrung und Authentifizierung**: Benutzerfreundliche Anmeldung und Authentifizierungsprozesse
- **Preis**: Kostenlos. Zusätzliche Kosten können durch die Nutzung anderer AWS-Dienste anfallen.

### AWS Directory Service

- **Einführung in den Directory Service**: Verschiedene Verzeichnisoptionen (z.B. Simple AD, AD Connector, Microsoft AD)
- **Integration mit AWS-Ressourcen**: Verbinden von AWS-Ressourcen mit deinem Verzeichnis
- **Sicherheits- und Verwaltungsfunktionen**: Sicherheitsaspekte und Verwaltungsmöglichkeiten
- **Preis**: Abhängig von der gewählten Verzeichnisoption. Simple AD: $0.05 pro Stunde. AD Connector: $0.05 pro Stunde.

### Amazon Cognito

- **Benutzerpools und Identitätspools**: Verwaltung von Benutzern und Identitäten für deine Anwendungen
- **Sicherheitsfunktionen**: MFA, Kennwortrichtlinien, und Benutzerattributvalidierung
- **Anwendungsintegration**: Integration von Cognito in mobile und webbasierte Anwendungen
- **Preis**: Kostenlos bis zu 50.000 monatlich aktive Benutzer. Danach $0.0055 pro MAU.

## Zertifikats- und Schlüsselmanagement

### AWS Certificate Manager (ACM)

- **Zertifikatsverwaltung**: Erstellen und Verwalten von SSL/TLS-Zertifikaten
- **Automatische Erneuerung**: Automatisierung der Zertifikatserneuerung
- **Integration mit AWS-Diensten**: Verwendung von Zertifikaten mit ELB, CloudFront, etc.
- **Preis**: Kostenlose öffentliche Zertifikate. Private Zertifikate ab $0.75 pro Zertifikat pro Monat.

### AWS Key Management Service (KMS)

- **Grundlagen der Schlüsselverwaltung**: Erstellen, Verwalten und Verwenden kryptographischer Schlüssel
- **Verschlüsselung und Zugriffskontrolle**: Verwalten des Zugriffs auf Schlüssel und Datenverschlüsselung
- **Integration mit anderen AWS-Diensten**: Nutzung von KMS mit S3, EBS, RDS, etc.
- **Preis**: $1 pro verwalteter Schlüssel pro Monat. $0.03 pro 10.000 Anfragen.

### AWS CloudHSM

- **Schlüsselgenerierung und -verwaltung**: Sicheres Erstellen und Verwalten von kryptographischen Schlüsseln
- **Integration und Nutzung**: Nutzung von CloudHSM (Hardware Security Module) in deinen Anwendungen
- **Preis**: $1.60 pro HSM Stunde.

### AWS Secrets Manager

- **Verwalten von Geheimnissen**: Speichern und Abrufen von API-Schlüsseln, Passwörtern und anderen sensiblen Daten
- Wie ein Passwortmanager für deine Anwendungen
- **Automatische Rotation**: Automatisierung der Geheimnisrotation für verbesserte Sicherheit
- **Zugriffskontrolle**: Kontrollieren des Zugriffs auf Geheimnisse mit IAM-Richtlinien
- **Preis**: $0.40 pro Geheimnis pro Monat. $0.05 pro 10.000 API-Aufrufe.

## Sicherheitsüberwachung und -management

### Amazon GuardDuty

- **Bedrohungserkennung**: Erkennung von bösartigen Aktivitäten und Anomalien
- **Kontinuierliches Monitoring**: Permanente Überwachung deiner AWS-Konten und Workloads
- **Ereignisbehebung**: Integrationen zur Automatisierung der Reaktion auf Sicherheitsvorfälle
- **Preis**: Basierend auf der Anzahl der gescannten Events und der Menge der analysierten Daten. $4.00 pro Million Ereignisse.

### Amazon Macie

- **Datenerkennung und Klassifizierung**: Identifizierung und Schutz sensibler Daten in S3
- Personal Identifiable Information (PII) und andere sensible Daten
- **Machine Learning**: Nutzung von ML zur Erkennung von Datenmustern und Bedrohungen
- **Compliance-Berichte**: Erstellen von Berichten zur Datenkonformität
- **Preis**: $1.25 pro GB Daten gescannt.

### Amazon Inspector

- **Automatisierte Sicherheitsbewertung**: Scannen von EC2-Instanzen auf Schwachstellen
- **Bewertung von Best Practices**: Überprüfung der Einhaltung von Sicherheitsbest practices
- **Integrationen**: Integration mit anderen AWS-Sicherheitsdiensten für umfassenden Schutz
- **Preis**: $0.30 pro geschützte Instanz pro Monat.

### Amazon Detective

- **Sicherheitsuntersuchungen**: Untersuchung und Analyse von potenziellen Sicherheitsvorfällen
- **Datenvisualisierung**: Grafische Darstellung von Sicherheitsereignissen und deren Zusammenhang
- **Zusammenarbeit und Analyse**: Zusammenarbeit zwischen Sicherheitsteams zur Problemlösung
- **Preis**: Basierend auf der Menge der analysierten und gespeicherten Daten. $2 per GB.

## Netzwerksicherheit

### AWS Network Firewall

- **Firewall-Funktionalitäten**: Stateful Inspection, Intrusion Prevention und mehr
- Regelt den Verkehr der in und aus deinem VPC fließt
- **Regelbasierte Kontrolle**: Erstellen und Verwalten von Firewall-Regeln
- **Skalierbarkeit und Verfügbarkeit**: Hochverfügbarkeit und automatische Skalierung
- **Preis**: $0.395 pro Firewall pro Stunde. $0.065 pro GB verarbeiteter Datenverkehr.

### AWS Firewall Manager

- **Zentralisierte Richtlinienverwaltung**: Verwaltung von Sicherheitsrichtlinien über mehrere Konten
- **Compliance und Überwachung**: Einhaltung von Sicherheitsstandards und kontinuierliche Überwachung
- **Integration mit anderen AWS-Diensten**: Nutzung von Firewall Manager mit WAF, Shield und anderen
- **Preis**: $100 pro Verwaltungsrichtlinie pro Region pro Monat.

### AWS WAF (Web Application Firewall)

- **Schutz vor Webbedrohungen**: Abwehr von gängigen Webbedrohungen wie SQL Injection, XSS
- **Regelerstellung und -verwaltung**: Anpassen und Verwalten von WAF-Regeln
- **Echtzeitüberwachung**: Überwachen und Protokollieren des Webverkehrs in Echtzeit
- **Preis**: $5 pro Regelgruppe pro Monat. $0.60 pro Million Anfragen.

### AWS Shield

- **Denial of Service (DoS)**: Eine Person sendet viele Anfragen, um eine Website zu überlasten
- **Distributed Denial of Service (DDoS)**: Viele Personen / Maschinen senden viele Anfragen, um eine Website zu überlasten
- **Schutz vor DDoS-Angriffen**: Automatisierter Schutz vor DDoS-Angriffen
- **Schutzstufen**: Unterschiedliche Schutzebenen (Standard und Advanced)
- **Reaktionsunterstützung**: Unterstützung und Beratung durch das AWS DDoS Response Team (DRT)
- **Preis**: AWS Shield Standard: Kostenlos. AWS Shield Advanced: $3,000 pro Monat.

## Compliance und Governance

### AWS Artifact

- **Zugriff auf Compliance-Dokumente**: Abrufen von Compliance-Berichten und -Dokumenten
- **Sicherheits- und Compliance-Management**: Unterstützung bei der Einhaltung gesetzlicher Vorschriften
- **Einfache Navigation**: Benutzerfreundliche Oberfläche zur Dokumentensuche
- **Preis**: Kostenlos.

### AWS Audit Manager

- **Automatisierung von Audits**: Automatisiertes Erstellen von Auditberichten
- **Richtlinien-Frameworks**: Nutzung vordefinierter Frameworks für verschiedene Compliance-Standards
- **Kontinuierliche Überwachung**: Permanentes Monitoring und Bewertung der Compliance
- **Preis**: $0.20 pro bewertete Ressource pro Monat.

### AWS Security Hub

- **Zentralisierte Sicherheitsübersicht**: Zentralisierte Verwaltung und Überwachung von Sicherheitswarnungen
- **Compliance-Status**: Überwachung und Berichterstattung über den Compliance-Status
- **Integration und Automatisierung**: Integration mit anderen AWS-Sicherheitsdiensten und Automatisierung von Reaktionen
- **Preis**: $0.0010 pro gescanntem Konto pro Monat. $0.10 pro Standard-Compliance-Check.

### AWS Resource Access Manager (RAM)

- **Freigabe von Ressourcen**: Teilen von AWS-Ressourcen zwischen Konten
- **Zugriffskontrollen**: Feinabstimmung der Zugriffsrechte auf freigegebene Ressourcen
- **Sicherheits- und Governance-Aspekte**: Verwaltung und Überwachung der Ressourcennutzung und -freigabe
- **Preis**: Kostenlos.
