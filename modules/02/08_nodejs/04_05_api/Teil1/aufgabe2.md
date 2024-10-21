# Aufgabe 2

### Aufgabe: Erstellung einer Einkaufsliste-Anwendung mit Node.js, Express und SQLite

Ziel: Erstelle eine Node.js-Anwendung, die SQLite verwendet, um eine Datenbank im Arbeitsspeicher zu erstellen, Einkaufslistenartikel einzufügen und über einen einfachen HTTP-Server abzurufen.

### Beispielhafte Tabelle für `einkaufsliste`

| id  | artikel | menge | gekauft |
|-----|---------|-------|---------|
| 1   | Milch   | 2     | 0       |


---

### Ziel für die Einksaufsliste-Anwendung

| Schritt                | Beschreibung                                                                                                    |
| ---------------------- | --------------------------------------------------------------------------------------------------------------- |
| SQLite Einbindung      | Laden des SQLite-Moduls und Erstellen einer Datenbank im Arbeitsspeicher                                        |
| Datenbank-Operationen  | Sicherstellen, dass alle Operationen nacheinander ausgeführt werden                                             |
| Erstellen der Tabelle  | Tabelle `einkaufsliste` mit den Spalten `id`, `artikel`, `menge` und `gekauft` erstellen                        |
| Einfügen von Daten     | Einfügen eines oder mehrerer Datensätze in die Tabelle                                                          |
| Abfragen von Daten     | Abrufen und Anzeigen aller Datensätze aus der Tabelle                                                           |
| Server mit Express     | Einrichten eines Express-Servers und Parsen von JSON-Daten                                                      |
| Route für Startseite   | Definieren einer Route, die eine Willkommensnachricht zurücksendet                                              |
| Route für alle Artikel | Definieren einer Route, die alle Artikel aus der Datenbank zurückgibt                                           |
| Server starten/beenden | Starten und Beenden des Servers und sicherstellen, dass die Datenbankverbindung bei Beendigung geschlossen wird |

