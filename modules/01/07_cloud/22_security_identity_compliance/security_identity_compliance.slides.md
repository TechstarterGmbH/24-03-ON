---

class: invert

---

# Einführung in AWS Security, Identity und Compliance

---

![img](https://i.redd.it/ekpkjd0jiv221.jpg)

---

# Identitäts- und Zugriffsmanagement

## AWS Identity and Access Management (IAM)

- **Grundlagen von IAM**: Definition und Konzepte
- **Benutzer und Gruppen**: Erstellen und Verwalten von IAM-Benutzern und -Gruppen
- **Rollen und Richtlinien**: Erstellen von Rollen und Anpassen von Berechtigungen
- **Multi-Faktor-Authentifizierung (MFA)**: Erhöhen der Sicherheit durch MFA
- **Preis**: Kostenlos. Zusätzliche Kosten können durch die Nutzung anderer AWS-Dienste anfallen.

---

## AWS IAM Identity Center (AWS Single Sign-On)

- Stell dir vor, du hast eine Unternehmensumgebung mit mehreren AWS-Konten und Benutzern. Wie verwaltest du die Zugriffe auf diese Konten und Ressourcen?
- Hier kommt AWS Single Sign-On ins Spiel. Es ermöglicht dir, den Zugriff auf mehrere AWS-Konten und -Ressourcen zentral zu verwalten.
- Die Nutzer brauchen hierfür keinen neuen Account, sondern können sich mit ihren bestehenden Unternehmensanmeldedaten anmelden (z.B. Google Konto, Microsoft Account etc.)
- Nutzen wir in der Sandbox wenn wir uns Anmelden!

---

### AWS IAM Identity Center - Funktionen

- **Zentralisierte Zugriffsverwaltung**: Verwaltung des Zugriffs auf mehrere AWS-Konten und -Ressourcen
- **Integration mit Verzeichnisdiensten**: Verbindung zu externen Verzeichnisdiensten wie Active Directory oder Google Workspace
- **Benutzererfahrung und Authentifizierung**: Benutzerfreundliche Anmeldung und Authentifizierungsprozesse
- **Preis**: Kostenlos. Zusätzliche Kosten können durch die Nutzung anderer AWS-Dienste anfallen.

---

## AWS Directory Service

- Dein Unternehmen hat 100 Mitarbeiter, welche in verschiedenen Abteilung sind (also verschiedene Rechte haben sollen) und auch eventuell diverse Geräte verwenden
- Wie verwaltest du die Zugriffe auf die Ressourcen in deinem Unternehmen?
- Hier kommt ein **Verzeichnisdienst** ins Spiel, der die **Identitäten und Zugriffe zentral verwaltet**
- AWS Directory Service bietet verschiedene Optionen für die Verwaltung von Verzeichnissen in der Cloud
- Der traditionelle Ansatz ist die Verwendung von **Active Directory (AD)**, was eine bewährte Microsoft Methode ist (kann aber auch Linux Geräte verwalten)
- AWS bietet mit dem `Directory Service` eine Möglichkeit, Active Directory in der Cloud zu nutzen

---

### AWS Directory Service - Funktionen

- **Einführung in den Directory Service**: Verschiedene Verzeichnisoptionen (z.B. Simple AD, AD Connector, Microsoft AD)
- **Integration mit AWS-Ressourcen**: Verbinden von AWS-Ressourcen mit Ihrem Verzeichnis
- **Sicherheits- und Verwaltungsfunktionen**: Sicherheitsaspekte und Verwaltungsmöglichkeiten
- **Preis**: Abhängig von der gewählten Verzeichnisoption. Simple AD: $0.05 pro Stunde. AD Connector: $0.05 pro Stunde.

---

## Amazon Cognito

- Du sollst fü dein Unternehmen eine Login-Funktion für deine Anwendung entwickeln
- Wie kannst du die Authentifizierung und Autorisierung der Benutzer sicherstellen?
- Wie stellst du sicher, dass die Passwörter sicher gespeichert und übertragen werden?
- Wie stellst du sicher, dass keine Datenlecks auftreten?
- Da das Thema Auth ein sehr komplexes Thema ist, bietet AWS mit Amazon Cognito eine Lösung an
- Amazon Cognito ist ein vollständig verwalteter Dienst, der die Authentifizierung, Autorisierung und Benutzerverwaltung für deine Anwendung übernimmt
- Du kannst also damit eine Login Maske erstellen und die User werden in AWS Cognito gespeichert

---

### Amazon Cognito - Funktionen

- **Benutzerpools und Identitätspools**: Verwaltung von Benutzern und Identitäten
- **Sicherheitsfunktionen**: MFA, Kennwortrichtlinien, und Benutzerattributvalidierung
- **Anwendungsintegration**: Integration von Cognito in mobile und webbasierte Anwendungen und vielen AWS Services (API Gateway)
- **Preis**: Kostenlos bis zu 50.000 monatlich aktive Benutzer. Danach $0.0055 pro MAU.

---

# Zertifikats- und Schlüsselmanagement

---

## AWS Certificate Manager (ACM)

---

### Was sind SSL/TLS-Zertifikate und warum sind sie wichtig?

- Hast du schonmal in dem Browser gesehen, dass die URL mit `https` beginnt?
- Das `s` steht für `secure` und bedeutet, dass die Verbindung zwischen dem Browser und dem Server verschlüsselt ist
- Diese Verschlüsselung wird durch SSL/TLS-Zertifikate ermöglicht
- Ein Zertifikat kannst du dir wie eine digitale Unterschrift vorstellen, die die Identität des Servers bestätigt

---

### Was macht der ACM?

- Da diese SSL/TLS Zertifikate sehr wichtig sind, bietet AWS mit dem `AWS Certificate Manager` einen Dienst an, der die Verwaltung vereinfacht
- Mit dem ACM kannst du SSL/TLS-Zertifikate für deine Anwendungen erstellen und verwalten
- Diese kannst du zum Beispiel deinem Load Balancer oder CloudFront Distribution hinzufügen

---

### AWS Certificate Manager - Funktionen

- **Zertifikatsverwaltung**: Erstellen und Verwalten von SSL/TLS-Zertifikaten
- **Automatische Erneuerung**: Automatisierung der Zertifikatserneuerung
- **Integration mit AWS-Diensten**: Verwendung von Zertifikaten mit ELB, CloudFront, etc.
- **Preis**: Kostenlose öffentliche Zertifikate. Private Zertifikate ab $0.75 pro Zertifikat pro Monat.

---

## AWS Key Management Service (KMS)

- Du willst gerne die "Festplatte" deiner EC2 Instanz verschlüsseln? Oder zum Beispiel die Daten in deiner S3 Bucket?
- Hierfür nutzt man normalerweise einen Schlüssel, der die Daten verschlüsselt und entschlüsselt
- Wo speicherst du diesen Schlüssel?
  - Auf eine Serviette geschrieben?
  - In einem Safe?
  - Oder in einem sicheren Schlüsselverwaltungsdienst wie dem AWS Key Management Service (KMS)?
- AWS KMS ist ein verwalteter Dienst, der die Erstellung, Verwaltung und Verwendung von kryptographischen Schlüsseln ermöglicht

---

### AWS Key Management Service - Funktionen

- **Grundlagen der Schlüsselverwaltung**: Erstellen, Verwalten und Verwenden kryptographischer Schlüssel
- **Verschlüsselung und Zugriffskontrolle**: Verwalten des Zugriffs auf Schlüssel und Datenverschlüsselung
- **Integration mit anderen AWS-Diensten**: Nutzung von KMS mit S3, EBS, RDS, etc.
- **Preis**: $1 pro verwalteter Schlüssel pro Monat. $0.03 pro 10.000 Anfragen.

---

## AWS CloudHSM

- Deine Schlüssel sind dir sehr wichtig und du möchtest sie in einem Hardware-Sicherheitsmodul (HSM) speichern?
- Ein HSM oder **Harwdware Security Module** ist ein physisches Gerät, was speziell für die sichere Speicherung von Schlüsseln entwickelt wurde
- AWS CloudHSM ist ein verwalteter Dienst, der die Verwendung von HSMs in der Cloud ermöglicht
- Du kannst also deine Schlüssel in einem HSM speichern und sicherstellen, dass sie sicher sind

---

- **Schlüsselgenerierung und -verwaltung**: Sicheres Erstellen und Verwalten von kryptographischen Schlüsseln
- **Integration und Nutzung**: Nutzung von CloudHSM in Ihren Anwendungen
- **Preis**: $1.60 pro HSM Stunde.

---

## AWS Secrets Manager

- Du hast Secrets (engl. Geheimnisse) wie API-Schlüssel, Passwörter oder andere sensible Daten, die du sicher speichern möchtest?
- Stell dir vor, du teilst dir mit deiner Familie einen Passwort Manager, in dem du alle Passwörter für Netflix, Amazon, etc. speicherst
- Wenn du jetzt also das Passwort für Netflix änderst, musst du nicht jedem einzelnen in deiner Familie das neue Passwort mitteilen. Du kannst einfach das Passwort im Passwort Manager ändern
- Genau das gleiche gilt zum Beispiel für mehrere EC2 Instanzen, die alle das gleiche Passwort für die Datenbank benötigen
- AWS Secrets Manager ist ein verwalteter Dienst, der die sichere Speicherung und Verwaltung von Geheimnissen ermöglicht

---

### AWS Secrets Manager - Funktionen

- **Verwalten von Geheimnissen**: Speichern und Abrufen von API-Schlüsseln, Passwörtern und anderen sensiblen Daten
- **Automatische Rotation**: Automatisierung der Geheimnisrotation für verbesserte Sicherheit
- **Zugriffskontrolle**: Kontrollieren des Zugriffs auf Geheimnisse mit IAM-Richtlinien
- **Preis**: $0.40 pro Geheimnis pro Monat. $0.05 pro 10.000 API-Aufrufe.

---

# Sicherheitsüberwachung und -management

---

## Amazon GuardDuty

- Dein Unternehmen ist also in die Cloud umgezogen
- Wie kannst du ...
  - deine Infrasruktur permanent überwachen?
  - Bedrohungen (Threads) und Anomalien / verdächtiges Verhalten erkennen?
  - direkt Benachrichtigt werden, wenn etwas passiert?
- Amazon GuardDuty ist ein verwalteter Dienst, der die permanente Überwachung deiner AWS-Konten und -Workloads ermöglicht
- Er erkennt Bedrohungen und Anomalien und benachrichtigt dich darüber

---

- **Bedrohungserkennung**: Erkennung von bösartigen Aktivitäten und Anomalien
- **Kontinuierliches Monitoring**: Permanente Überwachung Ihrer AWS-Konten und Workloads
- **Ereignisbehebung**: Integrationen zur Automatisierung der Reaktion auf Sicherheitsvorfälle
- **Preis**: Basierend auf der Anzahl der gescannten Events und der Menge der analysierten Daten. $4.00 pro Million Ereignisse.

---

## Amazon Macie

---

### Was ist PII?

- Nicht 3.141...

---

### Personlich Identifizierbare Informationen (PII)

- PII steht für **Personlich Identifizierbare Informationen**
- Das sind Informationen, die dazu verwendet werden können, eine Person zu identifizieren
- Dazu gehören zum Beispiel:
  - Name
  - Adresse
  - Telefonnummer
  - E-Mail-Adresse
  - Sozialversicherungsnummer
  - Kreditkartennummer
- **PII ist sehr sensibel und sollte daher besonders geschützt werden**

---

### Was ist Amazon Macie?

- Wie kannst du sicherstellen, dass du keine PII in deinen S3 Buckets hast?
- Stell dir vor, du hast einen Online Shop mit einem Kundenservice.
  - Jeder Anruf wird aufgezeichnet und mittels Amazon Transcribe in Text umgewandelt
  - Dieser Text wird dann in einer S3 Bucket gespeichert
  - Wie kannst du sicherstellen, dass keine PII in diesen Texten enthalten ist?
- Amazon Macie ist ein verwalteter Dienst, der die Identifizierung und den Schutz von sensiblen Daten in S3 ermöglicht
- Er erkennt automatisch PII und benachrichtigt dich darüber

---

### Amazon Macie - Funktionen

- **Datenerkennung und Klassifizierung**: Identifizierung und Schutz sensibler Daten in S3
- **Machine Learning**: Nutzung von ML zur Erkennung von Datenmustern und Bedrohungen
- **Compliance-Berichte**: Erstellen von Berichten zur Datenkonformität
- **Preis**: $1.25 pro GB Daten gescannt.

---

## Amazon Inspector

- Du hast eine Anwendung entwickelt und möchtest sicherstellen, dass sie sicher ist?
- Der Amazon Inspector ist ein verwalteter Dienst, der deine Anwendung auf Schwachstellen und Sicherheitslücken überprüft
- Es werden folgende Services unterstützt:
  - EC2
  - Lambda
  - Container (ECS, EKS, ECR)

---

### Amazon Inspector - Funktionen

- **Automatisierte Sicherheitsbewertung**: Scannen von EC2-Instanzen auf Schwachstellen
- **Bewertung von Best Practices**: Überprüfung der Einhaltung von Sicherheitsbest practices
- **Integrationen**: Integration mit anderen AWS-Sicherheitsdiensten für umfassenden Schutz
- **Preis**: $0.30 pro geschützte Instanz pro Monat.

---

## Amazon Detective

- Amazon Detective ist ein weiterer Dienst, der verschiedene Dienste wie Security Hub, GuardDuty und CloudTrail integriert
- Der Amazon Detective schaut sich deine gesamte AWS Umgebung an und analysiert die Logs und Metriken
  - Cloud Trail Logs
  - VPC Flow Logs
  - EKS Audit Logs
  - GuardDuty Findings
  - Security Hub Findings
- Er erstellt dann eine Visualisierung, die dir zeigt, wie die verschiedenen Dienste zusammenhängen

---

### Amazon Detective - Funktionen

- **Sicherheitsuntersuchungen**: Untersuchung und Analyse von potenziellen Sicherheitsvorfällen
- **Datenvisualisierung**: Grafische Darstellung von Sicherheitsereignissen und deren Zusammenhang
- **Zusammenarbeit und Analyse**: Zusammenarbeit zwischen Sicherheitsteams zur Problemlösung
- **Preis**: Basierend auf der Menge der analysierten und gespeicherten Daten. $2 per GB.

---

# Netzwerksicherheit

---

## AWS Network Firewall

---

### Was ist eine Firewall?

- Stell dir vor, du fliegst in den Urlaub, dann kannst du dir die Sicherheitskontrollen am Flughafen wie eine Firewall vorstellen
- Jeder Passagier wird überprüft und nur diejenigen, die die Sicherheitskontrollen bestehen, dürfen ins Flugzeug
- Die Mitarbeiter am Flughafen haben eine Liste von Regeln, die bestimmen, wer durchgelassen wird und wer nicht
- Eine Firewall ist meistens die äußere Verteidigungslinie deines Netzwerks und bestimmt, welcher Datenverkehr durchgelassen wird und welcher nicht
- Wenn du also eine Firewall konfigurierst, legst du fest, welche Regeln für deinen Datenverkehr gelten
- Zum Beispiel: Blockiere alle Anfragen von IP-Adresse X

---

### Was ist AWS Network Firewall?

- AWS Network Firewall ist ein verwalteter Dienst, der so eine Firewall am Rand deines VPCs bereitstellt
- Wenn der Traffic in dein VPC kommt, wird er durch die Firewall geleitet und geprüft
- Du kannst dann Regeln festlegen, die bestimmen, welcher Traffic durchgelassen wird und welcher nicht
- Beispiele:
  - Alle IP-Adressen aus Amerika blockieren
  - Alle Anfragen die nicht verschlüsselt sind blockieren

---

### AWS Network Firewall - Funktionen

- **Firewall-Funktionalitäten**: Stateful Inspection, Intrusion Prevention und mehr
- **Regelbasierte Kontrolle**: Erstellen und Verwalten von Firewall-Regeln
- **Skalierbarkeit und Verfügbarkeit**: Hochverfügbarkeit und automatische Skalierung
- **Preis**: $0.395 pro Firewall pro Stunde. $0.065 pro GB verarbeiteter Datenverkehr.

---

## AWS Firewall Manager

- Stell dir vor du hast ein Unternehmen mit 20 verschiedenen AWS Accounts (Production, Development, Testing, Audit, etc.)
- Wie stellst du sicher, dass alle Accounts den Unternehmensrichtlinien entsprechen? (Firewall Regeln)
- AWS Firewall Manager ist ein verwalteter Dienst, der die zentrale Verwaltung von Firewalls und Sicherheitsrichtlinien über mehrere AWS-Konten ermöglicht

---

### AWS Firewall Manager - Funktionen

- **Zentralisierte Richtlinienverwaltung**: Verwaltung von Sicherheitsrichtlinien über mehrere Konten
- **Compliance und Überwachung**: Einhaltung von Sicherheitsstandards und kontinuierliche Überwachung
- **Integration mit anderen AWS-Diensten**: Nutzung von Firewall Manager mit WAF, Shield und anderen
- **Preis**: $100 pro Verwaltungsrichtlinie pro Region pro Monat.

---

## AWS WAF (Web Application Firewall)

- Im Gegensatz zu der **Network Firewall, die den Traffic am Rand deines VPCs überprüft**, überprüft die **Web Application Firewall den Traffic, der in deine Anwendung kommt**
- **Sie ist speziell für Webanwendungen entwickelt**
- Du kannst Regeln erstellen, die bestimmen, welcher Traffic durchgelassen wird und welcher nicht
- Es gibt aber schon viele vordefinierte Regeln, die du einfach aktivieren kannst

---

- **Schutz vor Webbedrohungen**: Abwehr von gängigen Webbedrohungen wie SQL Injection, XSS
- **Regelerstellung und -verwaltung**: Anpassen und Verwalten von WAF-Regeln
- **Echtzeitüberwachung**: Überwachen und Protokollieren des Webverkehrs in Echtzeit
- **Preis**: $5 pro Regelgruppe pro Monat. $0.60 pro Million Anfragen.

---

## AWS Shield

---

### Was ist ein Denial of Service (DoS) Angriff?

- Stell dir vor, du bist ein Restaurantbesitzer und hast nur 10 Tische
- Ein DoS-Angriff wäre, wenn jemand 1000 Reservierungen für diese 10 Tische macht
- Dein Restaurant würde dann den ganzen Tag ausgebucht sein und du könntest keine echten Kunden mehr bedienen
- Ein DoS-Angriff ist also ein Angriff, bei dem ein Angreifer versucht, eine Ressource (z.B. eine Website) unzugänglich zu machen, indem er sie mit Anfragen überfluteto

---

### Was ist ein Distributed Denial of Service (DDoS) Angriff?

- Ein normaler DoS-Angriff wird von einem einzigen Angreifer ausgeführt
- Das hat den Nachteil, dass der Angreifer leicht identifiziert und blockiert werden kann
- Aber stell dir vor der Angreifer hat 1000 Freunde, die ihm helfen
- Das wäre ein Distributed (engl Verteilt) Denial of Service (DDoS) Angriff und ist viel schwieriger zu erkennen und zu blockieren
- Woher weißt du, welche Anfragen echt sind und welche nicht?

---

### Was ist AWS Shield?

- AWS Shield ist ein verwalteter Dienst, der den Schutz vor DDoS-Angriffen ermöglicht
- Es gibt zwei Versionen:
  - **AWS Shield Standard**: Kostenlos und automatisierter Schutz vor DDoS-Angriffen
  - **AWS Shield Advanced**: $3,000 pro Monat und bietet zusätzliche Schutzfunktionen und Unterstützung
    - DDoS Response Team (DRT) Unterstützung
    - Kostenrückerstattung bei DDoS-Angriffen (für AWS-Ressourcen)

---

### AWS Shield - Funktionen

- **Schutz vor DDoS-Angriffen**: Automatisierter Schutz vor DDoS-Angriffen
- **Schutzstufen**: Unterschiedliche Schutzebenen (Standard und Advanced)
- **Reaktionsunterstützung**: Unterstützung und Beratung durch das AWS DDoS Response Team (DRT)
- **Preis**: AWS Shield Standard: Kostenlos. AWS Shield Advanced: $3,000 pro Monat.

---

# Compliance und Governance

---

## AWS Artifact

- Langweilige Compliance Dokumente lesen ist dein Ding? Dann ist AWS Artifact genau das Richtige für dich!
- **Zugriff auf Compliance-Dokumente**: Abrufen von Compliance-Berichten und -Dokumenten
- **Sicherheits- und Compliance-Management**: Unterstützung bei der Einhaltung gesetzlicher Vorschriften
- **Einfache Navigation**: Benutzerfreundliche Oberfläche zur Dokumentensuche
- **Preis**: Kostenlos.

---

## AWS Audit Manager

---

### Was ist ein Audit?

- Ein Audit ist eine Überprüfung der Prozesse und Kontrollen eines Unternehmens
- Meistens kommt ein externer Experte, der alles prüft und dann einen Bericht erstellt

---

### Was ist AWS Audit Manager?

- **Automatisierung von Audits**: Automatisiertes Erstellen von Auditberichten
- **Richtlinien-Frameworks**: Nutzung vordefinierter Frameworks für verschiedene Compliance-Standards
- **Kontinuierliche Überwachung**: Permanentes Monitoring und Bewertung der Compliance
- **Preis**: $0.20 pro bewertete Ressource pro Monat.

---

## AWS Security Hub

- Wie der Name sagt, ein Service der viele Sicherheitsdienste zusammenfasst und eine zentrale Übersicht bietet
- **Zentralisierte Sicherheitsübersicht**: Zentralisierte Verwaltung und Überwachung von Sicherheitswarnungen
- **Compliance-Status**: Überwachung und Berichterstattung über den Compliance-Status
- **Integration und Automatisierung**: Integration mit anderen AWS-Sicherheitsdiensten und Automatisierung von Reaktionen
- **Preis**: $0.0010 pro gescanntem Konto pro Monat. $0.10 pro Standard-Compliance-Check.

---

## AWS Resource Access Manager (RAM)

- **Freigabe von Ressourcen**: Teilen von AWS-Ressourcen zwischen Konten
- **Zugriffskontrollen**: Feinabstimmung der Zugriffsrechte auf freigegebene Ressourcen
- **Sicherheits- und Governance-Aspekte**: Verwaltung und Überwachung der Ressourcennutzung und -freigabe
- **Preis**: Kostenlos.
