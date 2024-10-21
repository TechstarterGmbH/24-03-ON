---
marp: false
theme: default
class:
  - invert
style: |-
  section {
    background-color: #090917;
    color: #F1F1F1;
  }
  h1, h2, h3, h4 {
    color: #FC6549;
  }
  em {
    color: #FC6549;
  }
paginate: true
---

# ISTQB CTFL 4.0 - Tag 3

---

## Kapitel 3 - Statischer Test

---

### Kapitel 3.1 - Grundlagen des statischen Tests

- **Zu testende Software muss nicht ausgeführt werden!**
- Manuelle Prüfung oder mit Tool von Arbeitsergebnissen, wie Code, Prozessspezifikation, Systemarchitekturspezifikation, etc.
- Häufig Teil von CI-Frameworks

---

#### Testziele:
- Verbesserung der Qualität
- Aufdeckung von Fehlerzuständen
- Bewertung von Merkmalen wie Lesbarkeit, Vollständigkeit, Korrektheit, Testbarkeit, Konsistenz

---

### Kapitel 3.1 - Grundlagen des statischen Tests

- **Tester, Fachbereichsvertreter und Entwickler arbeiten zusammen am Example-Mapping**
- User-Storys schreiben
- Backlog verfeinern (Refinement)
- Kriterien entsprechen (“Definition-of-Ready”)

---

#### Definition of Ready:
- Wie eine Definition-of-Done für User Stories vor der Implementierung und anderen Arbeitsschritten! (5.1.3 im Lehrplan)

---

### 3.1.1 - Arbeitsergebnisse die durch statische Tests untersucht werden können (K1)

- Fast jedes Arbeitsergebnis kann mit statischen Tests untersucht werden.
- Beispiele: Anforderungen, Quellcode, Testkonzepte, Testfällen, Produkt-Backlog-Elemente, Projektdokumentation, Verträge, Modelle, etc.

---

### 3.1.1 - Arbeitsergebnisse die durch statische Tests untersucht werden können (K1)

- **Nicht geeignet für statische Tests:**
  - Für Menschen schwer interpretierbare Ergebnisse
  - Ergebnisse von Dritten, die rechtlich nicht untersucht werden dürfen

---

### 3.1.2 - Wert des statischen Tests (K2)

- **Frühes Aufdecken von Fehlerzuständen**
- Fehlerzustände, die dynamische Tests nicht erkennen
- Hoher Mehrwert für Stakeholder
- Sicherstellen, dass Anforderungen den Bedürfnissen der Stakeholder entsprechen

---

#### Fehlerzustand und Fehlerwirkung:
- **Fehlerwirkung:** Die Auswirkung des Fehlers (z.B. Testfehlschlag)
- **Fehlerzustand:** Der tatsächliche Fehler (z.B. Codefehler, Rechtschreibfehler)

---

### 3.1.3 - Unterschiede zwischen statischem Test und dynamischem Test (K2)

| Statischer Test                       | Dynamischer Test                      |
|--------------------------------------|--------------------------------------|
| Findet Fehlerzustände                | Findet Fehlerzustände                |
| Findet einige Fehlerzustände, die dynamische Tests nicht finden | Findet einige Fehlerzustände, die statische Tests nicht finden |
| Findet direkt Fehlerzustände         | Deckt Fehlerwirkung auf, die nach Analyse erst zu dem Fehlerzustand führen |
| Kann auf nicht ausführbare Ergebnisse angewandt werden | Kann nur auf ausführbare Ergebnisse angewandt werden |
| Misst statische Qualitätsmerkmale     | Misst dynamische Qualitätsmerkmale    |


---

### Kapitel 3.2 - Feedback- und Reviewprozess

---

#### 3.2.1 - Vorteile eines frühzeitigen und häufigen Stakeholder-Feedbacks (K1)
- Frühes Entdecken von potenziellen Qualitätsproblemen
- Sicherstellen, dass Vorstellungen/Wünsche richtig verstanden und erfüllt werden
- Vorbeugen von Missverständnissen, kostspieligen Nacharbeiten oder Scheitern des Projekts
- Früherer Fokus auf wichtigste Features

---

#### 3.2.2 - Aktivitäten des Reviewprozesses (K2)
- **Planung:** Inhalt, Umfang und Zweck festlegen
- **Reviewbeginn:** Vorbereitung prüfen
- **Individuelles Review:** Jeder Gutachter führt selbst ein Review durch
- **Kommunikation und Analyse:** Überprüfung von Qualität und Anomalien
- **Behebung und Berichterstattung:** Fehlerberichte erstellen und Ergebnisse des Reviews berichten

---

#### 3.2.3 - Rollen und Verantwortlichkeiten bei Reviews (K1)
- **Manager:** Entscheidet, was geprüft werden soll
- **Autor:** Erstellt und korrigiert das Arbeitsergebnis
- **Moderator:** Leitet die Reviewsitzungen
- **Protokollant:** Sammelt Anomalien und zeichnet Reviewinformationen auf
- **Gutachter:** Führt Reviews durch
- **Reviewleiter:** Gesamtverantwortung für das Review

---

#### 3.2.4 - Arten von Reviews (K2)
- **Informelles Review:** Kein definierter Prozess, Hauptziel: Aufdeckung von Anomalien
- **Walkthrough:** Vom Autor geleitet, Ziele: Qualitätsbewertung, Ideenfindung, Verbesserung
- **Technisches Review:** Von technisch qualifizierten Gutachtern durchgeführt
- **Inspektion:** Formalste Art der Review, Ziel: Maximale Anzahl an Anomalien finden

---

#### 3.2.5 - Erfolgsfaktoren für Reviews (K1)
- Klare Ziele und messbare Endkriterien
- Auswahl geeigneter Reviewart
- Reviews in kleinen Einheiten
- Feedback an Stakeholder und Autoren
- Ausreichend Vorbereitungszeit
- Unterstützung durch das Management
- Reviews in Unternehmenskultur einbeziehen

---

# Kapitel 3- Schlüsselwörter

Anomalie
dynamischer Test
formales Review
informelles Review
Inspektion
Review
statische Analyse
statischer Test
Technisches Review
Walkthrough