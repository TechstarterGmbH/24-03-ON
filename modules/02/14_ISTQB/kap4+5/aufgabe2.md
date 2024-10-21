## Äquivalenzklassenbildung
Bilde für das Beispiel, diesmal für ein Online-Bestellsystem für Lebensmittel Äquivalenzklassen.
Die soll in einer Tabelle geschehen

### (Artikelanzahl, Zahlungsmethode, Lieferadresse, Altersverifikation)

#### Äquivalenzklassen für die Parameter

| **Parameter**         | **Äquivalenzklasse** | **Beschreibung**                          |
|-----------------------|----------------------|------------------------------------------|
| **Artikelanzahl**     | Ungültige Klasse     | < 1 (keine Bestellung möglich)           |
|                       | Gültige Klasse 1     | 1-5 (normale Bestellung)                 |
|                       | Gültige Klasse 2     | 6-20 (große Bestellung)                  |
|                       | Ungültige Klasse     | > 20 (nicht zulässig)                    |
| **Zahlungsmethode**   | Ungültige Klasse     | Keine (Zahlungsmethode nicht angegeben)  |
|                       | Gültige Klasse 1     | Kreditkarte                               |
|                       | Gültige Klasse 2     | PayPal                                    |
|                       | Gültige Klasse 3     | Lastschrift                               |
|                       | Ungültige Klasse     | Geschenkkarte (nicht akzeptiert)         |
| **Lieferadresse**     | Ungültige Klasse      | Leer (keine Adresse angegeben)           |
|                       | Gültige Klasse       | Vollständige Adresse                     |
|                       | Ungültige Klasse      | Unvollständige Adresse                   |
| **Altersverifikation**| Ungültige Klasse      | Unter 18 (nicht berechtigt zu bestellen) |
|                       | Gültige Klasse        | 18 und älter                             |

#### Testfälle basierend auf den Äquivalenzklassen

| **Testfall** | **Artikelanzahl** | **Zahlungsmethode** | **Lieferadresse** | **Altersverifikation** |     |
| ------------ | ----------------- | ------------------- | ----------------- | ---------------------- | --- |
| Testfall Nr  | -                 | -                   | -                 | -                      |     |
|              |                   |                     |                   |                        |     |
|              |                   |                     |                   |                        |     |
| <br>         |                   |                     |                   |                        |     |

| **Erwartetes Ergebnis**                                                              |
| ------------------------------------------------------------------------------------ |
| Bestellung erfolgreich   <br><br>ODER<br>                       Fehler: Grund nennen |

## Entscheidungstabelle

**Übung:**  
Erstelle eine Entscheidungstabelle für ein Kreditsystem:
- Wenn das Einkommen über 50.000 € und die Bonität hoch ist, wird der Kredit bewilligt.
- Wenn das Einkommen unter 50.000 € und die Bonität niedrig ist, wird der Kredit abgelehnt.
- Alle anderen Kombinationen erfordern eine manuelle Prüfung.

## Zustandsübergangstest

**Übung:**  
Erstelle einen Zustandsübergangstest für eine Fahrkartenmaschine mit den Zuständen:
1. **Bereit** (Warten auf Geld)
2. **Zahlung abgeschlossen** (Ticket ausdrucken)
3. **Ticket gedruckt**

Ereignisse:
- Geldeinwurf, Ticket drucken, Ticket entnehmen

## Anweisungs- und Zweigtests

Erstelle für folgende Funktion Anweisungs- und Zweigtests
Hier ist ein anderes Beispiel, ähnlich dem Bestellungsbeispiel, das den Unterschied zwischen Anweisungstest und Zweigtest verdeutlicht:

```python
def bewerte_note(note, ist_bonus):
    ergebnis = ""
    if note <= 1.5:
        ergebnis = "sehr gut"
    elif note <= 2.5:
        ergebnis = "gut"
    else:
        ergebnis = "befriedigend oder schlechter"
    
    if ist_bonus:
        ergebnis += " (mit Bonus)"
    
    return ergebnis
```

## exploratives Testen

**Übung:**  
Du testest eine E-Commerce-Website, die dir bisher unbekannt ist. Wie würdest du explorativ vorgehen?
- Beschreibe in kurzen Schritten, wie du verschiedene Bereiche der Website testen würdest 

## checklistenbasiertes Testen
**Übung:**  
Erstelle eine Checkliste für das Testen eines Kalendersystems, in dem Nutzer Termine planen und verwalten können. Denke an die wichtigsten Funktionen, die überprüft werden müssen.

## 3- Punkt- Schätzung

### Aufgabe: Testaufwandsschätzung für ein E-Commerce-Projekt

Sie sind der Testmanager eines Projekts zur Entwicklung eines neuen E-Commerce-Systems. Das System soll grundlegende Funktionen wie Produktsuche, Warenkorb, Bestellabwicklung und Zahlungsintegration bereitstellen. Mithilfe der **Drei-Punkt-Schätzung** sollen Sie den Testaufwand für verschiedene Testszenarien abschätzen.

#### Gegebene Informationen:
- Das System bietet folgende Funktionen: **Produktsuche**, **Warenkorbfunktion**, **Bestellprozess** und **Zahlungsintegration**.
- Das **Entwicklungsteam** besteht aus 8 Entwicklern.
- Der Entwicklungszeitraum beträgt **4 Monate**.

#### Aufgabenstellung:

1. Geben Sie für jedes der folgenden Testszenarien eine optimistische (a), wahrscheinlichste (m) und pessimistische (b) Schätzung in Personentagen an:
   a) Funktionale Tests  
   b) Usability-Tests  
   c) Sicherheits- und Datenschutztests

2. Berechnen Sie für jedes Szenario den erwarteten Aufwand (E) mit der Formel:
   $$E = \frac{a + 4m + b}{6}$$

3. Summieren Sie die erwarteten Aufwände aller Szenarien, um den Gesamttestaufwand zu berechnen.

4. Schätzen Sie, wie viele Tester benötigt werden, wenn der Testzeitraum **1,5 Monate** (30 Arbeitstage) beträgt.

