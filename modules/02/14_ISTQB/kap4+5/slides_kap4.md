---
marp: false
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


## Kapitel 4 - Testanalyse und -entwurf

### Kapitel 4.1 - Testverfahren im Überblick (K2)
- **Testverfahren:** Unterstützen bei Testanalyse und -entwurf
- **Arten der Testverfahren:**
  - Black-Box-Testverfahren
  - White-Box-Testverfahren
  - Erfahrungsbasierte Testverfahren

### Kapitel 4.1 - Testverfahren im Überblick (K2)

- **Black-Box-Testverfahren:** Keine Kenntnis der internen Struktur, Testfälle unabhängig von Implementierung
- **White-Box-Testverfahren:** Basiert auf Analyse der internen Struktur, Testfälle abhängig vom Entwurf
- **Erfahrungsbasiertes Verfahren:** Nutzt Erfahrung und Wissen von Testern, häufig ergänzend

### Kapitel 4.2.1 - Äquivalenzklassenbildung (K3)
- **Äquivalenzklassen:** Daten in Klassen unterteilt
- **Gültige und ungültige Klassen:** Tests für jede Klasse
- **Überdeckungselemente:** Klassen, die getestet werden

### Kapitel 4.2.1 - Äquivalenzklassenbildung (K3)

- **Überdeckung:** Prozentsatz der getesteten Klassen
- **Each-Choice-Überdeckung:** Jede Klasse aus jeder Gruppe testen

### Kapitel 4.2.2 - Grenzwertanalyse (K3)
- **Grenzwertanalyse:** Überprüfung der Grenzen von Äquivalenzklassen
- **2-Wert- und 3-Wert-Grenzwertanalyse:** Testen von Grenzwerten und Nachbarn

### Kapitel 4.2.3 - Entscheidungstabellentest (K3)
- **Entscheidungstabellen:** Tabelle für Systemanforderungen und Ergebnisse
- **Spalten:** Kombinationen von Bedingungen

### Kapitel 4.2.4 - Zustandsübergangstest (K3)
- **Zustandsübergangsdiagramm:** Modelliert Systemverhalten
- **Zustandstabelle:** Zeigt Übergänge und ungültige Übergänge

#### Überdeckungskriterien:
- Überdeckung aller Zustände
- Überdeckung der gültigen Übergänge
- Überdeckung aller Übergänge