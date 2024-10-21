### Funktionstests

**Einleitung:** Funktionstests, auch als funktionale Tests bekannt, sind darauf ausgelegt, sicherzustellen, dass die einzelnen Funktionen eines Systems wie erwartet arbeiten. Diese Tests überprüfen, ob bestimmte Funktionen korrekt implementiert sind und die beabsichtigten Ergebnisse liefern. Der Fokus liegt auf der Validierung der Kernfunktionen und der Benutzerinteraktion, um sicherzustellen, dass alle systemrelevanten Aufgaben ordnungsgemäß durchgeführt werden.

**Beispiel-Testfälle:**

**1. Login-Funktionalität:**
   - **Testfall:** Überprüfen, ob Benutzer mit gültigen Anmeldedaten erfolgreich auf das System zugreifen können.
   - **Erwartetes Ergebnis:** Der Benutzer wird erfolgreich angemeldet und auf die Startseite weitergeleitet.

**2. Passwort-Wiederherstellung:**
   - **Testfall:** Testen, ob die "Passwort vergessen"-Funktion eine E-Mail zur Passwortzurücksetzung an die registrierte E-Mail-Adresse sendet.
   - **Erwartetes Ergebnis:** Die E-Mail zur Passwortzurücksetzung wird an die angegebene E-Mail-Adresse gesendet.

**3. Einkaufswagen in einem Online-Shop:**
   - **Testfall:** Überprüfen, ob Produkte erfolgreich in den Einkaufswagen gelegt und die Gesamtbeträge korrekt berechnet werden.
   - **Erwartetes Ergebnis:** Das Produkt wird im Warenkorb angezeigt, und der Gesamtpreis wird korrekt berechnet.

### Akzeptanztests

**Einleitung:** Akzeptanztests überprüfen, ob ein System oder eine Anwendung die festgelegten Anforderungen und Erwartungen der Benutzer oder Stakeholder erfüllt. Diese Tests stellen sicher, dass das System aus Sicht des Endbenutzers bereit ist und die wichtigsten Geschäftsprozesse und -anforderungen korrekt und vollständig unterstützt werden. Akzeptanztests werden oft in der letzten Phase der Softwareentwicklung durchgeführt, um die Eignung für den produktiven Einsatz zu bestätigen.

**Beispiel-Testfälle:**

**1. Benutzerregistrierung in einer App:**
   - **Testfall:** Der Benutzer kann sich erfolgreich registrieren, indem er das Anmeldeformular mit allen erforderlichen Daten ausfüllt.
   - **Erwartetes Ergebnis:** Der Benutzer erhält eine Bestätigungs-E-Mail und kann sich anschließend in die App einloggen.

**2. Bestellprozess in einem Online-Shop:**
   - **Testfall:** Der Benutzer kann eine Bestellung von der Produktauswahl bis zur Zahlung erfolgreich abschließen.
   - **Erwartetes Ergebnis:** Die Bestellung wird bestätigt, der Benutzer erhält eine Bestätigungs-E-Mail, und die Bestellung erscheint im Backend-System.

**3. System-Performance unter Lastbedingungen:**
   - **Testfall:** Das System bleibt stabil und reagiert weiterhin schnell, wenn 1.000 Benutzer gleichzeitig auf eine Webseite zugreifen.
   - **Erwartetes Ergebnis:** Die Seite lädt ohne Verzögerungen oder Fehler, und alle Benutzer können die gewünschten Aktionen ausführen.

### Regressionstests

**Einleitung:** Regressionstests sind darauf ausgelegt, sicherzustellen, dass Änderungen oder Updates am System keine bestehenden Funktionen oder Merkmale beeinträchtigt haben. Diese Tests sind besonders wichtig nach der Implementierung neuer Funktionen, Fehlerbehebungen oder Systemaktualisierungen. Ziel ist es, mögliche Regressionen oder unbeabsichtigte Nebeneffekte zu identifizieren, um die Stabilität und Konsistenz der Software zu gewährleisten.

**Beispiel-Testfälle:**

**1. Überprüfung der Login-Funktion nach einer Änderung:**
   - **Testfall:** Nachdem eine neue Funktion zur Zwei-Faktor-Authentifizierung hinzugefügt wurde, werden bestehende Login-Funktionen getestet, um sicherzustellen, dass sie weiterhin ordnungsgemäß funktionieren.
   - **Erwartetes Ergebnis:** Benutzer können sich sowohl mit als auch ohne Zwei-Faktor-Authentifizierung erfolgreich anmelden, je nach den Einstellungen.

**2. Prüfung von Zahlungsfunktionen nach Updates:**
   - **Testfall:** Nach einem Update der Zahlungs-Gateway-Integration wird überprüft, ob alle Zahlungsmethoden (Kreditkarte, PayPal, etc.) noch funktionieren.
   - **Erwartetes Ergebnis:** Alle Zahlungsmethoden funktionieren weiterhin ordnungsgemäß, und Transaktionen werden korrekt durchgeführt.

**3. Test der Benutzeroberfläche nach einem Design-Update:**
   - **Testfall:** Nach einem Update des Frontends wird geprüft, ob alle Schaltflächen, Links und Menüs noch wie erwartet funktionieren.
   - **Erwartetes Ergebnis:** Die Benutzeroberfläche ist voll funktionsfähig, und alle interaktiven Elemente reagieren wie vorgesehen.