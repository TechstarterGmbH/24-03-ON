---

class: invert

---

# Einführung in Test Driven Development (TDD)

---


## Was ist Test Driven Development (TDD)?

---

### Was ist das Gegenteil von TDD?

- **Traditionelle Entwicklung**: In der traditionellen Entwicklung schreibst du zuerst den Code und dann die Tests, um zu überprüfen, ob der Code funktioniert.
- **Probleme**: Dies kann dazu führen, dass Tests vernachlässigt werden oder nur nachträglich hinzugefügt werden, was zu unzureichender Testabdeckung und unerwarteten Fehlern führen kann.

---

### Definition von TDD

- Bei Test Driven Development **schreibst du zuerst die Tests und dann den Code**, um sicherzustellen, dass der Code die Anforderungen erfüllt.
- **Prozess**: Zuerst schreibst du einen Test, der die gewünschte Funktion deines Programms beschreibt. Dieser Test wird anfangs fehlschlagen, weil der Code, den er testet, noch nicht existiert.

---

### Warum brauchen wir TDD?

- **Qualitätssicherung**: TDD zwingt dich dazu, über die Anforderungen und das Design nachzudenken, bevor du den Code schreibst, was zu klarerem, besser strukturiertem und fehlerfreiem Code führt.
- **Wartung**: Es ist einfacher, den Code zu warten und zu erweitern, da du sicher bist, dass Änderungen, die Tests brechen, sofort identifiziert werden können.

---

### Allgemeiner Überblick und Vorteile von TDD

- **Effizienz**: Durch das frühe Erkennen und Beheben von Fehlern werden kostspielige Fehler in späteren Entwicklungsphasen vermieden.
- **Dokumentation**: Tests dienen als lebendige Dokumentation deines Codes. Jeder, der die Tests liest, kann verstehen, was der Code tun soll.
- **Vertrauen**: Entwickler fühlen sich sicherer, wenn sie Code ändern oder hinzufügen, da sie wissen, dass Tests vorhanden sind, um Probleme sofort aufzudecken.

---

### Geschichte von TDD

- **Ursprünge**: TDD wurde in den frühen 2000er Jahren von Kent Beck, einem der Begründer des Extreme Programming (XP), populär gemacht.
- **Entwicklung**: Ursprünglich als Technik zur Verbesserung der Codequalität und Reaktionsfähigkeit auf Kundenanforderungen in agilen Umgebungen gedacht, ist es heute eine Kernpraxis in vielen Entwicklungsprozessen.

---

## Grundlagen von TDD

---

### Der TDD-Zyklus: Rot - Grün - Refaktorisieren

- **Rot**: Schreibe einen kleinen Test für eine neue Funktion, der fehlschlägt.
- **Grün**: Schreibe gerade genug Code, damit der Test erfolgreich ist.
- **Refaktorisieren**: Verbessere den Code, ohne seine Funktionalität zu ändern, um Duplikationen zu eliminieren und die Lesbarkeit zu verbessern.
- **Zyklusdauer**: Dieser Zyklus wird schnell und häufig durchlaufen, oft mehrmals pro Stunde.

---

### Verschiedene Typen von Tests

- **Unit-Tests**: Testen einzelner Komponenten oder Funktionen.
- **Integrationstests**: Überprüfen der Interaktionen zwischen Komponenten oder Systemen.
- **Systemtests**: Bewertung des Verhaltens des gesamten Systems unter Produktionsbedingungen.
- **Akzeptanztests**: Sicherstellen, dass die Lösung den Geschäftsanforderungen und Benutzererwartungen entspricht.

---

### TDD - Fokus auf Unit-Tests

- Bei TDD liegt der Schwerpunkt auf **Unit-Tests**, da sie die kleinsten Testeinheiten sind und die Grundlage für die Entwicklung von Code bilden.

---

### Schreiben von Tests vor dem Code

---

#### Das Prinzip "Test First"

- **Vorgehensweise**: Du entwickelst Tests für neue Features, bevor du den Code schreibst, der diese Features implementiert.
- **Ziel**: Sicherstellung, dass der neue Code alle definierten Tests besteht, bevor er als fertig betrachtet wird.

---

## Praxis

---

### Ziel Heute

- Entwicklung einer Mathematik-Bibliothek
- Implementierung der Funktionen `add`, `subtract`, `multiply`, `divide`, `square`, `squareRoot`
- Schreiben von Tests für jede Funktion, bevor der Code geschrieben wird
