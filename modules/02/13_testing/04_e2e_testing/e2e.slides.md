---

class: invert

---

# Einführung in End-To-End Tests
## Mit Cypress

---

## Einführung

---

### Was sind End-to-End-Tests?

---

### Was sind End-to-End-Tests?

- **End-to-End (E2E)-Tests** simulieren die Interaktion eines Nutzers mit einer Anwendung von Anfang bis Ende.
- Vergleichbar mit einer Restaurant-Bestellung: Ein E2E-Test prüft, ob die Bestellung korrekt aufgenommen wird, der Koch das richtige Essen zubereitet und das Gericht korrekt serviert wird.
- Ziel: Sicherstellen, dass alle Teile des Systems korrekt zusammenarbeiten.

---
  
### Warum ist End-to-End-Testing wichtig?

- Es stellt sicher, dass alle Komponenten einer Anwendung nahtlos zusammenarbeiten.
- Verhindert „Überraschungen“ in der Produktion: Durch das Testen der gesamten Benutzererfahrung wird verhindert, dass Fehler übersehen werden.
- Beispiel: Der Checkout-Prozess eines Online-Shops – es reicht nicht, nur die Zahlung zu testen; auch Warenkorb, Produktseite und Versand müssen funktionieren.

---

### Vergleich von End-to-End-Tests mit anderen Testarten

- **Unit-Tests** testen einzelne Funktionen isoliert – wie das Testen eines einzigen Zahnrads in einem Uhrwerk.
- **Integrationstests** prüfen, ob verschiedene Module zusammenarbeiten – wie das Zusammenfügen mehrerer Zahnräder.
- **End-to-End-Tests** überprüfen den gesamten Prozess von der Benutzereingabe bis zur Ausgabe – wie die Funktionsprüfung der kompletten Uhr.

---
  
### Werkzeuge und Frameworks für End-to-End-Tests

- **Cypress**: Ein modernes, schnelles und einfach zu bedienendes E2E-Test-Framework.
- **Selenium**: Ein älteres, weit verbreitetes Tool mit Unterstützung für viele Programmiersprachen.
- **TestCafe**: Ein weiteres Framework, das sich auf Einfachheit und Browserkompatibilität konzentriert.

---
  
### Einführung in Cypress

- **Cypress** ist ein JavaScript-basiertes Test-Framework, das für seine Einfachheit und Geschwindigkeit bekannt ist.
- Es führt Tests direkt im Browser aus und bietet ein visuelles Interface, um Tests in Echtzeit zu sehen.
- Wie eine Kamera, die einen Live-Stream deiner Anwendung aufzeichnet, während Tests ablaufen.

---

### Installation von Cypress

1. **Voraussetzung**: Node.js muss installiert sein.
2. Führe den folgenden Befehl in deinem Projektverzeichnis aus:
  ```bash
  npm install cypress --save-dev
  ```
3. Starte Cypress:
  ```bash
  npx cypress open
  ```

---

## Grundlagen von Cypress

---

### Verstehen der Cypress Architektur

- Cypress interagiert direkt mit der Anwendung im Browser, ähnlich wie ein Puppenspieler, der die Puppen auf der Bühne steuert.
- Es ist in den Browser eingebettet und hat direkten Zugriff auf DOM, Netzwerk-Anfragen und mehr.

---

### Erste Schritte mit Cypress Tests

```javascript
describe('Meine erste Test-Suite', () => {
  it('besucht die Startseite', () => {
    cy.visit('https://example.com');
  });
});
```
- Die Funktion `cy.visit()` ruft eine Webseite auf, als würdest du den Browser öffnen und eine URL eingeben.

---

### Cypress Syntax und Konventionen

- **describe()**: Definiert eine Test-Suite, wie das Kapitel in einem Buch.
- **it()**: Definiert einen Testfall, wie ein einzelner Abschnitt in einem Kapitel.
- **cy.**: Cypress' Befehlspräfix, das Aktionen wie Klicken oder Tippen ausführt, ähnlich wie ein Roboter, der Anweisungen befolgt.

---

### Einführung in die Cypress API

- Die Cypress-API bietet Befehle für DOM-Interaktionen (Klicken, Tippen), Netzwerk-Anfragen und mehr.
- Beispiel:
  ```javascript
  cy.get('button').click();
  ```
  Dieser Code findet einen Button und klickt ihn, so wie du es mit der Maus tun würdest.

---

## Schreiben von End-to-End-Tests mit Cypress

---

### Schreiben deiner ersten Test-Suite

- Test-Suites sind Gruppen von Tests, die thematisch zusammengehören.

```javascript
describe('Login Tests', () => {
 it('sollte den Benutzer erfolgreich einloggen', () => {
   cy.visit('/login');
   cy.get('input[name="username"]').type('meinBenutzername');
   cy.get('input[name="password"]').type('meinPasswort');
   cy.get('button[type="submit"]').click();
   cy.url().should('include', '/dashboard');
 });
});
```

---

### Erstellen von Test-Cases und Test-Steps

- Testfälle (Test-Cases) beinhalten spezifische Aktionen und Erwartungen.
- **Steps**: Jeder Schritt in einem Testfall beschreibt eine einzelne Aktion oder Überprüfung, z.B. „Besuche eine Seite“, „Tippe einen Text ein“.

---

### Verstehen und Anwenden von Assertions

- Assertions sind Überprüfungen, die sicherstellen, dass eine Anwendung korrekt funktioniert.
- Beispiel:
  ```javascript
  cy.url().should('include', '/dashboard');
  ```
  Diese Assertion prüft, ob die URL den erwarteten Pfad enthält.


---

## Fehlerbehandlung und Debugging in Cypress

---

### Umgang mit Test-Fehlern

- Fehler können durch eine falsche Erwartung, einen Netzwerkfehler oder ein langsames Element verursacht werden.
- Cypress wartet automatisch auf Elemente – ähnlich wie ein Hund, der geduldig auf sein Futter wartet.

---

### Verwenden der Cypress Debugging-Tools

- Nutze `cy.pause()` und `cy.debug()`, um Tests an bestimmten Stellen anzuhalten oder die Konsole zu nutzen.
- Beispiel:
  ```javascript
  cy.get('button').click().debug();
  ```

---

### Erfassen von Screenshots und Videos

- Cypress erstellt automatisch **Screenshots** und **Videos** von fehlerhaften Tests.

