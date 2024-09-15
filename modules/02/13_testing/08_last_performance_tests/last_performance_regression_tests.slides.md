---

class: invert

---

# Einführung in Last-, Performance- und Regressionstests

---

## Einführung

---

### Was sind Last-, Performance- und Regressionstests?

---

- **Lasttests** untersuchen, wie ein System unter hoher Belastung funktioniert. Stell dir vor, du möchtest wissen, wie viele Menschen gleichzeitig über eine Brücke gehen können, bevor sie zusammenbricht.

---

- **Performance-Tests** messen die Geschwindigkeit und Effizienz eines Systems. Es ist wie bei einem Auto: Du testest, wie schnell es beschleunigen kann und wie es sich bei hoher Geschwindigkeit verhält.

---

- **Regressionstests** stellen sicher, dass neue Änderungen keine bestehenden Funktionen beeinträchtigen. Denk an eine Uhr: Wenn du das Zifferblatt austauschst, überprüfst du, ob die Zeiger noch richtig laufen.

---

## Übersicht über Testtypen

---

### Funktionalitätstests vs. Nicht-Funktionalitätstests

- **Funktionalitätstests**:

  - Überprüfen, ob das System die spezifizierten Aufgaben korrekt ausführt.
  - Funktionieren die Dinge so, wie sie sollen?
  - *Beispiel*: Prüfen, ob ein Login-Formular die richtigen Anmeldeinformationen akzeptiert.

- **Nicht-Funktionalitätstests**:

  - Bewerten die Leistung, Sicherheit und Benutzerfreundlichkeit eines Systems.
  - *Beispiel*: Messen, wie schnell die Website lädt oder wie sie unter hoher Last reagiert.

---

#### Verschiedene Arten Funktionalitätstests

- **Unit-Tests**:
  - Testen einzelne Komponenten oder Module.
  - *Beispiel*: Überprüfen, ob eine Funktion korrekt addiert.

- **Integrationstests**:
  - Testen, wie Komponenten zusammenarbeiten.
  - *Beispiel*: Überprüfen, ob Daten korrekt zwischen Modulen übertragen werden.

- **Regressionstests**:
  - Überprüfen, ob neue Änderungen alte Funktionen beeinträchtigen.
  - *Beispiel*: Nach einem Update sicherstellen, dass die Anwendung noch wie erwartet funktioniert.

---

#### Verschiedene Arten Nicht-Funktionalitätstests

- **Lasttests**:
  - Testen, wie das System unter hoher Last reagiert.
  - *Beispiel*: Überprüfen, ob eine Website Millionen von gleichzeitigen Benutzern bewältigen kann.

- **Performance-Tests**:
  - Messen die Geschwindigkeit und Reaktionszeit eines Systems.
  - *Beispiel*: Überprüfen, wie schnell eine Anwendung auf Benutzereingaben reagiert.

---

### Unterschied zwischen Last-, Performance- und Regressionstests

---

- **Lasttests**:

  - Fokus auf das Verhalten unter hoher Last.
  - *Ziel*: Grenzen des Systems identifizieren.
  - *Beispiel*: Testen, wie viele Benutzer gleichzeitig auf eine Website zugreifen können.

- **Performance-Tests**:

  - Messen allgemeiner Leistungsmetriken wie Geschwindigkeit und Reaktionszeit.
  - *Ziel*: Sicherstellen, dass das System effizient arbeitet.
  - *Beispiel*: Überprüfen, wie schnell eine Anwendung auf Benutzereingaben reagiert.

- **Regressionstests**:

  - Überprüfen, ob neue Änderungen alte Funktionen beeinträchtigen.
  - *Ziel*: Stabilität nach Updates gewährleisten.
  - *Beispiel*: Nach einem Software-Update sicherstellen, dass alle Funktionen noch wie erwartet funktionieren.

---

## Was sind Last-, Performance- und Regressionstests?

---

### Lasttests

#### Definition und Bedeutung

- **Definition**: Simulieren hoher Benutzeraktivität, um zu sehen, wie das System reagiert.
- **Bedeutung**:

  - Verhindern von Ausfällen bei Spitzenlast.
  - Sicherstellen der Kundenzufriedenheit durch zuverlässige Leistung.
  - Planung von Ressourcen und Kapazitäten.

- **Beispiel**: Eine E-Commerce-Website testet, ob sie den Ansturm während eines Verkaufsereignisses bewältigen kann.

---

#### Praktische Anwendung von Lasttests

- **Schritte zur Durchführung**:

  1. **Anforderungen definieren**: Welche Last soll simuliert werden?
  2. **Testumgebung einrichten**: Realistische Bedingungen schaffen.
  3. **Testszenarien erstellen**: Benutzerverhalten nachbilden.
  4. **Test ausführen**: Daten sammeln und überwachen.
  5. **Analyse der Ergebnisse**: Engpässe identifizieren.
  6. **Optimierungen durchführen**: Systemverbesserungen implementieren.

- **Beispiel**: Eine Streaming-Plattform testet, ob sie während der Premiere einer neuen Serie Millionen von gleichzeitigen Zuschauern bedienen kann.

---

#### Gemeinsame Tools für Lasttests

- **Apache JMeter**:

  - Open-Source-Tool für Last- und Performance-Tests.
  - Unterstützt verschiedene Protokolle: HTTP, FTP, JDBC usw.
  - **Ressource**: [Apache JMeter](https://jmeter.apache.org/)

- **K6**:

  - Open-Source-Tool für Skalierbarkeitstests.
  - Von Grafana Labs entwickelt.
  - Erstellung mit JavaScript.
  - **Ressource**: [K6](https://k6.io/)

- **Locust**:

  - In Python geschriebenes Lasttest-Framework.
  - Ermöglicht das Schreiben von Tests in einer einfachen, skalierbaren Art.
  - **Ressource**: [Locust](https://locust.io/)

---

### Performance Tests

#### Definition und Bedeutung

- **Definition**: Bewertung, wie schnell ein System unter bestimmten Bedingungen arbeitet.
- **Bedeutung**:

  - **Benutzererfahrung**: Langsame Systeme führen zu unzufriedenen Nutzern.
  - **Wettbewerbsvorteil**: Schnelle Anwendungen heben sich von der Konkurrenz ab.
  - **Kostenreduzierung**: Effiziente Systeme benötigen weniger Ressourcen.

---

#### Wie führt man einen Performance Test durch?

1. **Ziele setzen**:

   - Definiere klare Leistungsziele und Akzeptanzkriterien.
   - Beispiel: Die Seite muss unter 2 Sekunden laden.

2. **Testumgebung vorbereiten**:

   - Stelle sicher, dass die Umgebung die Produktionsbedingungen widerspiegelt.
   - Berücksichtige Hardware, Software und Netzwerkbedingungen.

3. **Testszenarien entwickeln**:

   - Identifiziere kritische Pfade und häufige Benutzeraktionen.
   - Simuliere reale Nutzungsmuster.

---

4. **Test ausführen**:

   - Führe die Tests zu verschiedenen Zeiten und unter verschiedenen Bedingungen durch.
   - Überwache Systemressourcen wie CPU, Speicher und Netzwerk.

5. **Ergebnisse analysieren**:

   - Vergleiche die Ergebnisse mit den festgelegten Zielen.
   - Identifiziere Bereiche mit Optimierungspotenzial.

6. **Optimierungen umsetzen**:

   - Passe Code, Datenbanken oder Infrastruktur an.
   - Wiederhole die Tests, um Verbesserungen zu bestätigen.

---

#### Gemeinsame Tools für Performance-Tests

- **NeoLoad**:

  - Unterstützt Continuous Performance Testing.
  - Integration mit DevOps-Tools.
  - **Ressource**: [NeoLoad](https://www.neotys.com/)

- **Gatling**:

  - Hohe Leistung und realistische Simulationen.
  - Unterstützt skalierbare Lasttests.
  - **Ressource**: [Gatling](https://gatling.io/)

- **BlazeMeter**:

  - Cloud-basierte Plattform für Leistungstests.
  - Kompatibel mit JMeter, Selenium und mehr.
  - **Ressource**: [BlazeMeter](https://www.blazemeter.com/)

---

### Regressionstests

#### Definition und Bedeutung

- **Definition**: Tests, die sicherstellen, dass neue Änderungen keine vorhandenen Funktionen beeinträchtigen.
- **Bedeutung**:

  - **Qualitätssicherung**: Verhindert die Einführung neuer Fehler.
  - **Vertrauen**: Baut Vertrauen in die Stabilität des Systems auf.
  - **Effizienz**: Spart Zeit und Ressourcen durch frühzeitige Fehlererkennung.

- **Beispiel**: Nach einem Software-Update überprüfen, ob alle Funktionen noch wie erwartet funktionieren.

---

#### Wann führt man Regressionstests durch?

- **Nach jeder Codeänderung**: Selbst kleine Änderungen können unerwartete Auswirkungen haben.
- **Vor jedem Release**: Um sicherzustellen, dass die neueste Version stabil ist.
- **Bei Änderungen der Umgebung**: Beispielsweise bei Updates des Betriebssystems oder der Datenbank.
- **Regelmäßig in agilen Prozessen**: Integration in kontinuierliche Integrations- und Lieferpipelines.

---

#### Tools und Techniken für Regressionstests

- **Selenium**:

  - Automatisiertes Testen von Webanwendungen.
  - Unterstützt mehrere Programmiersprachen: Java, C#, Python usw.
  - **Ressource**: [Selenium](https://www.selenium.dev/)

- **JUnit**:

  - Framework für Unit-Tests in Java.
  - Unterstützt Test-Driven Development (TDD).
  - **Ressource**: [JUnit](https://junit.org/)

- **TestComplete**:

  - Automatisiertes Testen für Desktop-, Web- und Mobilanwendungen.
  - Unterstützt Keyword-Driven und Datengetriebene Tests.
  - **Ressource**: [TestComplete](https://smartbear.com/product/testcomplete/overview/)

---

## Strategien und Planung

### Wie du erfolgreich deine Tests planst

- **Anforderungen klären**:

  - Sammle alle funktionalen und nicht-funktionalen Anforderungen.
  - Priorisiere die Testfälle basierend auf Risiken und Auswirkungen.

- **Teststrategie entwickeln**:

  - Wähle die geeigneten Testtypen und Methoden.
  - Definiere die Testumgebung und -werkzeuge.

- **Zeitplan erstellen**:

  - Setze realistische Deadlines.
  - Plane Pufferzeiten für unerwartete Probleme ein.

- **Ressourcen zuweisen**:

  - Identifiziere das benötigte Personal und die Expertise.
  - Stelle sicher, dass alle Beteiligten geschult sind.

---

### Teststrategien

#### Lastteststrategien

- **Stufenweise Belastungserhöhung**:

  - Beginne mit einer niedrigen Last und erhöhe sie schrittweise.
  - Beobachte, wie das System auf jede Erhöhung reagiert.

- **Spitzenlasttests**:

  - Simuliere plötzliche Lastspitzen, um die Belastbarkeit zu prüfen.
  - Wichtig für Systeme, die unvorhersehbaren Lasten ausgesetzt sind.

- **Dauerlasttests**:

  - Führe Tests über einen längeren Zeitraum durch.
  - Identifiziere Speicherlecks oder Performance-Abfälle über Zeit.

---

#### Performance-Teststrategien

- **Baseline-Tests**:

  - Erstelle eine Referenzleistung des Systems.
  - Nutze diese als Vergleichspunkt für zukünftige Tests.

- **Lasttests**:

  - Siehe oben.

- **Stresstests**:

  - Überlaste das System über seine Kapazitätsgrenzen hinaus.
  - Ziel ist es, zu sehen, wie das System ausfällt und ob es sich erholt.

- **Spike-Tests**:

  - Ähnlich wie Spitzenlasttests, aber mit extremen und plötzlichen Lastanstiegen.
  - Testet die Fähigkeit des Systems, sich von plötzlichen Lasten zu erholen.

---

#### Regressionsteststrategien

- **Vollständige Regression**:

  - Teste das gesamte System nach jeder Änderung.
  - Sehr gründlich, aber zeitaufwändig.

- **Selektive Regression**:

  - Teste nur die Module, die von Änderungen betroffen sind.
  - Effizienter, aber es besteht das Risiko, einige Fehler zu übersehen.

- **Automatisierte Regression**:

  - Nutze Automatisierungstools, um Tests regelmäßig und schnell durchzuführen.
  - Ideal für häufige Tests in agilen Umgebungen.

---

## Auswertung von Testergebnissen

### Wie du Testergebnisse interpretierst

- **Metriken analysieren**:

  - **Antwortzeiten**: Sind sie innerhalb der akzeptablen Grenzen?
  - **Durchsatz**: Kann das System die erwarteten Transaktionen verarbeiten?
  - **Fehlerraten**: Gibt es Anomalien oder erhöhte Fehlerquoten?

- **Trendanalysen durchführen**:

  - Vergleiche Ergebnisse über verschiedene Testläufe.
  - Identifiziere Muster oder sich entwickelnde Probleme.

- **Anomalien untersuchen**:

  - Untersuche ungewöhnliche Ergebnisse detailliert.
  - Führe Root-Cause-Analysen durch.

- **Berichte erstellen**:

  - Fasse die Ergebnisse in verständlichen Berichten zusammen.
  - Nutze Diagramme und Grafiken für bessere Visualisierung.

---

### Beispiele für gut und schlecht durchgeführte Tests

- **Gute Tests**:

  - **Klar definierte Ziele**: Jeder Test hat ein spezifisches Ziel.
  - **Reproduzierbarkeit**: Tests können unter gleichen Bedingungen wiederholt werden.
  - **Dokumentation**: Alle Schritte und Ergebnisse sind detailliert festgehalten.

- **Schlechte Tests**:

  - **Unklare Ziele**: Es ist nicht ersichtlich, was der Test erreichen soll.
  - **Mangelnde Vorbereitung**: Unvollständige oder fehlerhafte Testumgebung.
  - **Fehlende Dokumentation**: Ergebnisse sind nicht nachvollziehbar.

---

### Wann sind Tests erfolgreich abgeschlossen?

- **Erfüllung der Akzeptanzkriterien**:

  - Alle definierten Ziele und Anforderungen sind erfüllt.

- **Stabilität des Systems**:

  - Das System zeigt unter Testbedingungen keine kritischen Fehler.

- **Positive Rückmeldungen**:

  - Stakeholder sind mit den Ergebnissen zufrieden.

- **Abdeckung aller Testfälle**:

  - Alle geplanten Tests wurden durchgeführt und dokumentiert.

---

## Quellen und weiterführende Literatur

- **"Foundations of Software Testing"** von Dorothy Graham et al.
- **"Performance Testing Guidance for Web Applications"** von Microsoft Patterns & Practices.
- **Guru99 Testing Tutorials**: [guru99.com/software-testing.html](https://www.guru99.com/software-testing.html)
- **ISTQB Foundation Level Syllabus**: [istqb.org](https://www.istqb.org/)
- **OWASP Testing Guide**: [owasp.org](https://owasp.org/www-project-web-security-testing-guide/)
