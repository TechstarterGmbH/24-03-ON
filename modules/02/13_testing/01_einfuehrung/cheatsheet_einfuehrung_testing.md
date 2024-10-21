
## **Cheat Sheet: Einführung in das Softwaretesting**

### **1. Warum ist Softwaretesting wichtig?**

- **Qualität sichern**: 
  - Sicherstellen, dass die Software die Anforderungen erfüllt und benutzerfreundlich ist.
  - Beispiel: Eine fehlerfreie E-Commerce-Website führt zu mehr Kundenzufriedenheit und Umsatz.

- **Fehler frühzeitig erkennen**: 
  - Fehler in der frühen Entwicklungsphase identifizieren, um kostspielige Korrekturen später zu vermeiden.
  - Beispiel: Ein Fehler in einer Steuer-App könnte zu falschen Steuerzahlungen und hohen Strafen führen, wenn er nicht rechtzeitig behoben wird.

- **Kosten sparen**: 
  - Frühzeitiges Testen reduziert die Kosten für die Fehlerbehebung.
  - Beispiel: Ein Fehler in der Software eines Flugzeugs nach der Markteinführung wäre extrem teuer und gefährlich.

- **Gesetzliche Anforderungen erfüllen**: 
  - Tests helfen sicherzustellen, dass Software in regulierten Branchen den gesetzlichen Vorschriften entspricht.
  - Beispiel: Medizinische Software muss strengen Sicherheitsstandards entsprechen, um die Sicherheit der Patienten zu gewährleisten.

### **2. Teststufen (Test Levels)**

- **Komponententest (Unit Testing)**: 
  - Testen einzelner Komponenten oder Module der Software in Isolation.
  - Beispiel: Testen, ob eine Funktion zum Speichern von Zutaten in einer Rezept-App korrekt funktioniert.

- **Integrationstest**: 
  - Testen der Interaktion zwischen mehreren Komponenten.
  - Beispiel: Überprüfen, ob die Eingabefunktion einer App korrekt mit der Datenbank zusammenarbeitet.

- **Systemtest**: 
  - Test des gesamten Systems in einer Umgebung, die der Produktionsumgebung ähnelt.
  - Beispiel: Überprüfen, ob eine Rezepte-App alle Funktionen auf einem Smartphone ausführt.

- **Abnahmetest**: 
  - Durchführung durch den Endkunden, um zu prüfen, ob die Software die festgelegten Anforderungen erfüllt.
  - Beispiel: Ein Blogger testet eine Rezepte-App, um zu sehen, ob sie für die tägliche Verwendung geeignet ist.

### **3. Testarten (Types of Testing)**

- **Funktionstest (Functional Testing)**: 
  - Überprüfung, ob die Software alle spezifizierten Funktionen korrekt ausführt.
  - Beispiel: Testen der Suchfunktion in einer Rezepte-App.

- **Usability-Test**: 
  - Testen der Benutzerfreundlichkeit und Zugänglichkeit der Software.
  - Beispiel: Beurteilen, ob eine App intuitiv und leicht zu navigieren ist.

- **Sicherheitstest (Security Testing)**: 
  - Überprüfung auf Schwachstellen, die zu einem Sicherheitsverstoß führen könnten.
  - Beispiel: Sicherstellen, dass Benutzerdaten in einer App verschlüsselt gespeichert werden.

- **Leistungstest (Performance Testing)**: 
  - Bewertung der Softwareleistung unter verschiedenen Bedingungen, einschließlich Lasttests.
  - Beispiel: Testen, ob eine App schnell bleibt, wenn viele Nutzer gleichzeitig darauf zugreifen.

### **4. Prinzipien des Testens**

1. **Testen zeigt die Anwesenheit von Fehlern**: Fehler können durch Tests gefunden, aber nie vollständig ausgeschlossen werden.
2. **Exhaustives Testen ist unmöglich**: Es ist unmöglich, alle möglichen Szenarien zu testen.
3. **Frühzeitiges Testen**: Je früher der Testprozess beginnt, desto effektiver und kostensparender.
4. **Defekte Häufung**: Die meisten Fehler treten in einigen wenigen Modulen auf.
5. **Pesticide-Paradoxon**: Die Wiederholung derselben Tests führt dazu, dass keine neuen Fehler gefunden werden; Tests müssen regelmäßig aktualisiert werden.
6. **Testen ist kontextabhängig**: Die Testmethoden variieren je nach Anwendung (z.B. medizinische Software vs. Spiele-App).
7. **Irrtum ist menschlich**: Tests sollten von mehreren unabhängigen Testern überprüft werden, um Voreingenommenheit zu vermeiden.

### **5. Grundlegender Testprozess**

- **Testplanung und Steuerung**: 
  - Definition der Ziele, des Umfangs und der Ressourcen für das Testen.
  - Beispiel: Festlegen, welche Teile einer Banking-App getestet werden müssen.

- **Testanalyse**: 
  - Identifizieren, welche Anforderungen getestet werden müssen.
  - Beispiel: Analysieren, welche Funktionen einer App besonders fehleranfällig sind.

- **Testentwurf**: 
  - Erstellung von Testfällen und Testszenarien.
  - Beispiel: Erstellen eines Testfalls, der prüft, ob die Login-Funktion einer App sicher ist.

- **Testimplementierung und -ausführung**: 
  - Durchführung der Tests und Aufzeichnung der Ergebnisse.
  - Beispiel: Testen einer App auf verschiedenen Betriebssystemen und Geräten.

- **Testauswertung und Bericht**: 
  - Bewertung der Testergebnisse und Entscheidung, ob weitere Tests erforderlich sind.
  - Beispiel: Überprüfen, ob eine App alle kritischen Anforderungen erfüllt.

- **Testabschlussaktivitäten**: 
  - Dokumentation und Archivierung der Testergebnisse und Lessons Learned.
  - Beispiel: Speicherung aller Testfälle und -ergebnisse für zukünftige Referenzen.

### **6. Psychologie des Testens**

- **Kritische Denkweise**: 
  - Tester sollten immer nach Fehlern suchen und nicht davon ausgehen, dass die Software fehlerfrei ist.
  - Beispiel: Ein Tester prüft auch ungewöhnliche Anwendungsfälle, die nicht offensichtlich sind.

- **Unabhängigkeit**: 
  - Tester sollten unabhängig von den Entwicklern sein, um objektive Ergebnisse zu gewährleisten.
  - Beispiel: Ein externer Tester prüft die Software auf Schwächen, die der Entwickler möglicherweise übersehen hat.

- **Konstruktive Konflikte**: 
  - Testteams sollten in der Lage sein, Feedback zu geben und zu empfangen, um die Qualität zu verbessern.
  - Beispiel: Ein Tester gibt detailliertes Feedback zu einem Fehler, das den Entwickler zur Verbesserung anregt.

- **Verständnis und Kommunikation**: 
  - Tester müssen klar kommunizieren können und die Perspektive der Endnutzer verstehen.
  - Beispiel: Tester erklären, warum ein Button in einer App für Nutzer schwer zugänglich ist.

### **Zusammenfassung**

Softwaretesting ist ein kritischer Prozess in der Softwareentwicklung, der sicherstellt, dass die Software fehlerfrei, sicher und benutzerfreundlich ist. Die Anwendung der richtigen Teststufen, -arten und -prinzipien sowie ein grundlegendes Verständnis der Psychologie des Testens tragen wesentlich zur Qualität und zum Erfolg einer Software bei.

