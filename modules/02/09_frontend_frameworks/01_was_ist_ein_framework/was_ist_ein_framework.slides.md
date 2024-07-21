---

class: invert

---

# Was ist ein Frontend Framework?

---

## Definition

---

**Was ist ein Framework?**  
- Ein Framework ist wie ein Skelett eines Hauses — es gibt die Struktur vor, auf der Entwickler aufbauen können.
- Frameworks bieten vordefinierte Funktionen und Best Practices, die die Entwicklung beschleunigen und vereinfachen.

---

**Vorteile der Verwendung von Frameworks**  

- **Erhöhte Effizienz**: Durch Wiederverwendung von Code und Funktionen wird die Entwicklungszeit drastisch reduziert.
- **Wartbarkeit**: Einheitliche Codestrukturen erleichtern das Verständnis und die Pflege des Codes durch verschiedene Entwickler.
- **Sicherheit**: Viele Sicherheitsaspekte sind bereits im Framework integriert, was das Risiko von Sicherheitslücken verringert.

---

## Ohne Frameworks - Der Weg mit HTML, CSS und JavaScript

---

**Programmierung mit HTML, CSS und JavaScript**  

- Wie wir bereits kennengelernt haben sind HTML, CSS und JavaScript die Grundbausteine jeder Web-Frontend-Entwicklung.
- Ohne Frameworks müssen Entwickler individuelle Lösungen für jede Anforderung implementieren.
- Dies kann zu ineffizienter und unübersichtlicher Codebasis führen.
- Sicherheitsaspekte müssen ebenfalls individuell implementiert werden.
- Dieser Ansatz ist jedoch immer noch weit verbreitet und kann in bestimmten Fällen sinnvoll sein.
- Einige Entwickler bevorzugen diesen Ansatz, um die volle Kontrolle über ihre Projekte zu behalten.
- Aber vor allem in größeren Projekten kann dieser Ansatz schnell unübersichtlich und schwer wartbar werden. (Spaghetti-Code)

---

**Nachteile des Weges ohne Frameworks**  

- **Arbeitseffizienz**: Jedes neue Projekt beginnt von Grund auf, was Zeit kostet.
- **Wartbarkeit**: Individueller Code kann unübersichtlich und schwer zu warten sein.
- **Sicherheit**: Jeder Entwickler muss eigene Sicherheitsmaßnahmen implementieren, was zu Inkonsistenzen führen kann.
- **State Management**: Die Verwaltung des Zustands der Anwendung kann komplex und fehleranfällig sein.

---

## Frontend und Backend - Eine Wiederholung

---

### Was ist das Frontend?

---

**Was ist das Frontend?**

- Das Frontend ist der Teil einer Software, der für die Interaktion mit dem Benutzer verantwortlich ist.
- *Das was wir in unserem Browser sehen*
- Wir verwenden HTML, CSS und JavaScript, um das Frontend zu erstellen.
- Das Frontend kommuniziert mit dem Backend, um Daten zu erhalten und zu senden.

---
  
**Frontend Technologien**  

- **HTML, CSS, JavaScript**: Wie bereits erwähnt, sind dies die Grundbausteine des Frontend-Entwicklungsprozesses.

---

### Was ist das Backend?

---

**Was ist das Backend?**

- Das Backend ist der Teil einer Software, der für die Verarbeitung von Daten und die Kommunikation mit der Datenbank verantwortlich ist.
- *Das was auf dem Server passiert*
- Das Backend erhält Anfragen vom Frontend mittels APIs und sendet die entsprechenden Daten zurück.
- Alle Datenverarbeitung und -speicherung erfolgt im Backend.

---

## Die Geschichte von Frontend Frameworks

---

**Frühe Tage des Web-Developments**  

- Ursprünglich bestanden Webseiten hauptsächlich aus statischem HTML.
- Mit der Einführung von CSS und JavaScript wurden Webseiten interaktiver und dynamischer.
- Jede Anfrage zu dem Server führte zu einer vollständigen Neuladung der Seite.

---

**Die Evolution von Frontend Frameworks**  

- Mit der Einführung von AJAX (Asynchronous JavaScript and XML) konnten Webseiten Daten asynchron nachladen, ohne die gesamte Seite neu zu laden.
- Bibliotheken wie jQuery erleichterten die Arbeit mit JavaScript und machten die Entwicklung interaktiver Webseiten einfacher.
- Das war allerdings noch immer umständlich und unübersichtlich, da Entwickler immer noch manuell auf jede Benutzerinteraktion reagieren mussten.

---

**Das Zeitalter der Single-Page-Applications (SPA)**

- Mit der Einführung von Frontend-Frameworks wie Angular, React und Vue.js wurden Single-Page-Applications (SPA) populär.
- SPAs laden nur einmal und aktualisieren nur die Teile der Seite, die sich ändern müssen.
- Dies führt zu einer schnelleren und reibungsloseren Benutzererfahrung.
- Frontend-Frameworks bieten eine strukturierte und effiziente Möglichkeit, interaktive Webanwendungen zu entwickeln.
- Sie bieten auch Funktionen wie Routing, State Management und Datenbindung, die die Entwicklung erleichtern.
- Frontend-Frameworks haben die Art und Weise, wie Webanwendungen entwickelt werden, revolutioniertr
- Das macht es einfacher, anspruchsvolle Webanwendungen zu erstellen, die reibungslos und effizient funktionieren.

---

## Vergleich von Frontend-Frameworks

**Angular vs. React vs. Vue.js**

---

- **Angular**
  - **Entwickelt von**: Google
  - **Ideal für**: Große Enterprise-Anwendungen
  - **Besonderheiten**: Typensicheres TypeScript, umfangreiches MVC-Framework
  - **Pro**: Strikte Strukturierung erleichtert Teams das Arbeiten und die Wartung
  - **Contra**: Hohe Einstiegshürde aufgrund komplexer Konzepte

---

- **React**
  - **Entwickelt von**: Facebook
  - **Ideal für**: Dynamische Single-Page-Anwendungen
  - **Besonderheiten**: Deklaratives UI, Komponenten-basierte Architektur
  - **Pro**: Große Flexibilität und umfangreiche Community, umfangreiche Bibliothek von Komponenten
  - **Contra**: JSX-Kurve und das Ökosystem kann anfänglich überwältigend sein

---

- **Vue.js**
  - **Entwickelt von**: Evan You (und die Open-Source-Community)
  - **Ideal für**: Neue Entwickler und mittlere Projekte
  - **Besonderheiten**: Einfache Integration, leichtgewichtig
  - **Pro**: Leichte Erlernbarkeit und hohe Anpassungsfähigkeit
  - **Contra**: Weniger Ressourcen als Angular oder React, obwohl die Community schnell wächst

---

- **Svelte**
  - **Entwickelt von**: Rich Harris
  - **Ideal für**: Schnelle und effiziente Webanwendungen
  - **Besonderheiten**: Kompilierung in Vanilla JavaScript, kein virtuelles DOM
  - **Pro**: Sehr schnelle und effiziente Webanwendungen, einfache Syntax
  - **Contra**: Noch relativ jung und weniger verbreitet als Angular, React oder Vue.js

---

## Einführung in die reaktive Programmierung

---

**Grundkonzepte**
  - **Datenströme**: Stellen Sie sich Daten als Fluss vor, der sich durch die Anwendung bewegt. Änderungen an einer Stelle des Flusses (Datenstroms) fließen durch die Anwendung und verändern die Benutzeroberfläche in Echtzeit.
  - **Automatische Verbreitung von Änderungen**: Wie ein Dominoeffekt reagieren UI-Komponenten automatisch, wenn sich ihre zugrundeliegenden Daten ändern.

---

**Anwendung in Frameworks**
  - **React**: Nutzt ein virtuelles DOM, um Änderungen effizient und reaktiv zu verwalten.
  - **Vue.js**: Verwendet ein reaktives Datenbindungsmodell, das es ermöglicht, UI-Updates automatisch zu handhaben, sobald sich zugrundeliegende Daten ändern.

---

### Was ist State?

---

**Definition und Bedeutung**

  - Der **State** einer Anwendung bezeichnet die Momentaufnahme der Daten oder den Zustand der Benutzeroberfläche zu einem bestimmten Zeitpunkt.
  - Wie das Gedächtnis einer Anwendung – es speichert Informationen über die Interaktionen des Benutzers und andere relevante Daten, die den aktuellen Zustand der Anwendung beeinflussen.

---

**Wichtigkeit in der Entwicklung**
  - **Dynamische Benutzeroberflächen**: Der State ermöglicht es Webanwendungen, dynamisch auf Benutzereingaben zu reagieren. Ändert sich der State, ändert sich auch die Anzeige in der Benutzeroberfläche.
  - **Benutzererfahrung**: Ein gut verwalteter State sorgt für eine flüssige und responsive Benutzererfahrung, indem Zustandsänderungen effizient verwaltet werden.

---

**Herausforderungen beim State Management**
  - **Komplexität**: Die Verwaltung eines konsistenten States über viele Komponenten und Nutzeraktionen hinweg kann komplex sein, besonders in großen Anwendungen.
  - **Performance**: Unnötige State-Updates können die Performance beeinträchtigen, daher ist effizientes State Management entscheidend.
