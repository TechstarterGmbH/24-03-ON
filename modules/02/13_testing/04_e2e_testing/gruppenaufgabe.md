# Gruppenaufgabe

## Szenario

- Ihr seid im Testing Team für eine Website verantwortlich
- Für die Website sollen nun End-to-End-Tests geschrieben werden
- Hierfür soll das Tool Cypress verwendet werden

## Schritte

1. Erstelle einen neuen Ordner und öffne diesen in deinem Editor

2. Initialisiere ein neues NPM Projekt
```bash
npm init -y
```

3. Installiere Cypress als Dev-Dependency
```bash
npm install cypress --save-dev
```

4. Installiere den Live-Server als Dev-Dependency
```bash
npm install live-server --save-dev
```

5. Erstelle das NPM Test-Script für Cypress in der `package.json`
```json
{
  "scripts": {
    "test": "cypress open",
    "start": "live-server"
  }
}
```


6. Im Google Classroom sind zwei HTML Dateien verlinkt, lade beide Dateien herunter und speichere sie in deinem Projektverzeichnis

- `index.html`
- `thank-you.html`

- Es ist wichtig, dass beide Dateien im Root deines Projekts liegen

7. Starte den `live-server` um die HTML Dateien im Browser zu öffnen
```bash
npm start
```

- Jetzt sollte sich dein Browser öffnen und eine Restaurant Website anzeigen
- Notiere dir die URL der Website, die der `live-server` verwendet
- In meinem Fall ist das `http://127.0.0.1:8080/`

8. Öffne ein neues Terminal und starte Cypress
```bash
npm test
```

9. Klicke jetzt auf `E2E Testing` um alle wichtigen Konfigurationsdateien zu erstellen

- Klicke anschließend auf `Continue` und wähle den Google Chrome Browser aus

10. Klicke anschließend auf `Create new Spec` und dann auf `Create Spec`

11. In deinem Editor sollte jetzt ein neuer Ordner `cypress/e2e` und eine neue Datei `spec.cy.js` erstellt worden sein. Öffne die Datei

12. Ändere die URL in der `spec.cy.js` Datei auf die URL deiner Restaurant Website (die wir in Schritt 7 notiert haben)

```javascript
describe('template spec', () => {
  it('passes', () => {
    cy.visit('http://127.0.0.1:8080/')
  })
})
```

- Stelle sicher, dass dein `live-server` noch läuft, damit die Website erreichbar ist

13. Führe den Test aus, indem du auf den Dateinamen in Cypress klickst

- Ist der Test erfolgreich?

14. Erstelle einen neuen Test, der den `About` Link im Header klickt und danach sicherstellt, dass die URL jetzt ein `#about` enthält

15. Erstelle einen weiteren Test, der den `Contact` Link im Footer klickt und danach sicherstellt, dass die URL jetzt ein `#contact` enthält

```javascript

cy.get('a[href="#about"]').click()
cy.url().should('include', '#about')
```

16. Erstelle einen weiteren Test, der die Karte anzeigt, wenn der `Menu` Link im Header geklickt wird

```javascript
cy.get('a[href="#menu"]').click()
cy.url().should('include', '#menu')
```

- Mit `cy.get()` kannst du Elemente auf der Seite finden und mit `click()` kannst du auf diese Elemente klicken

17. Erstelle einen weiteren Test, der den `Contact` Link im Header klickt und überprüft ob das `#contact` in der URL enthalten ist

18. Erstelle einen weiteren Test, der das Kontaktformular ausfüllt und abschickt

- Am Ende soll überprüft werden, ob die `Thank You` Seite angezeigt wird

19. Freiwillig:
- Erstelle einen weiteren Test, der überprüft ob, dass wenn kein Name angegeben wird, dass auch kein Formular abgeschickt werden kann
- Erstelle einen weiteren Test, der checkt dass ohne Angabe einer Größe (How many people) auch kein Formular abgeschickt werden kann
