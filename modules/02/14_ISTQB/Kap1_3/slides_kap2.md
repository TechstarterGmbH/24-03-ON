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


# ISTQB - Kapitel 2

---

## Fahrplan


- Kapitel 2: Testen während des SDLC
- Die 3-Level des Verständnisses
  - K1: Sich erinnern
  - K2: Verstehen
  - K3: Anwenden

---

## Kapitel 2 - Testen während des Softwareentwicklungslebenszyklus

---

### Kapitel 2.1 - Testen im Kontext eines SDLC

**Modelle des Softwareentwicklungslebenszyklus (SDLC):**

- Wasserfallmodell
- V-Modell
- Spiralmodell
- …

---

### Kapitel 2.1.1 - Auswirkungen des SDLC auf das Testen (K2)

**Auswirkungen des SDLC auf das Testen:**

- Umfang und Zeitpunkt der Testaktivitäten
- Detaillierungsgrad der Testdokumentation
- Wahl der Testverfahren und des Testansatzes
- Umfang der Testautomatisierung
- Rolle und Aufgaben eines Testers

*Testen muss an den SDLC angepasst sein.*

---

### Kapitel 2.1.1 - Auswirkungen des SDLC auf das Testen (K2)

- **Sequentielle Modelle:** 
  - Viel Planung, späte Umsetzung => späte Tests

- **Iterative / Inkrementelle Modelle:**
  - Jede Iteration muss funktionieren => Umfassende Tests

- **Agile Softwareentwicklung:**
  - Ständige Änderung => Hohe Testautomatisierung

---

### Kapitel 2.1.2 - SDLC und gute Praktiken für das Testen (K1)

**Gute Testpraktiken:**

- Jede Entwicklungsaktivität hat eine Testaktivität
- Unterschiedliche Teststufen haben unterschiedliche Ziele
- Testanalyse und Testentwurf beginnen früh
- Tester in Reviews einbeziehen

---

### Kapitel 2.1.3 - Testen als Treiber für die Softwareentwicklung (K1)

**Entwicklungsansätze:**

- **Test Driven Development (TDD):** 
  - Tests zuerst, dann Code, dann Refactoring

- **Acceptance Test-Driven Development (ATDD):** 
  - Tests basieren auf Abnahmekriterien

- **Behaviour-Driven Development (BDD):** 
  - Testfälle in natürlicher Sprache (Gegeben/Wenn/Dann)

---

### Kapitel 2.1.3 - Beispiele für Gegeben/Wenn/Dann

- **Szenario 1: Rückgegebene Ware**
  - Gegeben ist, dass ein Kunde eine schwarze Hose gekauft hat
  - Wenn er die Hose zurückgibt, dann haben wir 4 schwarze Hosen im Lager

- **Szenario 2: Umgetauschte Ware**
  - Gegeben ist, dass ein Kunde einen blauen Rock gekauft hat
  - Wenn er den Rock gegen einen schwarzen Rock tauscht, dann haben wir 3 blaue und 2 schwarze Röcke

---

### Kapitel 2.1.4 - DevOps und Testen (K2)

**Was ist DevOps?**

- Zusammenarbeit von Entwicklung und Betrieb
- Ziele: Teamautonomie, schnelles Feedback, CI/CD

---

### Kapitel 2.1.4 - CI/CD (K2)

- **Continuous Integration (CI):**
  - Regelmäßige Integration von Codeänderungen

- **Continuous Delivery (CD):**
  - Fortlaufende Auslieferung in Staging- oder Produktionsumgebungen

---

### Kapitel 2.1.4 - Vorteile aus Sicht des Testens (1/2)

- Schnelles Feedback für Codequalität
- Förderung von automatisierten Prozessen
- Besserer Blick auf nicht-funktionale Qualitätsmerkmale

---

### Kapitel 2.1.4 - Risiken und Herausforderungen (K2)

- Notwendigkeit, die DevOps-Auslieferungskette zu definieren
- Wartung von CI/CD-Werkzeugen
- Erforderliche Ressourcen für Testautomatisierung

---

### Kapitel 2.1.5 - Shift-Left-Ansatz (K2)

**Was ist der Shift-Left-Ansatz?**

- Frühes Testen im SDLC
- Review von Spezifikationen
- Testfälle vor der Implementierung

---

### Kapitel 2.1.6 - Retrospektive und Prozessverbesserung (K2)

**Retrospektiven:**

- Diskutieren von Erfolgen und Verbesserungsmöglichkeiten
- Festehalten der Ergebnisse
- Kontinuierliche Verbesserung

---

### Kapitel 2.2 - Teststufen und Testarten

**Teststufen:**

- Komponententest (Unittest)
- Komponentenintegrationstest
- Systemtest
- Systemintegrationstest
- Abnahmetest

---

### Kapitel 2.2 - Testarten (K2)

**Testarten:**

- Funktionale Tests
- Nicht-Funktionale Tests
- Black-Box-Tests
- White-Box-Tests

---

### Kapitel 2.2 - Fehlernachtest und Regressionstest (K2)

**Fehlernachtest:**

- Bestätigen der Behebung von Fehlerzuständen

**Regressionstest:**

- Überprüfung, dass Änderungen keine nachteiligen Folgen haben

---

### Kapitel 2.3 - Wartungstests (K2)

**Wartungen:**

- Korrigierend
- Anpassung an Umgebungsänderungen
- Verbesserung der Leistung oder Wartbarkeit

---

### Kapitel 2 - Schlüsselbegriffe 1

- Abnahmetest
- Black-Box-Test
- Fehlernachtest
- Funktionaler Test
- Integrationstest
- Komponententest
- Komponentenintegrationstest
- Nicht-funktionaler Test
- Regressionstest
- Shift-Left

---

### Kapitel 2 - Schlüsselbegriffe 2
- Systemintegrationstest
- Systemtest
- Testart
- Testobjekt
- Teststufe
- Wartungstest
- White-Box-Test
