# Cheat Sheet

## Machine Learning

### 2.0 Was ist Machine Learning?

- **Definition**: Ein Teilbereich der KI, der Computern ermöglicht, aus Daten zu lernen und Vorhersagen zu treffen.
- **Beispiel**: Ein Kind lernt laufen durch wiederholtes Hinfallen und Aufstehen.

### 2.1 Grundlegende Konzepte von Machine Learning

- **Daten**: Text, Bilder, Zahlen, etc.
- **Modelle**: Algorithmen, die Muster in Daten erkennen.
- **Training**: Der Prozess des Lernens aus Daten.
- **Vorhersage**: Das Ergebnis, das das trainierte Modell liefert.

### 2.3 Amazon Machine Learning Dienste

#### 2.4 Amazon Comprehend

- **Problem**: Automatische Textanalyse und Verständnis natürlicher Sprache.
- **Funktionen**:
  - **Natürliche Sprachverarbeitung (NLP)**: Automatisches Verstehen von Text.
  - **Entitätsextraktion**: Erkennung von Namen, Orten, Ereignissen.
  - **Stimmungsanalyse**: Bewertung von Texten als positiv, negativ, neutral oder gemischt.
  - **Themenmodellierung**: Identifizierung von Hauptthemen in Texten.
  - **Spracherkennung**: Bestimmen der Sprache eines Textes.
- **Einsatzbereiche**:
  - **Kundenfeedback**: Analyse von Kundenmeinungen.
  - **Social Media Monitoring**: Überwachung von Trends und Stimmungen.
  - **Marktanalysen**: Identifikation von Markttrends.
  - **Automatische Kategorisierung**: Sortierung und Klassifizierung von Dokumenten.

#### 2.5 Amazon Kendra

- **Problem**: Effiziente Suche und Informationsfindung in großen Datenbeständen.
- **Funktionen**:
  - **Intelligente Suche**: Relevante Suchergebnisse durch Machine Learning.
  - **Dokumentenindexierung**: Automatisches Indizieren von Dokumenten.
  - **Kontextbasierte Antworten**: Präzise Antworten basierend auf Kontext.
  - **Integration**: Anbindung an verschiedene Datenquellen wie S3 und Datenbanken.
- **Einsatzbereiche**:
  - **Unternehmenssuche**: Finden von Informationen in großen Unternehmensdatenbeständen.
  - **Wissensmanagement**: Verwaltung und Abruf von Wissensressourcen.
  - **Kundensupport**: Bereitstellung schneller und genauer Antworten auf Kundenanfragen.
  - **Technische Dokumentation**: Suche in umfangreichen technischen Dokumentationen.

#### 2.6 Amazon Lex

- **Problem**: Erstellung von Chatbots und Sprachschnittstellen für Kundeninteraktionen.
- **Funktionen**:
  - **Sprach- und Textverarbeitung**: Verstehen und Verarbeiten natürlicher Sprache.
  - **Chatbot-Erstellung**: Entwickeln von Bots für Text- und Sprachinteraktionen.
  - **Sprachsynthese und -erkennung**: Umwandlung von Sprache in Text und umgekehrt.
  - **Integration**: Verbindung mit AWS Lambda und anderen AWS-Diensten für erweiterte Funktionen.
- **Einsatzbereiche**:
  - **Kundensupport**: Automatisierte Beantwortung von Kundenanfragen.
  - **Virtuelle Assistenten**: Persönliche Assistenten für verschiedene Anwendungen.
  - **Interaktive Sprachdienste**: Telefonbasierte Interaktionen.
  - **Automatisierte Anrufbeantworter**: Beantworten von Kundenanrufen mit automatisierten Systemen.

#### 2.7 Amazon Polly

- **Problem**: Automatische Umwandlung von Text in natürliche Sprache.
- **Funktionen**:
  - **Text-to-Speech (TTS)**: Konvertieren von Text in gesprochenes Wort.
  - **Mehrere Sprachstile und -akzente**: Auswahl an verschiedenen Stimmen und Akzenten.
  - **Anpassbare Sprechgeschwindigkeit und -tonhöhe**: Feinabstimmung der Sprachwiedergabe.
  - **SSML-Unterstützung**: Nutzung von Speech Synthesis Markup Language zur Steuerung der Sprachausgabe.
- **Einsatzbereiche**:
  - **Hörbücher**: Automatisierte Erstellung von Hörbüchern.
  - **Sprachassistenten**: Integration in Anwendungen für sprachbasierte Interaktionen.
  - **Barrierefreie Anwendungen**: Unterstützung für Menschen mit Sehbehinderungen.
  - **E-Learning-Plattformen**: Vertonung von Lerninhalten.

#### 2.8 Amazon Rekognition

- **Problem**: Automatische Analyse und Erkennung von Inhalten in Bildern und Videos.
- **Funktionen**:
  - **Bilderkennung und -analyse**: Erkennen von Objekten, Szenen und Aktivitäten.
  - **Gesichtserkennung und -analyse**: Erkennung und Analyse von Gesichtern.
  - **Text in Bildern erkennen**: Identifizieren und Extrahieren von Text aus Bildern.
  - **Videoanalyse**: Analyse von Videoinhalten in Echtzeit.
- **Einsatzbereiche**:
  - **Sicherheitsanwendungen**: Überwachung und Sicherheit durch Gesichtserkennung.
  - **Inhaltsmoderation**: Erkennung unangemessener Inhalte in Bildern und Videos.
  - **Personalisierung**: Anpassung von Inhalten basierend auf erkannte Objekte oder Personen.
  - **Medien- und Unterhaltungsindustrie**: Analyse von Bild- und Videomaterial für Medienanwendungen.

#### 2.9 Amazon SageMaker

- **Problem**: Vollständige Verwaltung des Lebenszyklus von Machine Learning-Modellen.
- **Funktionen**:
  - **Erstellen von ML-Modellen**: Entwickeln und Testen von Machine Learning-Modellen.
  - **Training von ML-Modellen**: Training von Modellen auf skalierbaren Infrastrukturen.
  - **Bereitstellen von ML-Modellen**: Deployment von Modellen in produktiven Umgebungen.
  - **Notebooks für Datenanalyse**: Integrierte Entwicklungsumgebungen für Datenwissenschaftler.
  - **Automatisiertes Machine Learning (AutoML)**: Automatisierung von ML-Prozessen.
  - **Integration**: Verbindung mit anderen AWS-Diensten für erweiterte Funktionalitäten.
- **Einsatzbereiche**:
  - **ML-Modellentwicklung**: Entwicklung und Training von benutzerdefinierten Modellen.
  - **Datenanalyse und -visualisierung**: Analyse und Visualisierung von Daten.
  - **Automatisierte ML-Prozesse**: Automatisierung des gesamten ML-Workflows.
  - **Prototyping und Produktion**: Schnelles Prototyping und Deployment von Modellen.

#### 2.10 Amazon Textract

- **Problem**: Automatisches Extrahieren von Text und Daten aus gescannten Dokumenten.
- **Funktionen**:
  - **Text- und Datenextraktion**: Extraktion von Text und strukturierten Daten aus Dokumenten.
  - **Erkennung von Tabellen und Formularen**: Identifizieren und Extrahieren von Tabellen und Formularinhalten.
  - **Volltext-Extraktion und Layout-Analyse**: Komplette Textextraktion und Analyse des Dokumentslayouts.
- **Einsatzbereiche**:
  - **Automatisierte Dokumentenverarbeitung**: Verarbeitung von Dokumenten ohne manuelle Eingabe.
  - **Datenextraktion aus Rechnungen und Formularen**: Automatische Erfassung von Daten aus strukturierten Dokumenten.
  - **Digitalisierungsprojekte**: Digitalisierung von Papierdokumenten für elektronische Verarbeitung.
  - **Compliance und Audits**: Automatisierte Datenextraktion für Prüfungen und Einhaltung von Vorschriften.

#### 2.11 Amazon Transcribe

- **Problem**: Automatische Transkription von Sprache in Text.
- **Funktionen**:
  - **Automatische Spracherkennung (ASR)**: Umwandlung von gesprochener Sprache in Text.
  - **Transkription von Audio- und Videodateien**: Erstellung von Texttranskripten aus Audio- und Videoinhalten.
  - **Unterstützung für mehrere Sprachen**: Transkription in verschiedenen Sprachen.
  - **Anpassbare Vokabulare**: Hinzufügen spezifischer Begriffe für genauere Transkriptionen.
- **Einsatzbereiche**:
  - **Untertitel für Videos**: Erstellung von Untertiteln für Videoinhalte.
  - **Transkription von Meetings**: Erstellung von Protokollen aus Meetings und Konferenzen.
  - **Kundenservice-Analysen**: Analyse von Kundenanrufen und Interaktionen.
  - **Barrierefreie Inhalte**: Bereitstellung von Texttranskripten für Menschen mit Hörbehinderungen.

#### 2.12 Amazon Translate

- **Problem**: Echtzeit-Übersetzung von Texten in verschiedene Sprachen.
- **Funktionen**:
  - **Echtzeit-Übersetzung**: Sofortige Übersetzung von Texten.
  - **Unterstützung für mehrere Sprachen**: Übersetzung in verschiedene Zielsprachen.
  - **Anpassbare Übersetzungen**: Anpassung der Übersetzungen an spezifische Anforderungen.
  - **Integration**: Anbindung an andere AWS-Dienste für erweiterte Funktionen.
- **Einsatzbereiche**:
  - **Mehrsprachige Websites und Anwendungen**: Bereitstellung von Inhalten in verschiedenen Sprachen.
  - **E-Commerce-Internationalisierung**: Unterstützung von internationalen Kunden durch mehrsprachige Inhalte.
  - **Kundenservice in mehreren Sprachen**: Automatisierte Übersetzung von Kundenanfragen und -antworten.
  - **Übersetzung von Dokumenten**: Automatische Übersetzung von Textdokumenten.

## Business Applications

### 3.0 Geschäftsanwendungen: Eine Übersicht

- **Ziele**: Effizienzsteigerung, bessere Entscheidungen, höhere Kundenzufriedenheit.

### 3.1 Grundlegende Konzepte von Geschäftsanwendungen

- **CRM-Systeme**: Kundenbeziehungsmanagement.
- **ERP-Systeme**: Geschäftsdatensysteme.
- **E-Commerce-Plattformen**: Online-Verkauf.

### 3.2 Amazon Business Application Dienste

#### 3.3 Amazon Connect

- **Problem**: Verwaltung und Optimierung von Kundenservice-Interaktionen.
- **Funktionen**:
  - **Cloud-basiertes Call-Center**: Bereitstellung von Call-Center-Funktionalitäten in der Cloud.
  - **Anruf- und Chat-Flows**: Erstellung und Verwaltung von Workflows für Anrufe und Chats.
  - **Echtzeit- und historische Analysen**: Analysen zur Verbesserung der Kundeninteraktionen.
  - **Integration mit CRM-Systemen**: Verbindung mit bestehenden CRM-Lösungen.
- **Einsatzbereiche**:
  - **Kundenservice**: Verwaltung von Kundenanrufen und -anfragen.
  - **Technischer Support**: Bereitstellung von technischem Support durch Call-Center.
  - **Vertrieb**: Unterstützung von Vertriebsaktivitäten durch automatisierte Anrufbeantwortung.

#### 3.4 Amazon Simple Email Service (Amazon SES)

- **Problem**: Zuverlässiger E-Mail-Versand und -Empfang für Marketing und Transaktionen.
- **Funktionen**:
  - **E-Mail-Versand**: Automatisierter Versand von E-Mails.
  - **Empfang und Verarbeitung von E-Mails**: Empfang und Bearbeitung eingehender E-Mails.
  - **Hohe Zustellraten**: Sicherstellung, dass E-Mails zuverlässig zugestellt werden.
  - **Integration mit anderen AWS-Diensten**: Nutzung anderer AWS-Dienste für erweiterte Funktionen.
- **Einsatzbereiche**:
  - **Marketingkampagnen**: Versand von Marketing-E-Mails an Kunden.
  - **Transaktions-E-Mails**: Automatisierter Versand von Bestellbestätigungen, Rechnungen und mehr.
  - **Benachrichtigungen**: Versand von Benachrichtigungen an Benutzer.

## Internet of Things (IoT)

### 4.0 Internet der Dinge (IoT): Eine Übersicht

- **Definition**: Netzwerk von physischen Geräten, die Daten senden und empfangen.
- **Ziel**: Geräte kommunizieren und zusammenarbeiten, um Effizienz zu steigern.

### 4.1 Was ist IoT?

- **Verbundene Geräte**: Smartphones, Smart-TVs, Smart-Home-Geräte.
- **Datenanalyse**: Verarbeitung der gesammelten Daten zur Entscheidungsfindung.

### 4.2 AWS IoT-Dienste

#### 4.3 AWS IoT Core

- **Problem**: Sichere Verbindung und Verwaltung von IoT-Geräten.
- **Funktionen**:
  - **Sichere Verbindung von Geräten**: Verschlüsselte Kommunikation zwischen Geräten und der Cloud.
  - **Geräteverwaltung und -überwachung**: Verwaltung und Überwachung von verbundenen Geräten.
  - **Echtzeit-Datenverarbeitung**: Analyse und Verarbeitung von Gerätedaten in Echtzeit.
  - **Integration mit anderen AWS-Diensten**: Verbindung mit anderen AWS-Diensten für erweiterte Funktionen.
  - **Unterstützung für MQTT, HTTP und WebSockets**: Verschiedene Kommunikationsprotokolle für Geräte.
- **Einsatzbereiche**:
  - **Smart Homes**: Verbindung und Steuerung von Smart-Home-Geräten.
  - **Industrielle Automatisierung**: Überwachung und Steuerung von Industrieanlagen.
  - **Gesundheitswesen**: Verbindung und Überwachung medizinischer Geräte.
  - **Agrartechnologie**: Überwachung und Steuerung landwirtschaftlicher Geräte und Sensoren.

#### 4.4 AWS IoT Greengrass

- **Problem**: Lokale Datenverarbeitung und Gerätekommunikation ohne ständige Internetverbindung.
- **Funktionen**:
  - **Lokale Datenverarbeitung**: Verarbeitung von Daten direkt auf den Geräten.
  - **Gerätekommunikation ohne Internetverbindung**: Kommunikation zwischen Geräten ohne ständige Verbindung zur Cloud.
  - **Machine Learning an der Edge**: Ausführung von Machine Learning-Modellen auf Geräten.
  - **Integration mit AWS-Diensten**: Verbindung mit AWS-Diensten für erweiterte Funktionen.
- **Einsatzbereiche**:
  - **Edge Computing**: Verarbeitung von Daten nahe an der Quelle, um Latenz zu reduzieren.
  - **Lokale Steuerung von Geräten**: Steuerung von Geräten vor Ort ohne Internetverbindung.
  - **Echtzeit-Datenverarbeitung**: Verarbeitung von Daten in Echtzeit für schnelle Reaktionen.
  - **Industrielle Anwendungen**: Einsatz in industriellen Umgebungen zur Verbesserung der Effizienz.
