## 1. Grundlagen des Testens
### 1.1 Was ist Testen?

Software ist ein wesentlicher Bestandteil des Alltags, aber fehlerhafte Software kann erhebliche Probleme verursachen, wie finanzielle Verluste, Zeitverschwendung, Ansehensschäden und in extremen Fällen sogar Verletzungen oder Todesfälle. Softwaretests dienen dazu, die Qualität der Software zu bewerten und das Risiko von Fehlerwirkungen im Betrieb zu verringern.

#### Testaktivitäten:
Testen besteht nicht nur aus der Ausführung von Softwaretests (dynamisches Testen), sondern umfasst auch statische Testmethoden wie Reviews und statische Analysen. Dynamisches Testen bewertet das Verhalten der Software während der Ausführung, während statisches Testen ohne Ausführung der Software Fehler in Dokumenten oder Code sucht.

#### Verifizierung und Validierung:
Testen beinhaltet sowohl die **Verifizierung** (Prüfung, ob die Software die spezifizierten Anforderungen erfüllt) als auch die **Validierung** (Überprüfung, ob die Software die Bedürfnisse der Benutzer erfüllt). Das Testen muss über den gesamten Softwareentwicklungslebenszyklus (SDLC) hinweg geplant, gemanagt und gesteuert werden, was es zu einem integralen Bestandteil der Entwicklungsarbeit macht.

#### Intellektuelle Tätigkeit:
Obwohl Werkzeuge zum Testen verwendet werden, ist Testen vor allem eine intellektuelle Tätigkeit, die analytisches Denken, Fachwissen und kritische Überlegungen erfordert. Tester müssen in der Lage sein, systematisch zu denken und kreative Ansätze zur Fehlererkennung zu entwickeln.

#### 1.1.1 Testziele:
Zu den typischen Testzielen gehören:
- Bewertung von Anforderungen, Entwürfen und Code.
- Identifikation von Fehlern und Defekten.
- Sicherstellung einer ausreichenden Testabdeckung.
- Verringerung des Risikos schlechter Softwarequalität.
- Verifizierung, ob die Software spezifizierte Anforderungen und regulatorische Vorgaben erfüllt.
- Bereitstellung von Informationen für Stakeholder zur Entscheidungsfindung.
- Aufbau von Vertrauen in die Qualität der Software.
- Sicherstellung, dass die Software aus Sicht der Stakeholder wie erwartet funktioniert.

Die Ziele des Testens können je nach Kontext, wie der Teststufe, dem Entwicklungsansatz oder den geschäftlichen Anforderungen, variieren.
#### 1.1.2 Testen und Debugging

Testen und Debugging sind zwei getrennte, aber miteinander verbundene Prozesse. Beim **Testen** wird versucht, Fehlerzustände in der Software zu finden oder durch die Ausführung der Software Fehlerwirkungen zu verursachen. Das Ziel des Testens ist es, zu überprüfen, ob die Software den Anforderungen entspricht und Fehler aufzudecken.

Wenn ein Fehler durch dynamisches Testen auftritt, führt dies zu einer **Fehlerwirkung**, die auf einen zugrunde liegenden Fehlerzustand in der Software hinweist. An dieser Stelle kommt das **Debugging** ins Spiel. Debugging umfasst die Identifizierung, Analyse und Beseitigung der Ursache dieses Fehlerzustands.

Der Debugging-Prozess verläuft in mehreren Schritten:
1. **Reproduktion des Fehlers**: Der Fehler wird erneut provoziert, um ihn besser zu verstehen.
2. **Diagnose**: Die genaue Ursache des Fehlers wird ermittelt.
3. **Behebung**: Der Fehlerzustand wird behoben.

Nach der Behebung des Fehlers wird ein **Fehlernachtest** durchgeführt, um zu überprüfen, ob der Fehler tatsächlich behoben wurde. Dieser Test sollte idealerweise von derselben Person durchgeführt werden, die den ursprünglichen Fehler entdeckt hat. Zusätzlich können **Regressionstests** durchgeführt werden, um sicherzustellen, dass die Korrektur keine neuen Fehler in anderen Teilen der Software verursacht.

Beim **statischen Testen** (z. B. durch Code-Reviews) werden Fehlerzustände direkt entdeckt, ohne die Software auszuführen. Hier erfordert das Debugging nur die Beseitigung des gefundenen Fehlers, da keine Reproduktion oder Diagnose der Fehlerwirkung notwendig ist, wie es beim dynamischen Testen der Fall ist.

### 1.2 Warum ist Testen notwendig?

Testen spielt eine entscheidende Rolle in der Qualitätssicherung und im Projekterfolg, indem es dazu beiträgt, die definierten Ziele innerhalb der vorgegebenen Zeit-, Budget- und Qualitätsrahmen zu erreichen. Das Testen ist nicht nur eine Aufgabe des Testteams, sondern betrifft alle Projektbeteiligten, die ihre Testkompetenzen einbringen können, um Fehlerzustände zu identifizieren und die Softwarequalität zu erhöhen.

#### 1.2.1 Der Beitrag des Testens zum Erfolg
Testen ermöglicht es, Fehlerzustände effizient zu finden und trägt so indirekt zur Verbesserung der Softwarequalität bei. Diese Fehlerzustände werden durch Debugging beseitigt, was die Qualität weiter erhöht. Testen bewertet die Qualität des Produkts in verschiedenen Phasen des Softwareentwicklungslebenszyklus (SDLC) und liefert wichtige Messgrößen für das Projektmanagement, um fundierte Entscheidungen zu treffen, z. B. über die Freigabe eines Produkts.

Darüber hinaus bietet Testen eine indirekte Möglichkeit, Benutzeranforderungen während der gesamten Entwicklung zu berücksichtigen. Da es oft schwierig und teuer ist, eine repräsentative Gruppe von Benutzern kontinuierlich in den Entwicklungsprozess einzubinden, übernehmen Tester diese Rolle. Dadurch wird sichergestellt, dass die Software den Bedürfnissen der Benutzer entspricht.

Testen kann auch notwendig sein, um gesetzliche, vertragliche oder regulatorische Anforderungen zu erfüllen. Bestimmte Branchen oder Softwareprodukte müssen bestimmten Standards entsprechen, und Testen ist ein Mittel, um sicherzustellen, dass diese Anforderungen erfüllt werden.

#### 1.2.2 Testen und Qualitätssicherung
Testen wird oft mit Qualitätssicherung (QS) gleichgesetzt, jedoch sind dies unterschiedliche Konzepte. Testen ist eine Form der **Qualitätssteuerung** (QC), die produktorientiert und korrigierend ist. Es konzentriert sich auf Aktivitäten, die ein akzeptables Qualitätsniveau sicherstellen, indem Fehler in einem bereits entwickelten Produkt gefunden und behoben werden.

**Qualitätssicherung** hingegen ist ein prozessorientierter und präventiver Ansatz, der darauf abzielt, durch gut definierte Prozesse qualitativ hochwertige Produkte zu entwickeln. QS betrifft sowohl die Entwicklungs- als auch die Testprozesse und liegt in der Verantwortung des gesamten Projektteams. Testen ist somit ein Teil der QC und dient der Überprüfung des Endprodukts, während die QS sicherstellt, dass die zugrunde liegenden Prozesse funktionieren.

Die Ergebnisse aus dem Testen liefern Feedback sowohl für die QS als auch für die QC:
- **In der QC**: Die Ergebnisse helfen, Fehler zu beheben und die Produktqualität zu verbessern.
- **In der QS**: Die Ergebnisse zeigen, wie gut die Prozesse zur Produktentwicklung und zum Testen funktionieren, und bieten somit Raum für Prozessverbesserungen.

#### 1.2.3 Fehlhandlungen, Fehlerzustände, Fehlerwirkungen und Grundursachen
Fehlhandlungen (Irrtümer) durch Menschen führen zu Fehlerzuständen (Defekten) in Softwareartefakten, wie z. B. Quellcode, Dokumentationen oder Testskripten. Wenn diese Fehlerzustände nicht entdeckt und behoben werden, führen sie häufig zu Fehlerwirkungen, wenn die Software ausgeführt wird. Fehlerwirkungen treten auf, wenn das System nicht wie erwartet funktioniert – entweder tut es etwas, was es nicht soll, oder es unterlässt etwas, was es tun sollte.

Nicht jeder Fehlerzustand führt automatisch zu einer Fehlerwirkung, da einige Fehler nur unter bestimmten Bedingungen auftreten. Fehlerwirkungen können auch durch äußere Einflüsse wie Strahlung oder elektromagnetische Felder verursacht werden, die Fehlerzustände in der Hardware oder Firmware auslösen.

**Grundursachenanalyse** wird durchgeführt, um die grundlegenden Gründe für Fehlhandlungen oder Fehlerzustände zu identifizieren. Das Ziel ist, ähnliche Fehlerzustände in Zukunft zu verhindern, indem die Ursachen behoben werden. Dies könnte z. B. durch zusätzliche Schulungen, verbesserte Arbeitsabläufe oder bessere Dokumentationen geschehen.

### 1.3 Grundsätze des Testens
#### 1. Testen zeigt die Anwesenheit von Fehlern

Das bedeutet, dass wir durch Tests Fehler in der Software finden können, aber niemals sicher sein können, dass die Software komplett fehlerfrei ist. Es ist wie beim Suchen von Rechtschreibfehlern in einem Text – wir können einige finden, aber das bedeutet nicht, dass nicht noch mehr da sind.

**Beispiel**: Stellen Sie sich vor, Sie testen eine Taschenlampen-App. Sie finden und beheben einen Fehler, der dazu führt, dass die Lampe manchmal nicht einschaltet. Obwohl dieser Fehler behoben ist, könnte es noch andere Probleme geben, die noch nicht entdeckt wurden.
#### 2. Exhaustives Testen ist unmöglich

Es ist nicht möglich, alle Kombinationen von Eingaben und Voraussetzungen zu testen. Daher müssen wir klug wählen, welche Tests wir durchführen, basierend auf Risiko und Wichtigkeit.

**Beispiel**: Eine Wetter-App könnte theoretisch für jede mögliche Wetterkombination getestet werden, aber das ist unrealistisch. Stattdessen konzentriert man sich darauf, die häufigsten Wetterbedingungen zu testen und sicherzustellen, dass die App unter diesen Bedingungen korrekt funktioniert.
#### 3. Frühzeitiges Testen

Je früher im Entwicklungsprozess getestet wird, desto besser. Das hilft, Fehler zu finden, bevor sie teuer zu beheben sind.

**Beispiel**: Wenn ein Fehler in der Planungsphase einer Software für Online-Banking gefunden wird, kann er behoben werden, bevor er in die Entwicklung geht, was viel Zeit und Geld spart.
#### 4. Defekte Häufung

Fehler sind oft nicht gleichmäßig über die Software verteilt. Einige Bereiche sind fehleranfälliger als andere.

**Beispiel**: In einer Spiele-App könnte der Bereich, der die Highscores verwaltet, komplexer und daher anfälliger für Fehler sein als der einfache Startbildschirm.
#### 5. Das Pesticide-Paradoxon

Wenn die gleichen Tests immer wieder verwendet werden, finden sie keine neuen Fehler. Daher müssen Tests regelmäßig aktualisiert und erweitert werden.

**Beispiel**: Wenn Sie immer nur die Grundfunktionen einer Foto-App testen, werden Sie keine Fehler in den neuen Filtern oder Bearbeitungswerkzeugen entdecken, die hinzugefügt wurden.
#### 6. Testen ist kontextabhängig

Was und wie getestet wird, hängt oft von der Art der Anwendung ab. Eine medizinische Gerätesoftware wird anders getestet als eine einfache Taschenrechner-App.

**Beispiel**: Bei einer App für Herzmonitore ist die Genauigkeit und Zuverlässigkeit viel kritischer und wird intensiver getestet als bei einer App, die nur dazu dient, Ihre täglichen Schritte zu zählen.
#### 7. Irrtum ist menschlich

Auch Tester können Fehler machen. Daher sollten Tests immer von einer Person geplant und von einer anderen überprüft werden.

**Beispiel**: Wenn ein Tester einen Testplan für eine E-Mail-App erstellt, könnte ein anderer Tester den Plan überprüfen und sicherstellen, dass keine wichtigen Testfälle vergessen wurden, wie z.B. das Testen des E-Mail-Versands mit großen Anhängen.

### 1.4 Testaktivitäten, Testmittel und Rollen des Testens

#### 1.4.1 Testaktivitäten und Aufgaben
Testen ist ein wichtiger Teil des Softwareentwicklungsprozesses und besteht aus einer Reihe von Aktivitäten, die auf das jeweilige Projekt und das System zugeschnitten werden. Diese Aktivitäten umfassen die Planung, Überwachung, Analyse, Entwurf, Realisierung, Durchführung und den Abschluss von Tests. Jede Phase des Testprozesses trägt dazu bei, Fehlerzustände zu identifizieren und die Softwarequalität zu sichern.

1. **Testplanung**: 
   - Definiert Testziele und die Vorgehensweise, um diese zu erreichen. Die Planung berücksichtigt Projektparameter wie Zeit, Ressourcen und Risiken. Die Teststrategie wird entwickelt, um sicherzustellen, dass die Testziele im gegebenen Rahmen realisierbar sind.

2. **Testüberwachung und -steuerung**: 
   - Testüberwachung ist die fortlaufende Bewertung der Testaktivitäten im Vergleich zum ursprünglichen Plan. Die Teststeuerung greift ein, wenn Anpassungen nötig sind, um die Ziele zu erreichen, etwa durch Prioritätsänderungen oder Anpassungen der Ressourcen.

3. **Testanalyse**: 
   - Identifiziert die Testbasis (z. B. Anforderungen oder Spezifikationen) und prüft, welche Bereiche getestet werden müssen. Die Testanalyse beantwortet die Frage: „Was soll getestet werden?“ und ermittelt die Risiken und Testbedingungen.

4. **Testentwurf**: 
   - Entwickelt Testfälle, Testdaten und Testumgebungen auf Basis der Testbedingungen. Dies beinhaltet die Frage: „Wie soll getestet werden?“ und legt fest, welche Ressourcen und Werkzeuge erforderlich sind.

5. **Testrealisierung**: 
   - Testmittel wie Testdaten, Testfälle und automatisierte Skripte werden erstellt. Diese Phase organisiert die Testfälle in Testabläufen und plant die Durchführung der Tests.

6. **Testdurchführung**: 
   - Hier werden die Tests ausgeführt, sei es manuell oder automatisiert. Die Ergebnisse werden aufgezeichnet und Abweichungen zwischen den erwarteten und tatsächlichen Ergebnissen analysiert, um Fehlerursachen zu identifizieren.

7. **Testabschluss**: 
   - Nach Abschluss des Projekts werden alle Testaktivitäten ausgewertet. Fehler, die nicht behoben wurden, werden dokumentiert. Nützliche Testmittel werden archiviert und Verbesserungsvorschläge für zukünftige Projekte formuliert.

#### 1.4.2 Testprozess im Kontext
Die Teststrategie und -durchführung hängen stark vom Kontext des Projekts ab, einschließlich der Bedürfnisse der Stakeholder, der Verfügbarkeit von Ressourcen, der Art der Software und der Projektgröße. Ein sicherheitskritisches System, wie z. B. eine Flugsteuerung, erfordert einen anderen Testansatz als eine einfache mobile App.

Faktoren, die den Testprozess beeinflussen:
- Anforderungen und Erwartungen der Stakeholder.
- Kompetenzen und Verfügbarkeit des Testteams.
- Technologische und regulatorische Anforderungen.
- Budget, Zeitrahmen und verfügbare Ressourcen.

#### 1.4.3 Testmittel
Testmittel sind die Arbeitsergebnisse aus den verschiedenen Phasen des Testprozesses, einschließlich:
- **Testplanung**: Teststrategie, Zeitpläne, Risikobewertungen.
- **Testanalyse**: Priorisierte Testbedingungen, Fehlerberichte.
- **Testentwurf**: Testfälle, Testdatenanforderungen, Testumgebungsdesign.
- **Testrealisierung**: Testskripte, Testausführungspläne, Testsuiten.
- **Testdurchführung**: Testprotokolle, Fehlerberichte.
- **Testabschluss**: Abschlussberichte, Lessons Learned, Änderungsanträge.

Ein gutes Konfigurationsmanagement stellt sicher, dass diese Testmittel konsistent und nachvollziehbar sind. Dies erleichtert die Überwachung des Testfortschritts und die Beurteilung der Testabdeckung.

#### 1.4.4 Verfolgbarkeit zwischen Testbasis und Testmitteln
Die Verfolgbarkeit der Testaktivitäten ist entscheidend, um sicherzustellen, dass alle Anforderungen durch Tests abgedeckt sind. Eine durchgängige Verknüpfung zwischen Anforderungen, Testfällen, Testergebnissen und Fehlerberichten ermöglicht eine klare Übersicht über den Teststatus und erleichtert das Management von Änderungen.

Beispiel:
- Testfälle können mit den zugrunde liegenden Anforderungen verknüpft werden, um sicherzustellen, dass jede Anforderung getestet wurde.
- Testergebnisse können mit den identifizierten Risiken verknüpft werden, um den aktuellen Stand des Projektrisikos zu bewerten.
#### 1.4.5 Rollen des Testens
Es gibt zwei Hauptrollen im Testprozess:

1. **Testmanagement**:
   - Verantwortlich für die Gesamtsteuerung des Testprozesses. Zu den Aufgaben gehören die Testplanung, Überwachung, Steuerung und der Abschluss der Testaktivitäten. In agilen Teams können einige dieser Aufgaben vom Team übernommen werden, während in größeren Projekten ein dedizierter Testmanager diese Rolle übernimmt.

2. **Testrolle**:
   - Verantwortlich für die operative Durchführung des Testens, einschließlich der Testanalyse, Testentwurf, Testrealisierung und Testdurchführung. Diese Rolle kann von verschiedenen Personen übernommen werden, je nach Projektkontext.

Die Rollen können je nach Projektanforderungen variieren, und in kleineren Teams kann eine Person sowohl das Testmanagement als auch die Testrolle übernehmen.
### 1.5 Wesentliche Kompetenzen und bewährte Praktiken beim Testen

Tester spielen eine entscheidende Rolle im Softwareentwicklungsprozess. Um ihre Aufgaben effektiv zu erfüllen, sind verschiedene Kompetenzen und bewährte Praktiken erforderlich. Diese lassen sich in mehrere Unterkapitel gliedern:

#### 1.5.1 Allgemeine Kompetenzen für Tester

Gute Tester sollten über eine Kombination aus Wissen, Fähigkeiten und persönlichen Eigenschaften verfügen:

- **Testwissen**:
  - Tester sollten ein umfassendes Verständnis der Testverfahren und -techniken haben. Dies umfasst Kenntnisse über unterschiedliche Testarten wie Unit-Tests, Integrationstests und Systemtests. Ein fundiertes Testwissen steigert die Effektivität und Effizienz des Testprozesses.
  - **Beispiel**: Ein Tester verwendet gezielt Black-Box-Tests, um die Benutzeroberfläche zu überprüfen, während er White-Box-Tests für die Prüfung der internen Logik des Systems einsetzt.

- **Gründlichkeit und Detailgenauigkeit**:
  - Tester müssen sorgfältig arbeiten und auf Details achten, um Fehler zu erkennen, die möglicherweise schwer zu finden sind. Ein methodisches Vorgehen hilft dabei, alle potenziellen Probleme systematisch zu identifizieren.
  - **Beispiel**: Bei der Testdurchführung einer E-Commerce-Anwendung prüft der Tester alle möglichen Bestellprozesse, einschließlich ungewöhnlicher Kombinationen, um sicherzustellen, dass keine Fehler auftreten.

- **Kommunikationsfähigkeit und Teamarbeit**:
  - Tester müssen effektiv mit verschiedenen Stakeholdern kommunizieren. Das bedeutet, dass sie Ergebnisse klar und konstruktiv berichten müssen. Da Tester oft negative Rückmeldungen geben müssen, ist eine diplomatische und lösungsorientierte Kommunikation besonders wichtig.
  - **Beispiel**: Ein Tester berichtet einem Entwickler über einen kritischen Fehler in der Zahlungsabwicklung und erläutert detailliert die Bedingungen, unter denen der Fehler auftritt.

- **Analytisches und kritisches Denken**:
  - Die Fähigkeit, Probleme systematisch zu analysieren und kritische Gedanken anzuwenden, ist entscheidend. Tester sollten kreative Lösungen entwickeln und neue Ansätze zur Verbesserung des Testprozesses finden.
  - **Beispiel**: Nach der Analyse der Testergebnisse schlägt der Tester eine neue Teststrategie vor, um eine bestimmte Art von Fehlern zu vermeiden, die bisher nicht entdeckt wurden.

- **Technische Kenntnisse**:
  - Der Einsatz technischer Werkzeuge und Techniken ist wichtig, um die Testeffizienz zu erhöhen. Kenntnisse in verschiedenen Testwerkzeugen und -technologien sind daher von Vorteil.
  - **Beispiel**: Der Tester verwendet ein Automatisierungstool wie Selenium, um Regressionstests effizient durchzuführen und wiederkehrende Testaufgaben zu automatisieren.

- **Wissen in der Anwendungsdomäne**:
  - Ein gutes Verständnis der spezifischen Anforderungen und der Fachdomäne ist notwendig, um die Tests entsprechend den realen Benutzerbedürfnissen auszurichten.
  - **Beispiel**: Ein Tester in einem medizinischen Softwareprojekt muss die medizinischen Fachbegriffe und Vorschriften kennen, um sicherzustellen, dass die Software alle relevanten Normen erfüllt.

**Herausforderungen bei der Kommunikation**:
Tester stehen oft vor der Herausforderung, negative Testergebnisse zu kommunizieren. Diese Kommunikation kann manchmal als Kritik am Produkt oder an den Entwicklern aufgefasst werden. Daher ist es wichtig, die Informationen über Fehlerzustände und deren Auswirkungen konstruktiv und lösungsorientiert zu vermitteln, um die Akzeptanz und das Vertrauen in den Testprozess zu stärken.

#### 1.5.2 Whole-Team-Ansatz

Der Whole-Team-Ansatz, der aus dem Extreme Programming stammt, betont die Bedeutung der Teamarbeit und die gemeinsame Verantwortung für die Qualität des Produkts:

- **Gemeinsamer Arbeitsbereich**:
  - Teammitglieder arbeiten entweder physisch am selben Ort oder nutzen gemeinsame virtuelle Räume, um die Kommunikation und Interaktion zu verbessern. Dies fördert die Zusammenarbeit und ermöglicht eine schnellere Problemlösung.
  - **Beispiel**: Ein agiles Entwicklungsteam arbeitet in einem offenen Büro, was regelmäßige Besprechungen und sofortige Rückmeldungen erleichtert.

- **Teildisziplinen**:
  - Alle Teammitglieder, unabhängig von ihrer Rolle, tragen zur Erreichung der Projektziele bei. Diese Praxis stellt sicher, dass Wissen und Kompetenzen aller Teammitglieder effektiv genutzt werden.
  - **Beispiel**: Designer, Entwickler und Tester koordinieren sich, um sicherzustellen, dass die neue Funktionalität sowohl funktional als auch benutzerfreundlich ist.

- **Synergien schaffen**:
  - Der Whole-Team-Ansatz nutzt die verschiedenen Stärken der Teammitglieder, um Synergien zu schaffen und die Gesamtqualität des Projekts zu verbessern.
  - **Beispiel**: Durch enge Zusammenarbeit kann das Team effizientere Lösungen entwickeln und schneller auf Änderungswünsche reagieren.

**Einschränkungen**:
In einigen Projekten, insbesondere in sicherheitskritischen Bereichen, kann es erforderlich sein, einen höheren Grad an Unabhängigkeit zu wahren, um die objektive Bewertung der Qualität zu gewährleisten.

#### 1.5.3 Unabhängigkeit des Testens

Unabhängiges Testen ist ein bewährter Ansatz, um die Qualität der Software zu sichern, und hat sowohl Vorteile als auch Herausforderungen:

- **Vorteile der Unabhängigkeit**:
  - Unabhängige Tester haben oft eine andere Perspektive auf Fehler und können Probleme erkennen, die den Entwicklern möglicherweise nicht auffallen. Diese Tester bringen neue Blickwinkel und vermeiden mögliche Voreingenommenheiten, die bei den Entwicklern bestehen könnten.
  - **Beispiel**: Ein unabhängiger Tester entdeckt eine Benutzeroberflächeninkonsistenz, die die Entwickler übersehen haben, weil der Tester die Anwendung aus der Sicht eines Endanwenders betrachtet.

- **Multistufiges Testen**:
  - Eine Kombination aus verschiedenen Unabhängigkeitsebenen, wie Entwicklertests, Testteamtests und Fachbereichstests, sorgt für eine umfassende Testabdeckung.
  - **Beispiel**: Ein Entwickler führt Unit-Tests durch, während ein separates Testteam Systemtests und Fachbereichsvertreter Abnahmetests durchführen, um sicherzustellen, dass alle Aspekte der Software gründlich geprüft werden.

**Nachteile der Unabhängigkeit**:
- Unabhängige Tester können isoliert sein, was zu mangelnder Zusammenarbeit und möglicherweise zu Konflikten mit dem Entwicklungsteam führen kann. Auch kann es zu Verzögerungen bei der Freigabe kommen, wenn unabhängige Tester als Engpass wahrgenommen werden.
- **Beispiel**: Wenn Tester und Entwickler nicht regelmäßig kommunizieren, könnten Missverständnisse auftreten, die zu Verzögerungen oder ineffektiven Tests führen.

Insgesamt ist es entscheidend, eine Balance zwischen Teamarbeit und Unabhängigkeit zu finden, um sowohl eine effektive Qualitätssicherung zu gewährleisten als auch die Zusammenarbeit im Team zu fördern. Die beschriebenen Kompetenzen und Praktiken helfen dabei, den Testprozess zu optimieren und die Softwarequalität zu maximieren.

---
## 2. Testen während des Softwareentwicklungslebenszyklus

Stell dir vor, du schreibst ein Buch. Würdest du warten, bis das ganze Buch fertig ist, bevor du es Korrektur liest, oder würdest du jeden Abschnitt einzeln prüfen, sobald er fertig ist? Ähnlich verhält es sich mit der Softwareentwicklung: Testen im gesamten Software-Lebenszyklus bedeutet, dass Tests durchgeführt werden, während jede Phase der Softwareentwicklung abläuft, und nicht erst, wenn die Software bereits fertiggestellt ist.

### Warum ist es wichtig?

Das kontinuierliche Testen stellt sicher, dass Fehler früh erkannt und behoben werden, was die Qualität der Software erheblich verbessert und die Kosten für spätere Fehlerbehebungen senkt. Es hilft auch dabei, sicherzustellen, dass die Software den Bedürfnissen der Benutzer entspricht, indem sie deren Rückmeldungen schnell integriert und umsetzt.

### Die Rolle des Testens in den verschiedenen Phasen

1. **Planungsphase**: Schon bevor die erste Zeile Code geschrieben wird, werden Tests geplant. Dies beinhaltet die Definition von Testzielen und die Auswahl der Testmethoden.
2. **Entwicklungsphase**: Während der Software entwickelt wird, werden regelmäßig verschiedene Tests durchgeführt, um die Funktionalität und Sicherheit der neuen Funktionen zu gewährleisten.
3. **Nach der Implementierung**: Auch nachdem die Software scheinbar fertiggestellt ist, wird sie weiterhin getestet, um letzte Fehler zu finden und zu korrigieren, bevor sie an den Endbenutzer ausgeliefert wird.

Das Testen im gesamten Software-Lebenszyklus ist ein unerlässlicher Bestandteil der modernen Softwareentwicklung. Es hilft nicht nur dabei, ein hochwertiges Produkt zu gewährleisten, sondern optimiert auch den Entwicklungsprozess selbst, indem es kontinuierliches Feedback und Anpassungen ermöglicht. Kurz gesagt, es macht den Entwicklungsprozess agiler, sicherer und benutzerorientierter.
### Was ist der Softwareentwicklungslebenszyklus

Der Softwareentwicklungszyklus beschreibt den gesamten Prozess, der notwendig ist, um Software von der Idee bis zur Bereitstellung und Wartung zu entwickeln. 

![Bilder/software-development-life-cycle-examples-de.png](Bilder/software-development-life-cycle-examples-de.png)
#### 1. Anforderungsanalyse

**Anforderungsanalyse** bildet den Ausgangspunkt des Entwicklungszyklus. In dieser Phase wird ermittelt, was das System leisten soll. Dies geschieht durch Gespräche mit Stakeholdern, die Erstellung von Anforderungsdokumenten und die Analyse der Geschäftsbedürfnisse. Das Ergebnis dieser Phase ist eine klare Dokumentation, die die Erwartungen und Anforderungen der Benutzer festhält.

- **Ziel**: Verstehen, was das System leisten soll. Diese Phase umfasst das Sammeln und Dokumentieren der Anforderungen, die das System erfüllen muss.
- **Aktivitäten**:
  - Gespräche mit Stakeholdern
  - Erstellung von Anforderungsdokumenten
  - Analyse der Geschäftsbedürfnisse
- **Ergebnis**: Anforderungsdokumente, die die Erwartungen und Bedürfnisse der Benutzer festhalten.

#### 2. Systemdesign

**Systemdesign** folgt auf die Anforderungsanalyse und zielt darauf ab, wie diese Anforderungen technisch umgesetzt werden sollen. Hier wird die Architektur der Software entworfen, einschließlich Datenbanken, Schnittstellen und Benutzerschnittstellen. Außerdem werden die Technologien und Werkzeuge ausgewählt, die für die Entwicklung verwendet werden. Das Ergebnis sind Design-Dokumente, die die Struktur und Architektur der Software beschreiben.

- **Ziel**: Entwerfen, wie die Anforderungen technisch umgesetzt werden sollen.
- **Aktivitäten**:
  - Architekturdesign: Festlegung der Softwarearchitektur und -struktur
  - Entwurf von Datenbanken, Schnittstellen und Benutzerschnittstellen
  - Auswahl der Technologien und Werkzeuge
- **Ergebnis**: Design-Dokumente, die die Struktur und Architektur der Software beschreiben.

#### 3. Implementierung (Codierung)

**Implementierung (Codierung)** ist die Phase, in der die tatsächliche Entwicklung der Software stattfindet. Programmierer schreiben den Code basierend auf den Design-Spezifikationen, integrieren verschiedene Module und Funktionen und erstellen Testfälle, um die Implementierung zu überprüfen. Das Ergebnis ist ein funktionierendes Set von Softwarekomponenten, die zusammen ein vollständiges System ergeben.

- **Ziel**: Die Software gemäß den Design-Spezifikationen entwickeln.
- **Aktivitäten**:
  - Programmierung der Softwarekomponenten
  - Integration von Modulen und Funktionen
  - Erstellung von Testfällen zur Validierung der Implementierung
- **Ergebnis**: Funktionsfähige Softwarekomponenten, die zusammen ein vollständiges System ergeben.

#### 4. Testen

**Testen** stellt sicher, dass die Software die festgelegten Anforderungen erfüllt und fehlerfrei ist. In dieser Phase werden Unit-Tests, Integrationstests, Systemtests und Abnahmetests durchgeführt, um Fehler zu identifizieren und zu beheben. Das Ziel ist es, einen stabilen Softwarebuild zu erhalten, der für die Bereitstellung bereit ist.

- **Ziel**: Sicherstellen, dass die Software die festgelegten Anforderungen erfüllt und fehlerfrei ist.
- **Aktivitäten**:
  - Durchführung von Unit-Tests, Integrationstests, Systemtests und Abnahmetests
  - Identifikation und Behebung von Fehlern
  - Validierung der Software gegen die Anforderungen
- **Ergebnis**: Ein geprüfter und stabiler Softwarebuild, der für die Bereitstellung bereit ist.

#### 5. Bereitstellung (Deployment)

**Bereitstellung (Deployment)** umfasst die Überführung der Software in die Produktionsumgebung, damit die Endbenutzer sie verwenden können. Dies beinhaltet die Installation und Konfiguration der Software auf den Zielsystemen, Schulungen für Endbenutzer und Administratoren sowie die Überwachung der ersten Nutzung, um mögliche Probleme frühzeitig zu erkennen. Das Ergebnis ist eine live geschaltete Softwarelösung.

- **Ziel**: Die Software in die Produktionsumgebung überführen, damit die Endbenutzer sie verwenden können.
- **Aktivitäten**:
  - Installation und Konfiguration der Software auf den Zielsystemen
  - Schulung der Endbenutzer und Administratoren
  - Überwachung der ersten Nutzung zur Identifikation von Problemen
- **Ergebnis**: Die Software ist live und für die Endbenutzer zugänglich.

#### 6. Wartung und Unterstützung

**Wartung und Unterstützung** sind entscheidend, um die Software nach der Bereitstellung funktionsfähig zu halten. Diese Phase umfasst das Beheben von Fehlern, das Durchführen von Updates und Patches sowie die Anpassung der Software an neue Anforderungen oder Technologien. Ziel ist es, eine gepflegte und aktuelle Softwarelösung zu bieten.

- **Ziel**: Sicherstellen, dass die Software nach der Bereitstellung weiterhin effektiv funktioniert und auf neue Anforderungen oder Probleme reagiert wird.
- **Aktivitäten**:
  - Behebung von auftretenden Fehlern und Problemen
  - Durchführung von Updates und Patches
  - Anpassung der Software an veränderte Anforderungen oder Technologien
- **Ergebnis**: Eine gepflegte und aktuelle Softwarelösung, die den Bedürfnissen der Benutzer weiterhin entspricht.
## Softwareentwicklungsmodelle

Stell dir vor, die Entwicklung einer Software ist wie der Bau eines Hauses. Es gibt verschiedene Wege und Methoden, wie ein Haus gebaut werden kann, und jeder Weg hat seine eigenen Schritte und Tools. In der Welt der Softwareentwicklung gibt es verschiedene Modelle, die beschreiben, wie Software entwickelt wird, und jedes Modell hat seine eigene Art und Weise, wie das Testen eingebettet wird.

### Beliebte Softwareentwicklungsmodelle und ihre Testmethoden

#### 1. Wasserfallmodell

Das Wasserfallmodell ist wie der Bau eines Hauses, Schritt für Schritt, von den Fundamenten bis zum Dach. Man beginnt mit einer gründlichen Planung, und jede Phase muss abgeschlossen sein, bevor die nächste beginnt.

**Wie wird getestet?** Beim Wasserfallmodell findet das Testen meist erst statt, nachdem die gesamte Software entwickelt wurde. Das kann riskant sein, weil Fehler, die in frühen Phasen gemacht wurden, erst sehr spät entdeckt werden, was ihre Behebung teuer und zeitaufwendig macht.

**Beispiel**: Wenn du erst bemerkst, dass das Fundament deines Hauses schief ist, nachdem du das Dach gebaut hast, ist es viel komplizierter und teurer, es zu korrigieren.

#### 2. V-Modell

Das V-Modell ähnelt dem Wasserfallmodell, legt aber einen stärkeren Fokus auf das Testen. Jeder Entwicklungsphase ist direkt eine Testphase zugeordnet.

**Wie wird getestet?** Im V-Modell wird jeder Schritt der Entwicklung sofort durch einen entsprechenden Test überprüft. Dies hilft, Fehler früher im Prozess zu entdecken und zu beheben.

**Beispiel**: Das ist, als würdest du nach jedem gebauten Stockwerk eines Hauses überprüfen, ob alles stabil und sicher ist, bevor du weiterbaust.

#### 3. Agiles Modell

Agile Methoden, wie Scrum, sind wie der Bau eines Hauses, bei dem du mit den Grundlagen beginnst, aber bereit bist, Änderungen vorzunehmen, wenn neue Ideen oder Probleme auftauchen.

**Wie wird getestet?** Beim agilen Modell wird kontinuierlich getestet. Das heißt, dass nach jeder kleinen Änderung oder Ergänzung Tests durchgeführt werden, oft durch automatisierte Tests unterstützt. Das ermöglicht es, sehr flexibel auf Änderungen zu reagieren und verbessert die Qualität kontinuierlich.

**Beispiel**: Wenn du entscheidest, dass das Wohnzimmer größer sein soll, während du baust, kannst du das sofort anpassen und sicherstellen, dass die Struktur des Hauses immer noch stabil ist.

#### 4. Spiralmodell

Das Spiralmodell kombiniert Elemente des Wasserfallmodells mit iterativen Entwicklungspraktiken. Es ist wie der Bau eines Hauses, bei dem du mehrere Prototypen des Hauses baust, jedes Mal mit Verbesserungen.

**Wie wird getestet?** In jedem Zyklus des Spiralmodells werden Risikoanalysen und Tests durchgeführt, um sicherzustellen, dass die Entwicklung in die richtige Richtung geht und die Software die Benutzeranforderungen erfüllt.

**Beispiel**: Du baust zunächst ein kleines Modell deines Hauses, testest verschiedene Designs und Materialien und entscheidest dann, welche am besten funktionieren, bevor du das eigentliche Haus baust.

Je nachdem, welches Entwicklungsmodell verwendet wird, ändert sich der Zeitpunkt und die Art und Weise, wie Tests durchgeführt werden. Das Verständnis dieser Modelle hilft dir, die beste Strategie für das Testen deiner Software zu wählen, ähnlich wie ein Architekt den besten Plan für den Bau eines Hauses auswählt.
#### Iterativer Ansatz und Agile Methoden

- In modernen Softwareentwicklungsprozessen wird oft ein iterativer Ansatz verfolgt, bei dem die Phasen des Zyklus in mehreren Iterationen oder Sprints durchlaufen werden. Agile Methoden, wie Scrum oder Kanban, betonen diese Iterationen und ermöglichen es, flexibel auf Veränderungen und Feedback zu reagieren.

![Bilder/Software-development-methodologies-and-frameworks.jpg](Bilder/Software-development-methodologies-and-frameworks.jpg)
### Zusammenfassung

Der Softwareentwicklungszyklus ist ein strukturierter Ansatz zur Erstellung von Software, der von der Anforderungsanalyse bis zur Wartung reicht. Jede Phase ist entscheidend für den Erfolg des Projekts und trägt dazu bei, dass die Software den Benutzerbedürfnissen entspricht und von hoher Qualität ist.

### Testen im Kontext eines Softwareentwicklungslebenszyklus (SDLC)

Der Softwareentwicklungslebenszyklus (SDLC) beschreibt die verschiedenen Phasen, die bei der Erstellung und Wartung von Software durchlaufen werden. Diese Phasen variieren je nach gewähltem Modell und beeinflussen den gesamten Entwicklungs- und Testprozess. Das SDLC bietet einen strukturierten Ansatz zur Planung, Durchführung und Kontrolle von Softwareprojekten.

#### 2.1.1 Auswirkungen des SDLC auf das Testen

Die Wahl des SDLC-Modells hat direkte Auswirkungen auf die Testaktivitäten. Verschiedene Modelle erfordern unterschiedliche Ansätze und Zeitpunkte für das Testen:

- **Sequenzielle Entwicklungsmodelle**: Modelle wie das Wasserfallmodell und das V-Modell folgen einem linearen Ansatz, bei dem jede Phase des Projekts abgeschlossen sein muss, bevor die nächste beginnt. In diesen Modellen beginnt das Testen in der Regel erst nach der vollständigen Fertigstellung der Codierung. In der Anfangsphase sind Tester oft an der Überprüfung der Anforderungen und dem Testdesign beteiligt. Dynamische Tests, wie z.B. System- oder Integrationstests, erfolgen erst in späteren Phasen, was bedeutet, dass Fehler erst spät im Entwicklungsprozess entdeckt werden können.
  - **Beispiel**: Im Wasserfallmodell werden die Tests erst durchgeführt, nachdem die gesamte Software entwickelt wurde. Dies kann dazu führen, dass bei der Entdeckung von Fehlern erheblicher Nacharbeitsaufwand entsteht.

- **Iterative und inkrementelle Modelle**: Modelle wie das Spiralmodell oder der Unified Process sehen vor, dass Software in kleinen, funktionsfähigen Inkrementen oder Prototypen entwickelt wird. Dies ermöglicht es, Tests kontinuierlich durchzuführen, da in jeder Iteration ein funktionsfähiger Teil des Produkts bereitsteht. Sowohl statische Tests (z.B. Code-Reviews) als auch dynamische Tests (z.B. Integrationstests) können regelmäßig durchgeführt werden. Diese Vorgehensweise erfordert häufig umfassende Regressionstests, um sicherzustellen, dass neue Änderungen keine bestehenden Funktionen beeinträchtigen.
  - **Beispiel**: Beim Spiralmodell wird jede Iteration getestet, bevor die nächste beginnt. Dies ermöglicht eine frühzeitige Entdeckung und Behebung von Fehlern und reduziert das Risiko großer, schwerwiegender Probleme am Ende des Projekts.

- **Agile Modelle**: Agile Methoden wie Scrum oder Kanban fördern eine kontinuierliche Entwicklung und Integration von Tests. In agilen Projekten wird davon ausgegangen, dass sich Anforderungen und Design während des Projekts ändern können. Daher sind schlanke Dokumentation und umfassende Testautomatisierung bevorzugt. Agile Testansätze konzentrieren sich auf automatisierte Tests und erfahrungsbasierte Tests, die kontinuierlich während der Sprints durchgeführt werden. Der Fokus liegt auf schnellen Rückmeldungen und der kontinuierlichen Verbesserung des Produkts.
  - **Beispiel**: In einem Scrum-Projekt werden Tests im Rahmen jedes Sprints durchgeführt. Testautomatisierung wird genutzt, um sicherzustellen, dass neue Funktionen schnell und zuverlässig getestet werden können.

#### 2.1.2 Softwareentwicklungslebenszyklus und gute Praktiken für das Testen

Unabhängig vom gewählten SDLC-Modell sollten bestimmte bewährte Testpraktiken beachtet werden:

- **Korrelation von Entwicklungs- und Testaktivitäten**: Für jede Phase der Softwareentwicklung sollte es eine entsprechende Testaktivität geben. Dies stellt sicher, dass jede Phase den Qualitätsanforderungen entspricht und alle Entwicklungsaktivitäten der Qualitätskontrolle unterliegen.
  - **Beispiel**: Während der Entwurfsphase sollten auch Testpläne entwickelt werden, um sicherzustellen, dass das Design die festgelegten Anforderungen erfüllt.

- **Spezifische Testziele für verschiedene Teststufen**: Unterschiedliche Teststufen wie Unit-Tests, Integrationstests und Systemtests haben spezifische Ziele. Diese Teststufen sollten entsprechend ihren Zielen geplant und durchgeführt werden, um Redundanzen zu vermeiden und eine umfassende Testabdeckung zu gewährleisten.
  - **Beispiel**: Unit-Tests konzentrieren sich auf die Überprüfung einzelner Codeeinheiten, während Systemtests die gesamte Software als Ganzes testen.

- **Frühzeitige Testanalyse und -entwurf**: Die Testanalyse und der Testentwurf sollten bereits in der Entwicklungsphase beginnen. Dies ermöglicht ein frühes Erkennen von Fehlern und stellt sicher, dass die Tests die tatsächlichen Anforderungen und Designentscheidungen widerspiegeln.
  - **Beispiel**: Bei der Entwicklung einer neuen Funktion sollte bereits vor der Implementierung ein Testplan erstellt werden, der die zu erwartenden Verhaltensweisen und Anforderungen umfasst.

- **Frühe Einbindung der Tester**: Tester sollten in den Überprüfungsprozess von Anforderungen und Entwürfen einbezogen werden. Dies unterstützt den Shift-Left-Ansatz, bei dem das Testen früher im Entwicklungszyklus beginnt, um die Fehlererkennung und -behebung zu verbessern.
  - **Beispiel**: Tester nehmen an Reviews von Anforderungen teil, um potenzielle Unklarheiten oder Fehler frühzeitig zu identifizieren.

#### 2.1.3 Testen als Treiber für die Softwareentwicklung

Ansätze wie Testgetriebene Entwicklung (TDD), Abnahmetestgetriebene Entwicklung (ATDD) und Verhaltensgetriebene Entwicklung (BDD) nutzen Tests, um die Entwicklung zu steuern:

- **Testgetriebene Entwicklung (TDD)**: Bei TDD werden zuerst Tests geschrieben, bevor der Code entwickelt wird. Dies zwingt Entwickler dazu, sich auf die Anforderungen und die Funktionalität zu konzentrieren, die der Code erfüllen muss. Der Entwicklungsprozess umfasst das Schreiben von Tests, das Implementieren des Codes, um die Tests zu bestehen, und schließlich das Refactoring des Codes.
  - **Beispiel**: Ein Entwickler schreibt einen Unit-Test für eine neue Methode, bevor diese Methode implementiert wird. Der Code wird dann so angepasst, dass der Test erfolgreich bestanden wird.

- **Abnahmetestgetriebene Entwicklung (ATDD)**: ATDD verwendet Abnahmekriterien, um Testfälle zu erstellen, bevor die Entwicklung beginnt. Die Tests werden auf Basis dieser Kriterien definiert und dienen als Grundlage für die Entwicklung.
  - **Beispiel**: Vor der Implementierung einer neuen Funktion werden Testfälle auf Basis der Abnahmekriterien definiert, um sicherzustellen, dass die Funktion alle Anforderungen erfüllt.

- **Verhaltensgetriebene Entwicklung (BDD)**: BDD beschreibt das Verhalten der Anwendung in einer verständlichen, natürlichen Sprache. Testfälle werden in einem Format geschrieben, das von Stakeholdern leicht verstanden werden kann, und anschließend in ausführbare Tests übersetzt.
  - **Beispiel**: Ein Testfall könnte in der Form „Gegeben eine registrierte Benutzerin, wenn sie sich einloggt, dann sollte sie auf die Startseite weitergeleitet werden“ geschrieben werden.

Diese Ansätze fördern den Shift-Left-Ansatz, da Tests frühzeitig definiert werden, bevor der Code geschrieben wird, was zu einer besseren Qualität und weniger Nacharbeit führt.

#### 2.1.4 DevOps und Testen

DevOps ist ein Ansatz, der die Zusammenarbeit zwischen Entwicklung und Betrieb fördert, um qualitativ hochwertige Software schnell und zuverlässig zu liefern:

- **Kontinuierliche Integration (CI) und kontinuierliche Auslieferung (CD)**: CI und CD sind Kernkomponenten von DevOps. CI automatisiert die Integration von Codeänderungen in das Hauptrepository, während CD die kontinuierliche Auslieferung von Code in die Produktionsumgebung automatisiert. Automatisierte Tests sind integraler Bestandteil dieser Prozesse und bieten schnelle Rückmeldungen zur Codequalität.
  - **Beispiel**: Bei jeder Codeänderung wird automatisch ein Build erstellt und die Tests werden durchlaufen, um sicherzustellen, dass keine neuen Fehler eingeführt wurden.

- **Vorteile**: DevOps ermöglicht schnelle Rückmeldungen, erleichtert die Testautomatisierung, und unterstützt die kontinuierliche Verbesserung der Codequalität. Die Integration von Tests in die CI/CD-Pipeline reduziert den Bedarf an manuellen Tests und minimiert das Risiko, dass Fehler unentdeckt bleiben.
  - **Beispiel**: Ein automatisierter Testlauf in der CI/CD-Pipeline prüft alle Funktionalitäten und nicht-funktionalen Anforderungen wie Performance und Sicherheit.

- **Herausforderungen**: Die Implementierung von DevOps erfordert die Definition und Etablierung einer Auslieferungskette, die Einführung und Wartung von CI/CD-Tools sowie Ressourcen für die Testautomatisierung. Diese Anforderungen können zusätzliche Aufwände verursachen.
  - **Beispiel**: Die Einrichtung von CI/CD-Tools kann komplex sein und erfordert regelmäßige Wartung und Anpassungen.

#### 2.1.5 Shift-Left-Ansatz

Der Shift-Left-Ansatz zielt darauf ab, das Testen früher im Entwicklungszyklus zu beginnen. Dies hat mehrere Vorteile:

- **Frühes Testen**: Testen beginnt nicht erst, wenn der Code vollständig implementiert ist, sondern schon in den frühen Phasen, wie z.B. beim Entwurf der Anforderungen. Dies hilft, Fehler frühzeitig zu erkennen und zu beheben.
  - **Beispiel**: Tester prüfen Spezifikationen und Entwürfe auf Fehler oder Unklarheiten, bevor der Code entwickelt wird.

- **Statische und dynamische Tests**: Die statische Analyse des Codes wird oft vor dem dynamischen Testen durchgeführt. Dies kann als Teil eines automatisierten Prozesses geschehen und hilft, grundlegende Fehler bereits vor der tatsächlichen Ausführung des Codes zu identifizieren.
  - **Beispiel**: Der Code wird durch statische Analysetools überprüft, um Syntaxfehler oder Sicherheitsris

iken zu identifizieren, bevor dynamische Tests durchgeführt werden.

- **Vorteile**: Der Shift-Left-Ansatz reduziert die Fehlerkosten und verbessert die Produktqualität, da Probleme frühzeitig identifiziert und behoben werden können, bevor sie sich zu komplexen Problemen entwickeln.
  - **Beispiel**: Fehler, die früh erkannt werden, können oft einfacher und kostengünstiger behoben werden als Fehler, die später im Entwicklungszyklus auftreten.

#### 2.1.6 Retrospektiven und Prozessverbesserung

Retrospektiven sind strukturierte Sitzungen, die am Ende von Projekten oder Iterationen durchgeführt werden, um den Prozess zu bewerten und Verbesserungsmöglichkeiten zu identifizieren:

- **Ziele**: Die Retrospektive bietet eine Gelegenheit, die gesamte Entwicklungsarbeit zu reflektieren, herauszufinden, was gut gelaufen ist und was verbessert werden kann. Dies fördert die kontinuierliche Verbesserung der Prozesse und Methoden.
  - **Beispiel**: In einer Retrospektive werden die Testergebnisse und die Testabdeckung überprüft, um zu diskutieren, wie die Teststrategien und -techniken verbessert werden können.

- **Vorteile**: Durch die regelmäßige Durchführung von Retrospektiven können Teams kontinuierlich lernen und sich verbessern. Dies führt zu effektiveren Testmethoden, besserer Qualität und effizienteren Prozessen.
  - **Beispiel**: Basierend auf den Erkenntnissen aus einer Retrospektive kann das Team neue Teststrategien implementieren oder bestehende Prozesse optimieren.

- **Herausforderungen**: Retrospektiven können nur dann effektiv sein, wenn sie regelmäßig durchgeführt werden und die Ergebnisse tatsächlich in Verbesserungsmaßnahmen umgesetzt werden.
  - **Beispiel**: Es ist wichtig, dass die in einer Retrospektive identifizierten Maßnahmen nicht nur dokumentiert, sondern auch in die Praxis umgesetzt werden.

Zusammenfassend zeigt sich, dass der SDLC erheblichen Einfluss auf die Testaktivitäten hat. Die Wahl des SDLC-Modells beeinflusst den Zeitpunkt und den Umfang der Tests, während moderne Ansätze wie DevOps und der Shift-Left-Ansatz die Teststrategie und -durchführung weiterentwickeln. Gute Testpraktiken, die Integration von Testmethoden wie TDD, ATDD und BDD sowie regelmäßige Retrospektiven tragen dazu bei, die Qualität und Effizienz des gesamten Entwicklungsprozesses zu verbessern.

### 2.2 Teststufen und Testarten

Teststufen sind unterschiedliche Phasen im Testprozess, die jeweils ein spezifisches Entwicklungsstadium der Software betreffen. Jede Teststufe ist eine separate Instanz im Testprozess und kann verschiedene Gruppen von Testaktivitäten umfassen. Diese Stufen sind in der Regel auf den jeweiligen Stand der Softwareentwicklung zugeschnitten und können sich über mehrere Entwicklungsphasen erstrecken oder sich überschneiden.

#### 2.2.1 Teststufen

- **Komponententest (Unit-Test)**: Diese Stufe konzentriert sich auf das Testen einzelner, isolierter Komponenten oder Module der Software. Der Hauptfokus liegt darauf, sicherzustellen, dass jede Komponente wie vorgesehen funktioniert. Komponententests werden häufig von Entwicklern durchgeführt und erfordern oft spezielle Werkzeuge oder Frameworks. Beispielsweise könnte ein Entwickler die Funktion eines Codes zur Berechnung von Rabatten testen, um sicherzustellen, dass die Berechnung korrekt ist.

- **Komponentenintegrationstest**: Hier liegt der Fokus auf der Überprüfung der Interaktionen und Schnittstellen zwischen verschiedenen Komponenten. Dieser Test prüft, ob die Komponenten ordnungsgemäß zusammenarbeiten, was besonders wichtig ist, wenn verschiedene Module zusammengefügt werden. Ein Beispiel wäre das Testen der Schnittstelle zwischen einem Rabattsystem und dem Warenkorb-Modul eines Online-Shops, um sicherzustellen, dass Rabatte korrekt angewendet werden.

- **Systemtest**: Diese Stufe umfasst das Testen des gesamten Systems oder Produkts. Dabei werden sowohl funktionale als auch nicht-funktionale Aspekte überprüft. Der Systemtest wird häufig von einem unabhängigen Testteam durchgeführt und bewertet, ob das gesamte System alle Anforderungen erfüllt. Beispielsweise könnte man testen, ob ein Online-Shop alle gewünschten Funktionen bereitstellt und gleichzeitig die Benutzerfreundlichkeit und Leistung in einer realistischen Testumgebung überprüfen.

- **Systemintegrationstest**: Hierbei werden die Schnittstellen zwischen dem getesteten System und externen Systemen oder Diensten überprüft. Ziel ist es, sicherzustellen, dass die Integration reibungslos funktioniert. Ein Beispiel könnte das Testen der Integration eines Zahlungsdienstleisters in einen Online-Shop sein, um zu prüfen, ob Transaktionen korrekt verarbeitet werden.

- **Abnahmetest**: Diese Stufe zielt darauf ab, zu überprüfen, ob das System den Geschäftsanforderungen entspricht und bereit für den Einsatz ist. Idealerweise wird dieser Test von den Endbenutzern durchgeführt. Verschiedene Formen des Abnahmetests umfassen den Benutzerabnahmetest, betriebliche Abnahmetests und regulatorische Abnahmetests. Ein Beispiel ist der Benutzerabnahmetest, bei dem die beabsichtigten Benutzer prüfen, ob das System ihre Bedürfnisse erfüllt und benutzerfreundlich ist.

#### 2.2.2 Testarten

- **Funktionale Tests**: Diese Tests überprüfen, ob die Software die erwarteten Funktionen erfüllt. Der Fokus liegt auf der funktionalen Vollständigkeit und Korrektheit der Software. Ein Beispiel wäre das Testen einer Anmeldefunktion, um sicherzustellen, dass ein Benutzer sich erfolgreich einloggen kann.

- **Nicht-funktionale Tests**: Diese Tests bewerten Aspekte wie Leistung, Sicherheit und Benutzerfreundlichkeit. Der Fokus liegt auf „wie gut“ sich das System verhält. Beispielsweise könnte man testen, ob eine Website innerhalb von zwei Sekunden lädt oder ob sie auf verschiedenen Geräten gut benutzbar ist.

- **Black-Box-Tests**: Diese Tests basieren auf den Spezifikationen der Software und prüfen, ob die Software die festgelegten Anforderungen erfüllt, ohne die interne Implementierung zu berücksichtigen. Ein Beispiel wäre das Testen einer Login-Funktion basierend auf den Anforderungen ohne Einblick in den zugrunde liegenden Code.

- **White-Box-Tests**: Diese Tests betrachten die interne Struktur und den Code der Software, um sicherzustellen, dass alle Teile des Codes ausreichend getestet werden. Zum Beispiel könnte man den Code einer Anwendung überprüfen, um sicherzustellen, dass alle Pfade und Bedingungen durch Tests abgedeckt sind.

### 2.2.3 Fehlernachtest und Regressionstest

- **Fehlernachtest**: Dieser Test prüft, ob ein zuvor entdeckter Fehler erfolgreich behoben wurde. Je nach Risiko kann dies durch das erneute Ausführen aller betroffenen Testfälle oder durch gezielte Tests der Änderungen erfolgen. Ein Beispiel wäre, nach der Behebung eines Fehlers in einer Rabattsfunktion zu testen, ob der Fehler tatsächlich beseitigt wurde.

- **Regressionstest**: Dieser Test stellt sicher, dass Änderungen an der Software keine neuen Fehler verursachen und bestehende Funktionen weiterhin korrekt arbeiten. Zum Beispiel könnte nach der Implementierung eines neuen Features getestet werden, ob alle bisherigen Funktionen wie gewohnt funktionieren. Die Automatisierung von Regressionstests ist häufig sinnvoll, um sie effizient wiederholt auszuführen.

#### 2.2.4 Wartungstest

Wartungstests werden durchgeführt, um sicherzustellen, dass Änderungen an der Software erfolgreich implementiert wurden und keine neuen Fehler eingeführt haben. Wartung kann geplante Erweiterungen, korrigierende Änderungen oder Anpassungen an neue Umgebungen umfassen. 

- **Korrigierende Wartung**: Behebt Fehler in der bestehenden Software.
- **Adaptive Wartung**: Passt die Software an neue Umgebungen oder Technologien an.
- **Perfektionierende Wartung**: Verbessert die Leistung oder Wartbarkeit der Software.

Bevor Änderungen implementiert werden, wird oft eine Auswirkungsanalyse durchgeführt, um die potenziellen Auswirkungen auf das System zu bewerten. Beispielsweise könnte nach einem Upgrade auf eine neue Plattform getestet werden, ob die Software korrekt auf der neuen Plattform funktioniert und ob Datenmigration erfolgreich durchgeführt wurde.

---
## 3. Statischer Test

#### 3.1 Grundlagen des statischen Tests

Statische Tests sind eine Methodik zur Überprüfung der Softwarequalität, bei der die Software nicht ausgeführt wird. Stattdessen werden verschiedene Arbeitsergebnisse wie Code, Spezifikationen oder Dokumente durch manuelle Überprüfungen oder automatische Werkzeuge analysiert. Die Hauptziele statischer Tests sind die Verbesserung der Qualität, das Aufdecken von Fehlern und die Bewertung von Merkmalen wie Lesbarkeit, Vollständigkeit, Korrektheit, Testbarkeit und Konsistenz. Diese Tests können sowohl zur Verifizierung als auch zur Validierung eingesetzt werden.

#### 3.1.1 Arbeitsergebnisse, die durch statische Tests untersucht werden können

Statische Tests können auf eine Vielzahl von Arbeitsergebnissen angewendet werden. Dazu gehören:

- **Dokumente zur Spezifikation von Anforderungen:** Hier wird überprüft, ob die Anforderungen klar, vollständig und konsistent sind.
- **Quellcode:** Durch statische Analyse können Fehler im Code entdeckt werden, wie z.B. undefinierte Variablen oder nicht erreichbarer Code.
- **Testkonzepte und Testfälle:** Diese werden auf Vollständigkeit und Korrektheit überprüft.
- **Produkt-Backlog-Elemente:** Hier wird sichergestellt, dass alle erforderlichen Elemente enthalten sind.
- **Projektdokumentation und Verträge:** Diese werden auf Konsistenz und Einhaltung von Standards überprüft.
- **Modelle und Text mit formaler Syntax:** Diese werden durch Werkzeuge analysiert, die die Struktur und Syntax überprüfen.

Arbeitsergebnisse, die für Menschen schwer interpretierbar sind oder keinen formalen Strukturstandard haben, wie z.B. ausführbarer Code von Drittanbietern, eignen sich nicht für statische Tests.

#### 3.1.2 Wert des statischen Tests

Der statische Test bietet mehrere Vorteile:

- **Frühe Fehlererkennung:** Da statische Tests früh im Entwicklungsprozess durchgeführt werden können, können Fehler bereits in der frühen Phase aufgedeckt werden. Dies hilft, teure Nacharbeiten in späteren Phasen zu vermeiden.
- **Qualitätsbewertung:** Durch die Überprüfung von Anforderungen und anderen Dokumenten kann die Qualität und Klarheit der Arbeitsergebnisse sichergestellt werden. Dies fördert ein gemeinsames Verständnis zwischen den Stakeholdern und verbessert die Kommunikation.
- **Kostenersparnis:** Obwohl die Durchführung von Reviews Zeit und Kosten verursacht, sind die Gesamtkosten des Projekts in der Regel geringer, da spätere Fehlerbehebungen vermieden werden.
- **Effizienz:** Statische Analysewerkzeuge können Fehlerzustände effizienter identifizieren als dynamische Tests, was zu weniger Fehlern und einem geringeren Entwicklungsaufwand führt.

#### 3.1.3 Unterschiede zwischen statischem Test und dynamischem Test

Statische und dynamische Tests ergänzen sich, haben aber unterschiedliche Ansätze:

- **Fehlererkennung:** Statische Tests finden Fehler direkt durch Analyse von Dokumenten oder Code, während dynamische Tests Fehlerwirkungen aufdecken, aus denen die zugrunde liegenden Fehlerzustände durch Analyse ermittelt werden.
- **Erreichbarkeit von Codepfaden:** Statische Tests können Probleme in schwer erreichbaren oder selten genutzten Codepfaden aufdecken, die durch dynamische Tests möglicherweise nicht erfasst werden.
- **Anwendbarkeit auf Arbeitsergebnisse:** Statische Tests können auf nicht ausführbare Arbeitsergebnisse angewendet werden, wie z.B. Spezifikationen und Entwürfe, während dynamische Tests nur auf ausführbare Arbeitsergebnisse angewendet werden können.
- **Messung von Qualitätsmerkmalen:** Statische Tests messen Qualitätsmerkmale wie Wartbarkeit, die nicht von der Codeausführung abhängen, während dynamische Tests Merkmale wie Performanz messen, die von der Ausführung des Codes abhängen.

Typische Fehler, die durch statische Tests leichter entdeckt werden können, sind Inkonsistenzen in Anforderungen, ineffiziente Datenbankstrukturen, undefinierte Variablen im Code, Verstöße gegen Programmierstandards und Sicherheitsanfälligkeiten wie Pufferüberläufe.

### 3.2 Feedback- und Reviewprozess

#### 3.2.1 Vorteile eines frühzeitigen und häufigen Stakeholder-Feedbacks

Frühzeitiges und regelmäßiges Feedback von Stakeholdern ist von entscheidender Bedeutung für den Erfolg eines Projekts. Wenn Stakeholder während des Softwareentwicklungslebenszyklus (SDLC) nur sporadisch oder spät einbezogen werden, besteht die Gefahr, dass das Endprodukt nicht ihren ursprünglichen oder aktuellen Erwartungen entspricht. Dies kann zu kostspieligen Nacharbeiten, Verzögerungen, Schuldzuweisungen und im schlimmsten Fall zu einem kompletten Scheitern des Projekts führen. 

Ein Beispiel dafür wäre ein Softwareprojekt, bei dem die Anforderungen eines Kunden nicht regelmäßig überprüft werden. Später stellt sich heraus, dass wesentliche Funktionen fehlen, die für den Kunden jedoch entscheidend sind. Die nachträgliche Implementierung dieser Funktionen kann erhebliche zusätzliche Kosten und Verzögerungen verursachen. Regelmäßiges Feedback von Anfang an kann solche Probleme frühzeitig erkennen und verhindern. Es hilft, Missverständnisse über die Anforderungen zu vermeiden und sicherzustellen, dass Änderungen an den Anforderungen rechtzeitig umgesetzt werden. Dies verbessert das Verständnis des Entwicklungsteams für das, was entwickelt werden soll, und ermöglicht es, sich auf die wichtigsten Funktionen zu konzentrieren, die den größten Nutzen bringen.

#### 3.2.2 Aktivitäten des Reviewprozesses

Der Reviewprozess ist eine strukturierte Methode zur Bewertung von Arbeitsergebnissen. Die Norm ISO/IEC 20246 definiert diesen Prozess und bietet einen flexiblen Rahmen, der an spezifische Situationen angepasst werden kann. Bei formalen Reviews sind detaillierte Aufgaben erforderlich, um sicherzustellen, dass das Review gründlich durchgeführt wird. Oft werden Reviews in mehreren Durchläufen durchgeführt, insbesondere wenn das Arbeitsergebnis umfangreich ist.

Die wichtigsten Aktivitäten des Reviewprozesses sind:

- **Planung:** In dieser Phase wird der Umfang des Reviews festgelegt. Dazu gehören der Zweck des Reviews, das zu überprüfende Arbeitsergebnis, die Bewertungsmerkmale, relevante Bereiche, Endekriterien, unterstützende Informationen wie Normen, der Aufwand und der Zeitrahmen.

- **Reviewbeginn:** Hierbei wird sichergestellt, dass alle notwendigen Vorbereitungen getroffen sind. Dazu gehört, dass alle Teilnehmer Zugang zum Arbeitsergebnis haben, ihre Rollen und Verantwortlichkeiten kennen und alle benötigten Unterlagen und Informationen bereitgestellt werden.

- **Individuelles Review:** Jeder Gutachter bewertet das Arbeitsergebnis unabhängig, identifiziert Anomalien und macht Empfehlungen. Verschiedene Reviewmethoden, wie checklistenbasierte oder szenariobasierte Reviews, können angewendet werden.

- **Kommunikation und Analyse:** Die während des Reviews festgestellten Anomalien müssen analysiert und diskutiert werden. Entscheidungen über deren Status, Verantwortlichkeiten und erforderliche Maßnahmen werden in einer Reviewsitzung getroffen. Gegebenenfalls ist ein Folgereview erforderlich.

- **Behebung und Berichterstattung:** Fehlerberichte werden erstellt, um die Nachverfolgung der Korrekturmaßnahmen zu ermöglichen. Das Arbeitsergebnis wird abgenommen, wenn die Endekriterien erfüllt sind, und die Ergebnisse des Reviews werden dokumentiert.

#### 3.2.3 Rollen und Verantwortlichkeiten bei Reviews

Der Reviewprozess involviert verschiedene Stakeholder, die jeweils spezifische Rollen übernehmen:

- **Manager:** Bestimmt, was geprüft wird, und stellt die notwendigen Ressourcen bereit.
- **Autor:** Erstellt und überarbeitet das zu prüfende Arbeitsergebnis.
- **Moderator (Facilitator):** Leitet die Reviewsitzungen, sorgt für effektives Zeitmanagement und schafft eine offene und geschützte Umgebung.
- **Protokollant:** Dokumentiert Anomalien und Entscheidungen, die während des Reviews getroffen werden.
- **Gutachter:** Führt die Reviews durch, identifiziert Anomalien und macht Empfehlungen. Gutachter können Projektmitarbeiter, Fachexperten oder andere Stakeholder sein.
- **Reviewleiter:** Trägt die Gesamtverantwortung für das Review, einschließlich der Auswahl der Teilnehmer und der Organisation des Reviews.

#### 3.2.4 Arten von Reviews

Es gibt verschiedene Arten von Reviews, die je nach Bedarf und Kontext angewendet werden können:

- **Informelles Review:** Keine formalen Prozesse oder dokumentierten Ergebnisse. Ziel ist es, schnell Anomalien zu identifizieren.

- **Walkthrough:** Vom Autor geleitet, dient diesem Review, um die Qualität des Arbeitsergebnisses zu bewerten, Vertrauen aufzubauen, Konsens zu erzielen, neue Ideen zu generieren und Anomalien zu erkennen. Ein individuelles Review der Gutachter ist vorab möglich, aber nicht zwingend erforderlich.

- **Technisches Review:** Fokussiert auf technische Fragen und wird von fachlich qualifizierten Gutachtern durchgeführt. Neben der Identifizierung von Anomalien werden Konsens und Entscheidungsfindungen in Bezug auf technische Probleme angestrebt.

- **Inspektion:** Die formalste Review-Art, die einen detaillierten Prozess umfasst, um möglichst viele Anomalien zu finden. Ziel ist auch die Qualitätsbewertung, der Aufbau von Vertrauen und die Verbesserung des SDLC. Metriken werden gesammelt und zur Prozessverbesserung verwendet.

#### 3.2.5 Erfolgsfaktoren für Reviews

Die Effektivität von Reviews hängt von mehreren Faktoren ab:

- **Klare Ziele und Endekriterien:** Die Ziele des Reviews müssen eindeutig definiert sein, ohne dass die Bewertung der Teilnehmer selbst ein Ziel darstellt.

- **Geeignete Reviewart:** Die Auswahl der Reviewart muss zu den Zielen, der Art des Arbeitsergebnisses und den Projektanforderungen passen.

- **Kleinere Einheiten:** Reviews sollten in überschaubaren Einheiten durchgeführt werden, um die Konzentration der Gutachter zu gewährleisten.

- **Feedback:** Ergebnisse sollten an Stakeholder und Autoren zurückgemeldet werden, um Verbesserungen zu ermöglichen.

- **Vorbereitungszeit:** Den Teilnehmern muss ausreichend Zeit für die Vorbereitung des Reviews eingeräumt werden.

- **Managementunterstützung:** Der Reviewprozess sollte vom Management unterstützt werden.

- **Unternehmenskultur:** Reviews sollten in die Unternehmenskultur integriert werden, um kontinuierliches Lernen und Prozessverbesserungen zu fördern.

- **Schulungen:** Teilnehmer sollten entsprechend geschult werden, um ihre Rollen effektiv erfüllen zu können.

- **Moderation:** Eine gute Moderation der Reviewsitzungen ist entscheidend für den Erfolg des Prozesses.