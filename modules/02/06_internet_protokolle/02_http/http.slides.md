---

class: invert

---

# Einführung in HTTP Methoden und Statuscodes

---

## Grundlagen von HTTP

---

### Was ist das HTTP Protokoll?

- **HTTP (Hypertext Transfer Protocol)** ist wie ein Kellner in einem Restaurant, der die Bestellungen der Gäste (Webanfragen) entgegennimmt und die gewünschten Gerichte (Webinhalte) serviert.
- Die **Architektur** von HTTP basiert auf einer Anfrage/Antwort-Struktur zwischen Client und Server. Stell dir vor, dein Browser fragt über HTTP nach einer Webseite und der Server antwortet mit den Inhalten dieser Seite.

---

![HTTP Kommunikationsmodell](https://upload.wikimedia.org/wikipedia/commons/b/bc/HTTP_cookie_exchange.svg)

---

### HTTP Methoden

- **Einführung in HTTP Methoden**: Methoden sind wie verschiedene Arten von Anfragen in einem Restaurant (zum Beispiel Bestellung aufgeben, Änderungen vornehmen, eine Rechnung anfordern).
- **GET Methode**: Wie das Fragen nach einer Menükarte. Es holt Informationen, ohne sie zu ändern.
- **POST Methode**: Wie das Bestellen von Essen. Es sendet Daten an den Server, um neue Informationen zu erstellen.
- **HEAD Methode**: Wie das Fragen nach dem Tagesangebot, ohne es zu bestellen. Es holt Metadaten einer Ressource.
- **PUT Methode**: Wie das Zurücksenden eines Gerichts zur Änderung. Es ersetzt eine bestehende Ressource.
- **DELETE Methode**: Wie das Stornieren einer Bestellung. Es löscht eine bestehende Ressource.
- **TRACE Methode**: Verfolgt den Weg einer Anfrage durch das Netzwerk.
- **CONNECT Methode**: Etabliert einen Tunnel zu einem Server, oft verwendet in SSL.

---

## HTTP Statuscodes

---

### Was sind HTTP Statuscodes?

- **Einführung in HTTP Statuscodes**: Statuscodes sind wie Antworten eines Kellners auf deine Bestellung - sie sagen dir, ob alles gut gelaufen ist oder ob es ein Problem gab.
- **Die Klassifizierung der HTTP Statuscodes** hilft zu verstehen, ob eine Anfrage erfolgreich war (2xx), weitergeleitet (3xx), fehlerhaft (4xx) oder serverseitig fehlerhaft (5xx) verarbeitet wurde.

---

### Der 2xx Erfolg Status Code

- **Überblick über 2xx Statuscodes**: Diese Codes sagen "Ja, deine Bestellung war erfolgreich!"
- **200 OK**: Wie ein Kellner, der sagt "Deine Bestellung ist fertig!". Es ist die Standardantwort für eine erfolgreiche HTTP-Anfrage.
- **Andere 2xx Statuscodes** beinhalten 201 (Created), 202 (Accepted) und 204 (No Content), die verschiedene Nuancen des Erfolgs darstellen.

---

### Der 3xx Status Code

- **Überblick über 3xx Statuscodes**: Diese Codes sind wie eine Umleitung zu einem anderen Tisch oder Raum in einem Restaurant.
- **301 (Moved Permanently)**: Wie wenn das Personal dich dauerhaft zu einem besseren Tisch umsetzt.
- **302 (Found)**: Ähnlich, aber nur vorübergehend.
- **Andere 3xx Statuscodes** beinhalten 303 (See Other) und 307 (Temporary Redirect).

---

### Der 4xx Client-Fehler Status Code

- **Überblick über 4xx Statuscodes**: Diese Codes sagen "Nein, da war ein Fehler in deiner Bestellung."
- **404 Not Found**: Wie wenn du ein Gericht bestellst, das nicht auf der Speisekarte steht.
- **Andere 4xx Statuscodes** beinhalten 401 (Unauthorized) und 403 (Forbidden).

---

### Der 5xx Server-Fehler Status Code

- **Überblick über 5xx Statuscodes**: Diese sagen "Tut mir leid, wir haben ein Problem in der Küche."
- **500 Internal Server Error**: Wie wenn etwas in der Küche schiefgeht und dein Gericht nicht serviert werden kann.
- **Andere 5xx Statuscodes** beinhalten 502 (Bad Gateway) und 503 (Service Unavailable).

---

## Verbindung mit dem OSI Modell

---

### HTTP im OSI Modell

- **Anwendungsschicht des OSI Modells**: HTTP arbeitet hier, wo Endbenutzer-Services wie Webbrowser und -server interagieren.
- **Transport- und Netzwerkschicht**: Unter HTTP arbeiten TCP/IP, die wie die Lieferwagen sind, die deine Bestellung (Daten) durch das Internet fahren.

![OSI Modell](https://upload.wikimedia.org/wikipedia/commons/9/9b/OSI_Model_v1.svg)

---

### Wie HTTP mit dem OSI Modell verbindet

- Stell dir das OSI Modell wie ein mehrstöckiges Restaurant vor. HTTP bedient die oberste Etage (Anwendungsschicht), während die mittleren Etagen (Transport- und Netzwerkschicht) durch TCP/IP besetzt sind, die sicherstellen, dass deine Bestellung (Daten) den richtigen Weg findet.
