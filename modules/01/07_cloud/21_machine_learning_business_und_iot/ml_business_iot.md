# Einführung in Machine Learning, Business Applications, und Internet of Things (IoT)

## Machine Learning

### 2.0 Was ist Machine Learning?

- **Machine Learning (ML)**: Ein Teilbereich der künstlichen Intelligenz, der es Computern ermöglicht, aus Daten zu lernen und Vorhersagen zu treffen.
- Ähnlich wie menschliches Lernen, stell dir ein Kind vor, das 100 Mal hinfällt, bevor es laufen kann.

### 2.1 Grundlegende Konzepte von Machine Learning

- **Daten**: Die Basis von ML. Daten können in Form von Text, Bildern, Zahlen oder anderen Formaten vorliegen.
- **Modelle**: Algorithmen, die lernen, Muster in den Daten zu erkennen.
- **Training**: Der Prozess, bei dem das Modell aus den Daten lernt.
- **Vorhersage**: Das Ergebnis, das das trainierte Modell liefert.

### 2.2 Künstliche Intelligenz und Machine Learning

#### 2.2.1 Unterschiede zwischen Künstlicher Intelligenz und Machine Learning

- **Künstliche Intelligenz (KI)**: Der Überbegriff für Maschinen, die Aufgaben ausführen, die normalerweise menschliche Intelligenz erfordern.
- **Machine Learning (ML)**: Ein Teilbereich der KI, der sich darauf konzentriert, Maschinen das Lernen aus Daten beizubringen.

#### 2.2.2 Anwendungsbereiche von Künstlicher Intelligenz und Machine Learning

- **Gesundheitswesen**: Diagnose von Krankheiten.
- **Finanzen**: Vorhersage von Aktienkursen.
- **Marketing**: Personalisierte Werbung.
- **Automobilindustrie**: Selbstfahrende Autos.

### 2.3 Amazon Machine Learning Dienste

#### 2.3.1 Einführung in Amazon ML-Dienste

Amazon bietet eine Vielzahl von Diensten, die dir helfen, ML in deinen Anwendungen zu nutzen, ohne tiefgehende Fachkenntnisse zu benötigen.

#### 2.4 Amazon Comprehend

- [Link](https://aws.amazon.com/de/comprehend/)

##### 2.4.1 Was ist Amazon Comprehend?

- **Funktionen**:
  - Natürliche Sprachverarbeitung (NLP)
  - Extraktion von Entitäten (Namen, Orte, Ereignisse)
  - Stimmungsanalyse (positiv, negativ, neutral, gemischt)
  - Themenmodellierung
  - Spracherkennung

- **Einsatzbereiche**:
  - Kundenfeedback analysieren
  - Social Media Monitoring
  - Marktanalysen
  - Automatische Kategorisierung von Inhalten

##### 2.4.2 Die Anwendung von Amazon Comprehend

- **Stimmungsanalyse**: Erkennen, ob ein Text positiv, negativ oder neutral ist.
- **Entitätenextraktion**: Finden von Namen, Orten und anderen wichtigen Informationen in Texten.
- **Dokumentenklassifizierung**: Automatische Zuweisung von Kategorien zu Textdokumenten.
- Stell dir vor, du möchtest die Stimmung in Kundenbewertungen analysieren, um herauszufinden, wie zufrieden sie mit deinem Produkt sind.
- Eventuell möchtest du dieses Feedback in regelmäßigen Abständen überwachen, um Trends zu erkennen und auf Probleme zu reagieren.

- **Preisgestaltung**:
  - Basis-Tarif: $0.0001 pro Text-Byte für Entitätserkennung
  - Weitere Funktionen haben eigene Preismodelle

##### 2.4.3 Praxis

- Öffne die AWS Management Konsole.
- Stelle sicher, dass du dich in der Frankfurt Region befindest.
- Öffne den Comprehend Service.
- Klicke auf `Launch Amazon Comprehend`
- Unter `Input data` wähle `Buit-in` und kopiere den Text in das Textfeld.

```plaintext
"Absolutely terrible service! I waited over an hour for my order, and when it finally arrived, it was cold and missing items. Never ordering from here again!"

"I can't believe how rude the staff were! They completely ignored me and then acted like I was the problem. Disgraceful customer service!"

"The product was faulty right out of the box. When I tried to return it, they gave me the runaround and refused to issue a refund. Total scam!"

"Ordered a large pizza and received a small one. Called to complain, and they hung up on me. Unbelievable!"

"I paid extra for expedited shipping, and my package arrived a week late. No apology, no compensation, just excuses. Never again!"

"The item I received was nothing like the description. When I contacted support, they were unhelpful and dismissive. What a waste of money!"

"Tried to cancel my subscription, and they made it nearly impossible. I've been charged for months for something I don't use. This company is a nightmare!"

"Customer service is a joke. Spent hours on hold only to be told there's nothing they can do about my issue. Pathetic!"

"I was overcharged and nobody will take responsibility. Every person I talk to blames someone else. Avoid this company at all costs!"

"Worst experience ever! The product was damaged, the service was rude, and the entire process was a headache. Do yourself a favor and shop elsewhere!"
```

- Klicke auf `Analyze`
- Jetzt kannst du verschiedene Ergebnisse sehen:
  - **Entities**: Namen, Orte, Daten, etc.
  - **Key Phrases**: Wichtige Sätze im Text.
  - **Sentiment**: Positiv, negativ, neutral, gemischt.
  - **Language**: Die Sprache des Textes.
  - **PII**: Persönlich identifizierbare Informationen. (Musst extra aktiviert werden)
  - **Targeted Sentiment**: Sentiment für spezifische Entitäten. z.B. Das Produkt war schlecht, aber der Service war gut.

#### 2.5 Amazon Kendra

- [Link](https://aws.amazon.com/de/kendra/)

##### 2.5.1 Was ist Amazon Kendra?

- Stell dir vor, dein Unternehmen hat Daten an verschiedenen Orten gespeichert, z.B. in Dokumenten, Datenbanken, und Cloud-Speichern.
- Wenn du nach Informationen suchst, musst du möglicherweise mehrere Quellen durchsuchen, um die richtigen Antworten zu finden.
- Amazon Kendra ist ein Suchdienst, der es dir ermöglicht, Informationen aus verschiedenen Quellen zu durchsuchen und relevante Antworten zu finden.
- Dafür verwendet Kendra Machine Learning und natürliche Sprachverarbeitung (Natural Language Processing NLP), um die Suche zu optimieren und kontextbasierte Antworten zu liefern.

- **Funktionen**:
  - Intelligente Suche
  - Dokumentenindexierung
  - Kontextbasierte Antworten
  - Integration mit verschiedenen Datenquellen (S3, Datenbanken)

- **Einsatzbereiche**:
  - Unternehmensinterne Suche
  - Wissensmanagement
  - Kundensupport
  - Technische Dokumentation

##### 2.5.2 Die Anwendung von Amazon Kendra

- **Dokumentensuche**: Schnelles Auffinden von Informationen in großen Dokumentensammlungen.
- **Fragenbeantwortung**: Kendra kann Antworten auf spezifische Fragen in Dokumenten finden.

- **Preisgestaltung**:
  - Zahlung nach Nutzung (pro Sekunde)
  - Entwickler-Edition:
    - $810 pro Monat ($1.25 / Stunde)
    - Bis 10.000 Dokumente
    - Nicht für den Produktiveinsatz (Testen und Entwickeln)
  - Enterprise-Edition:
    - $1008 pro Monat ($1.40 / Stunde)
    - Bis 100.000 Dokumente
    - Hochverfügbarkeit und Skalierbarkeit

### 2.6 Amazon Lex

- [Link](https://aws.amazon.com/de/lex/)

##### 2.6.1 Was ist Amazon Lex?

- Du möchtest einen Chatbot erstellen, der mit Kunden interagieren kann, um Fragen zu beantworten und Unterstützung zu bieten.
- Amazon Lex ist ein Service, der es dir ermöglicht, Chatbots zu erstellen, die natürliche Sprache verstehen und darauf reagieren können.
- Lex verwendet Machine Learning und natürliche Sprachverarbeitung, um Konversationen mit Benutzern zu führen und Aufgaben zu automatisieren.
- Lex **basiert auf der gleichen Technologie wie Alexa**, der Sprachassistentin von Amazon.
- Wie kann Amazon dein Kundenservice verbessern? Indem du einen Chatbot erstellst, der häufig gestellte Fragen beantwortet und einfache Aufgaben erledigt.

- **Funktionen**:
  - Sprach- und Textverarbeitung
  - Erstellen von Chatbots
  - Sprachsynthese und -erkennung
  - Integration mit AWS Lambda und anderen AWS-Diensten

- **Einsatzbereiche**:
  - Kundensupport
  - Virtuelle Assistenten
  - Interaktive Sprachdienste
  - Automatisierte Anrufbeantworter

##### 2.6.2 Die Anwendung von Amazon Lex

- **Chatbots**: Erstellen von Chatbots, die mit Benutzern interagieren können.
- **Sprachschnittstellen**: Entwicklung von Anwendungen, die Sprachbefehle verstehen und ausführen können.

- **Preisgestaltung**:
  - $0.0065 pro Spracheinheit (15 Sekunden)
  - $0.0020 pro Textanfrage

### 2.7 Amazon Polly

- [Link](https://aws.amazon.com/de/polly/)

##### 2.7.1 Was ist Amazon Polly?

- **Funktionen**:
  - Text-to-Speech (TTS)
  - Mehrere Sprachstile und -akzente
  - Anpassbare Sprechgeschwindigkeit und -tonhöhe
  - SSML (Speech Synthesis Markup Language) Unterstützung

- **Einsatzbereiche**:
  - Hörbücher
  - Sprachassistenten
  - Barrierefreie Anwendungen
  - E-Learning-Plattformen

##### 2.7.2 Die Anwendung von Amazon Polly

- **Text-to-Speech**: Anwendungen, die gesprochene Anweisungen oder Nachrichten benötigen.
- **Audioinhalte erstellen**: Generiere automatisch gesprochene Inhalte für verschiedene Anwendungen.
- In der AWS Dokumentation gibt es teilweise die Möglichkeit sich den Text vorlesen zu lassen.

- **Preisgestaltung**:
  - Zahlung nach Nutzung (pro Zeichen)
  - Standardstimmen: $4 pro 1 Million Zeichen
  - Neural-Voices: $16 pro 1 Million Zeichen

##### 2.7.2 Polly Praxis

- Öffne die AWS Management Konsole und gehe zu Polly.
- Klicke auf `Try Polly`
- Wähle `German` als Sprache und `Standard` als Stimmtyp aus
- Teste verschieden Stimmen und Sätze

```plaintext
Chabos wissen, wer der Babo ist
Hafti Abi ist der, der im Lambo und Ferrari sitzt
Saudi-Arabi-Money-rich
Wissen, wer der Babo ist
```

- Klicke auf `Listen` um die Stimme zu hören.

### 2.8 Amazon Rekognition

- [Link](https://aws.amazon.com/de/rekognition/)

##### 2.8.1 Was ist Amazon Rekognition?

- Oft müssen wir Bilder oder Videos analysieren, um Informationen zu extrahieren oder Muster zu erkennen.
- Stell dir vor, du arbeitest für ein Social-Media-Unternehmen und möchtest automatisch Fotos moderieren, um unangemessene Inhalte zu filtern.
- Amazon Rekognition ist ein Service, der es dir ermöglicht, Bilder und Videos zu analysieren und Informationen wie Gesichter, Objekte und Szenen zu erkennen.

- **Funktionen**:
  - Bilderkennung und -analyse
  - Gesichtserkennung und -analyse
  - Text in Bildern erkennen
  - Erkennung von Objekten und Szenen
  - Videoanalyse

- **Einsatzbereiche**:
  - Sicherheitsanwendungen
  - Inhaltsmoderation
  - Personalisierung
  - Medien- und Unterhaltungsindustrie

##### 2.8.2 Die Anwendung von Amazon Rekognition

- **Gesichtserkennung**: Erkennen und Analysieren von Gesichtern in Bildern und Videos.
- **Objekterkennung**: Identifikation von Objekten und Szenen in Bildern.

- **Preisgestaltung**:
  - Preise für Amazon Rekognition Image -> $1 pro 1,000 Bilder
  - Preise für Amazon Rekognition Video -> ca $0.10 pro Minute
  - Preise für Amazon Rekognition Custom Labels
  - Amazon Rekognition Face Liveness
  - Preise für Amazon Rekognition Custom Moderation

### 2.9 Amazon SageMaker

- [Link](https://aws.amazon.com/de/sagemaker/)

##### 2.9.1 Was ist Amazon SageMaker?

- SagenMaker ist ein vollständig verwalteter Service, der es Entwicklern und Datenwissenschaftlern ermöglicht, Machine Learning-Modelle zu erstellen, zu trainieren und bereitzustellen.
- Im Gegensatz zu den anderen Services hier, ist SageMaker eher für Entwickler und Datenwissenschaftler gedacht, die **eigene Modelle erstellen und trainieren möchten**.

- **Funktionen**:
  - Erstellen, Trainieren und Bereitstellen von ML-Modellen
  - Notebooks für Datenanalyse
  - Automatisiertes Machine Learning (AutoML)
  - Integration mit anderen AWS-Diensten

- **Einsatzbereiche**:
  - Entwicklung von maßgeschneiderten ML-Modellen
  - Datenanalyse und -visualisierung
  - Automatisierte ML-Prozesse
  - Prototyping und Produktion

##### 2.9.2 Die Anwendung von Amazon SageMaker

- **Modellerstellung**: Entwicklung und Bereitstellung eigener ML-Modelle.
- **Training und Deployment**: Skalierbares Training und nahtlose Bereitstellung.

- **Preisgestaltung**:
  - Notebook-Instances: ab $0.05 pro Stunde
  - Training-Instances: ab $0.10 pro Stunde
  - Inference-Instances: ab $0.04 pro Stunde

### 2.10 Amazon Textract

- [Link](https://aws.amazon.com/de/textract/)

##### 2.10.1 Was ist Amazon Textract?

- Stell dir vor, du hast eine große Anzahl von Dokumenten, die du digitalisieren und analysieren möchtest.
- Amazon Textract ist ein Service, der es dir ermöglicht, Text und Daten aus Dokumenten zu extrahieren und zu analysieren.
- Das geht sogar (teilweise) mit gescannten, handgeschriebenen oder gedruckten Dokumenten.

- **Funktionen**:
  - Automatisches Extrahieren von Text und Daten aus Dokumenten
  - Erkennung von Tabellen und Formularen
  - Volltext-Extraktion und Layout-Analyse

- **Einsatzbereiche**:
  - Automatisierte Dokumentenverarbeitung
  - Datenextraktion aus Rechnungen und Formularen
  - Digitalisierungsprojekte
  - Compliance und Audits

##### 2.10.2 Die Anwendung von Amazon Textract

- **Dokumentenanalyse**: Automatisches Erfassen von Daten aus Formularen und Tabellen.
- **Texterkennung**: Extraktion von Text aus gescannten Dokumenten.

- **Preisgestaltung**:
  - $1.50 pro 1,000 Seiten (Text Extraktion)
  - $50 pro 1,000 Seiten (Formular- und Tabellenextraktion)

### 2.11 Amazon Transcribe

- [Link](https://aws.amazon.com/de/pm/transcribe/)

##### 2.11.1 Was ist Amazon Transcribe?

- Stell dir vor, dein Unternehmen zeichnet regelmäßig Meetings auf und du willst gerne an alle beteiligten Personen ein Protokoll senden.
- Hier kommt Amazon Transcribe ins Spiel. Es ist ein Service, der es dir ermöglicht, Audio- und Videodateien zu transkribieren und in Text umzuwandeln.

- **Funktionen**:
  - Automatische Spracherkennung (ASR)
  - Transkription von Audio- und Videodateien
  - Unterstützung für mehrere Sprachen
  - Anpassbare Vokabulare

- **Einsatzbereiche**:
  - Untertitel für Videos
  - Transkription von Meetings
  - Kundenservice-Analysen
  - Barrierefreie Inhalte

##### 2.11.2 Die Anwendung von Amazon Transcribe

- **Spracherkennung**: Transkription von Audio- und Videodateien.
- **Untertitelung**: Automatische Erstellung von Untertiteln für Videos.

- **Preisgestaltung**:
  - $0.02400 pro Minute (Standard)

### 2.12 Amazon Translate

- [Link](https://aws.amazon.com/de/translate/)

##### 2.12.1 Was ist Amazon Translate?

- Wie Google Translate, aber für Unternehmen.

- **Funktionen**:
  - Echtzeit-Übersetzung
  - Unterstützung für mehrere Sprachen
  - Anpassbare Übersetzungen
  - Integration mit anderen AWS-Diensten

- **Einsatzbereiche**:
  - Mehrsprachige Websites und Anwendungen
  - E-Commerce-Internationalisierung
  - Kundenservice in mehreren Sprachen
  - Übersetzung von Dokumenten

##### 2.12.2 Die Anwendung von Amazon Translate

- **Übersetzungen**: Automatische Übersetzung von Dokumenten und Webseiten.
- **Mehrsprachige Interaktion**: Entwicklung von Anwendungen, die mehrere Sprachen unterstützen.

- **Preisgestaltung**:
  - $15 pro 1 Million Zeichen

##### 2.12.3 Praxis

- Öffne die AWS Management Konsole und gehe zu Translate.
- Klicke auf `Launch Real-time Translation`
- Wähle `German` als Quellsprache und `English` als Zielsprache aus.
- Schreibe einen deutschen Satz und schaue dir die Übersetzung an.

## Business Applications

### 3.0 Geschäftsanwendungen: Eine Übersicht

Geschäftsanwendungen helfen Unternehmen, effizienter zu arbeiten, Daten zu verwalten und bessere Entscheidungen zu treffen.

### 3.1 Grundlegende Konzepte von Geschäftsanwendungen

- Wie kann das Unternehmen effizienter arbeiten?
- Mehr Gewinn durch bessere Entscheidungen?
- Wie können wir die Kundenzufriedenheit verbessern?

### 3.2 Amazon Business Application Dienste

#### 3.3 Amazon Connect

- [Link](https://aws.amazon.com/de/connect/)

##### 3.3.1 Was ist Amazon Connect?

- Stell dir vor, deine Firma wächst und du möchtest einen Kundenservice einrichten, um Anrufe und Chats zu verwalten.
- Jetzt brauchst du eine Software, die es dir ermöglicht, Anrufe zu verwalten, Anruf- und Chat-Flows zu erstellen und Analysen durchzuführen.
- Amazon Connect ist eine Cloud-basierte Call-Center-Lösung, die es Unternehmen ermöglicht, Kundenservice effizient zu verwalten.

- **Funktionen**:
  - Cloud-basierte Call-Center-Lösung
  - Anpassbare Anruf- und Chat-Flows
  - Echtzeit- und historische Analysen
  - Integration mit CRM-Systemen

- **Einsatzbereiche**:
  - Kundenservice
  - Technischer Support
  - Vertrieb

##### 3.3.2 Die Anwendung von Amazon Connect

- **Kundensupport**: Verwaltung von Kundenanrufen und -anfragen.
- **Anruf- und Chat-Flows**: Erstellung und Verwaltung von Workflows für Anrufe und Chats.

- **Preisgestaltung**:
  - $0.018 pro Minute für eingehende und ausgehende Anrufe
  - $0.004 pro Nachricht für Chat

#### 3.4 Amazon Simple Email Service (Amazon SES)

- [Link](https://aws.amazon.com/de/ses/)

##### 3.4.1 Was ist Amazon SES?

- In einem Online Shop möchtest du E-Mails an Kunden senden, um Bestellbestätigungen und Werbeaktionen zu versenden.
- Da es schwierig ist, E-Mails zuverlässig zuzustellen, benötigst du einen Service, der dir dabei hilft.
- Amazon SES ist ein E-Mail-Versanddienst, der es Unternehmen ermöglicht, E-Mails zuverlässig zu versenden und zu empfangen.
- **Wichtig**: Es geht hier meistens nicht darum E-Mail Addressen für die Mitarbeiter zu verwalten, sondern um den Versand von E-Mails an Kunden.

- **Funktionen**:
  - E-Mail-Versand
  - Empfang und Verarbeitung von E-Mails
  - Hohe Zustellraten
  - Integration mit anderen AWS-Diensten

- **Einsatzbereiche**:
  - Marketingkampagnen
  - Transaktions-E-Mails
  - Benachrichtigungen

##### 3.4.2 Die Anwendung von Amazon SES

- **E-Mail-Kampagnen**: Senden von Marketing-E-Mails und Benachrichtigungen.
- **Transaktions-E-Mails**: Automatisierter Versand von Rechnungen, Bestellbestätigungen und mehr.

- **Preisgestaltung**:
  - $0.10 pro 1,000 E-Mails
  - Zusätzliche Kosten für ausgehende Datenübertragung

## Internet of Things (IoT)

### 4.0 Internet der Dinge (IoT): Eine Übersicht

IoT bezieht sich auf das Netzwerk von physischen Geräten, die mit dem Internet verbunden sind und Daten austauschen.

Alle Geräte, die man gemeinhin als "smart" bezeichnet, wie Smartphones, Smart-TVs, Smart-Home-Geräte, sind Teil des IoT.
Die Vision ist, dass alle Geräte miteinander kommunizieren und zusammenarbeiten, um unser Leben einfacher und effizienter zu gestalten.

Da die Geräte meistens nicht rechenstark sind, werden die Daten oft in die Cloud gesendet, um dort verarbeitet zu werden.

#### 4.1 Was ist IoT?

- **Verbundene Geräte**: Geräte, die Daten senden und empfangen.
- **Datenanalyse**: Verarbeitung der gesammelten Daten zur Verbesserung der Effizienz und Entscheidungsfindung.

### 4.2 AWS IoT-Dienste

#### 4.3 AWS IoT Core

- [Link](https://aws.amazon.com/de/iot-core/)

##### 4.3.1 Was ist AWS IoT Core?


- **Funktionen**:
  - Sichere Verbindung von Geräten mit der Cloud
  - Geräteverwaltung und -überwachung
  - Echtzeit-Datenverarbeitung
  - Integration mit anderen AWS-Diensten
  - Unterstützung für MQTT, HTTP und WebSockets

- **Einsatzbereiche**:
  - Smart Homes
  - Industrielle Automatisierung
  - Gesundheitswesen
  - Agrartechnologie

##### 4.3.2 Die Anwendung von AWS IoT Core

- Stell dir vor, DHL hat ein System, was die genauer Position der Lieferwagen überwacht.
  - Das heißt jeder Lieferwagen hat ein GPS-Gerät, das die Position an die Cloud sendet.
  - Hierfür könnte zum Beispiel AWS IoT Core genutzt werden um die Daten zu empfangen und zu verarbeiten.
- **Gerätemanagement**: Verbindung, Verwaltung und Sicherung von IoT-Geräten.
- **Datenverarbeitung**: Echtzeit-Analyse und -Verarbeitung von Gerätedaten.

- **Preisgestaltung**:
  - Je nach Protokoll
  - $1 pro 1 Million Nachrichten (5 KB)

#### 4.4 AWS IoT Greengrass

- [Link](https://aws.amazon.com/de/greengrass/)

##### 4.4.1 Was ist AWS IoT Greengrass?

- Ein **Greenfield**-Projekt ist ein Projekt, das von Grund auf neu gestartet wird, ohne auf bestehende Systeme oder Einschränkungen Rücksicht zu nehmen.
- Das heißt IoT Greengrass ist ein Service, der es dir ermöglicht, IoT-Anwendungen einfach und sicher zu starten.
- Schnelleres Entwicklung durch vordefinierte Funktionen und Integration mit anderen AWS-Diensten.
- Firmware updates aus der Ferne, Machine Learning an der Edge, und mehr.

- **Funktionen**:
  - Lokale Datenverarbeitung
  - Gerätekommunikation ohne Internetverbindung
  - Machine Learning an der Edge
  - Integration mit AWS-Diensten

- **Einsatzbereiche**:
  - Edge Computing
  - Lokale Steuerung von Geräten
  - Echtzeit-Datenverarbeitung
  - Industrielle Anwendungen

##### 4.4.2 Die Anwendung von AWS IoT Greengrass

- **Edge Computing**: Verarbeitung von Daten nahe an der Quelle, um Latenz zu reduzieren.
- **Lokale Aktionen**: Geräte können auf lokale Ereignisse reagieren, auch wenn sie nicht mit der Cloud verbunden sind.

- **Preisgestaltung**:
  - $0.16 pro aktiver Greengrass-Core-Instanz pro Stunde
  - Zusätzliche Gebühren für Datentransfer und AWS Lambda-Ausführungszeit
