---
marp: true
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

# Funktionstests, Akzeptanztests und Regressionstests

---

## Überblick

- **Funktionstests**: Überprüfen einzelne Funktionen einer Anwendung.
- **Akzeptanztests**: Validieren, ob die Software die Geschäftsanforderungen erfüllt.
- **Regressionstests**: Stellen sicher, dass neue Änderungen keine negativen Auswirkungen haben.

---

# Funktionstests – Beispiele

1. **Login-Funktionalität:**
   - Testfall: Überprüfen, ob Benutzer mit gültigen Anmeldedaten erfolgreich auf das System zugreifen können.
   - Erwartetes Ergebnis: Benutzer wird erfolgreich angemeldet und zur Startseite weitergeleitet.

---

2. **Passwort-Wiederherstellung:**
   - Testfall: Testen, ob die "Passwort vergessen"-Funktion eine E-Mail zur Passwortzurücksetzung sendet.
   - Erwartetes Ergebnis: E-Mail wird an die registrierte E-Mail-Adresse gesendet.

---

3. **Einkaufswagen in einem Online-Shop:**
   - Testfall: Überprüfen, ob Produkte korrekt zum Einkaufswagen hinzugefügt werden.
   - Erwartetes Ergebnis: Produkt erscheint im Warenkorb, Gesamtpreis wird richtig berechnet.

---

# Akzeptanztests – Beispiele

1. **Benutzerregistrierung in einer App:**
   - Testfall: Benutzer kann sich erfolgreich registrieren.
   - Erwartetes Ergebnis: Benutzer erhält eine Bestätigungs-E-Mail und kann sich einloggen.

---

2. **Bestellprozess in einem Online-Shop:**
   - Testfall: Benutzer kann Bestellung erfolgreich abschließen.
   - Erwartetes Ergebnis: Bestellung wird bestätigt und im System erfasst.

---

3. **System-Performance unter Last:**
   - Testfall: System bleibt stabil bei 1.000 gleichzeitigen Benutzern.
   - Erwartetes Ergebnis: Webseite bleibt schnell und fehlerfrei.

---

# Regressionstests – Beispiele

1. **Login-Funktion nach Änderung:**
   - Testfall: Überprüfung der Login-Funktion nach Hinzufügen der Zwei-Faktor-Authentifizierung.
   - Erwartetes Ergebnis: Login funktioniert weiterhin mit und ohne Zwei-Faktor-Authentifizierung.

---

2. **Zahlungsfunktionen nach Updates:**
   - Testfall: Überprüfung der Zahlungsmethoden nach einem Update des Zahlungs-Gateways.
   - Erwartetes Ergebnis: Alle Zahlungsmethoden funktionieren ordnungsgemäß.

---

3. **Benutzeroberfläche nach Design-Update:**
   - Testfall: Überprüfung der Benutzeroberfläche nach einem Update.
   - Erwartetes Ergebnis: Alle Schaltflächen, Links und Menüs funktionieren wie vorgesehen.




