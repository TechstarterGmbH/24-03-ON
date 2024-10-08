---

class: invert

---

# Einführung in HTTP und Postman

---

## Einführung in HTTP

---

### Was ist HTTP?

- HTTP steht für Hypertext Transfer Protocol und ist wie eine Sprache, die Webbrowser und Server verwenden, um miteinander zu kommunizieren.
- Man kann sich HTTP vorstellen wie die Bestellung in einem Restaurant: Du gibst deine Bestellung (Anfrage) auf, und der Kellner (Server) bringt dir dein Essen (Antwort).

---

### Wie funktioniert HTTP?

- Verbindungsaufbau über TCP/IP zwischen einem Client (z.B. Webbrowser) und einem Server.
- Der Client sendet eine Anfrage und der Server antwortet darauf basierend auf den Anforderungen.
- Wie ein Telefonanruf: Du wählst eine Nummer (URL), stellst eine Frage und bekommst eine Antwort.

---

### HTTP-Anforderungen und -Antworten

- **Anforderungen** beinhalten Methoden wie GET oder POST, den Ziel-URL und optionale Header und Body-Daten.
- **Antworten** beinhalten einen Statuscode, Header und oft eine Nachricht oder Daten als Body.

---

### HTTP-Methoden

---

#### GET

- Wie das Lesen einer Menükarte in einem Restaurant, um zu sehen, was angeboten wird.

#### POST

- Wie das Bestellen eines Gerichts, indem man Details (z.B. Essenswünsche) angibt.

---

#### PUT

- Wie das Ändern einer Bestellung, bevor sie serviert wird.

#### DELETE

- Wie das Stornieren einer Bestellung.

---

### Was sind HTTP-Statuscodes?

- Statuscodes sind wie Antworten von einem Kellner:
  - 200 OK: "Hier ist dein Essen."
  - 404 Not Found: "Sorry, das haben wir nicht."
  - 500 Internal Server Error: "In unserer Küche ist etwas schiefgelaufen."

---

### HTTP-Protokollversionen

- Verschiedene Versionen (z.B. HTTP/1.1, HTTP/2) sind wie unterschiedliche Arten von Kellner-Training, einige sind schneller und effizienter als andere.

---

## Einführung in Postman

---

### Was ist Postman?

- Postman ist ein Werkzeug für Entwickler, um HTTP-Anfragen zu senden und Antworten zu analysieren, wie ein Testkoch, der Rezepte ausprobiert, bevor sie auf die Speisekarte kommen.

---

### Die Benutzeroberfläche von Postman verwenden

- Überblick über wichtige Bereiche: Anfrage-Erstellung, Antwort-Bereich, Sammlungen und Umgebungsvariablen.
- Eine Sammlung von Anfragen nennt man eine `Collection`.
- Jede `Collection` kann mehrere Anfragen enthalten
- Eine Anfrage besteht aus einer Methode, einer URL, Headern und Body-Daten.
- Die Antwort enthält einen Statuscode, Header und Body-Daten.

---

### Erstellen einer neuen Anfrage in Postman

- Auswahl der Methode
- Eingabe der URL
- (optional) Hinzufügen von Headern und Body-Daten

---

## Arbeiten mit HTTP in Postman

---

### Collections in Postman

- Sammlungen in Postman sind wie ein Rezeptbuch, in dem man verschiedene Anfragen organisieren und speichern kann.
- Wenn wir eine API testen wollen, erstellen wir normalerweise eine Collection mit allen Endpunkten.
- Jede Anfrage in der Collection kann mit verschiedenen Parametern und Daten konfiguriert werden.

---

### HTTP-Anforderungen in Postman erstellen

- Schritt-für-Schritt-Anleitung, um verschiedene HTTP-Methoden zu verwenden und was dabei zu beachten ist.

---

### Übertragen von Daten mit Postman

---

#### Formulardaten

- Übermittlung von Daten über Formulare ähnlich wie das Ausfüllen eines Bestellformulars im Restaurant.

#### JSON

- Senden von Daten im JSON-Format, vergleichbar mit einer speziell formatierten Bestellung.

---
