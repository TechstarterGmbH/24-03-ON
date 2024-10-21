# Einführung in das Softwaretesting

## Warum ist Softwaretesting so wichtig?

### Einführung

Stell dir vor, Software zu entwickeln ist wie ein Kuchen zu backen. Du musst sicherstellen, dass du die richtigen Zutaten in der richtigen Menge hinzufügst und den Kuchen lange genug backst. Das Testen der Software ist wie das Probieren des Kuchens, um sicherzustellen, dass er gut schmeckt, bevor du ihn anderen anbietest.

### Warum müssen wir überhaupt testen?

1. **Qualität sichern**  
   Beim Testen geht es darum, zu gucken, ob die Software macht, was sie soll, und ob sie einfach zu benutzen ist. Das ist wichtig, weil Software, die gut funktioniert, bei den Nutzern beliebter ist und weniger oft repariert werden muss.

   Beispiel: Nehmen wir an, du hast eine Website für Online-Shopping. Wenn die Seite einfach zu nutzen ist und sicher funktioniert, werden die Leute gerne darauf einkaufen. Wenn die Suche auf der Website zum Beispiel schnell die richtigen Produkte findet, ist das super für die Kunden. Durch Tests kannst du solche Sachen überprüfen und sicherstellen, dass alles gut läuft.

2. **Fehler frühzeitig erkennen**  
   Fehler passieren, das ist normal. Aber es ist besser, sie zu finden, bevor die Software benutzt wird. Sonst kann das teuer werden, besonders wenn die Fehler schwerwiegend sind.

   Beispiel: Stell dir vor, in einer App zur Steuerberechnung ist ein Rechenfehler. Wenn Unternehmen diese App nutzen, könnten sie die falsche Steuer zahlen. Das führt zu Problemen mit den Finanzbehörden und vielleicht zu Strafen. Wenn du aber vorher testest, kannst du solche Fehler finden und beheben.

3. **Kosten sparen**  
   Fehler später zu beheben, wenn die Software schon bei den Kunden ist, kann richtig teuer werden. Frühes Testen hilft, Geld zu sparen, weil Probleme behoben werden, bevor sie ernsthaft Schaden anrichten können.

   Beispiel: Wenn ein Fehler in der Software eines Flugzeuges erst entdeckt wird, nachdem es schon in Gebrauch ist, kann das nicht nur sehr teuer werden, um ihn zu beheben, sondern auch gefährlich sein. Durch frühes Testen könnten solche kritischen Fehler vermieden werden.

4. **Gesetzliche Anforderungen erfüllen**  
   In manchen Branchen, wie bei medizinischen Geräten oder Bankensoftware, gibt es strenge Vorschriften, wie sicher und zuverlässig die Software sein muss. Tests helfen, sicherzustellen, dass die Software diesen Vorschriften entspricht.

   Beispiel: Software, die in medizinischen Geräten verwendet wird, muss besonders sicher sein. Wenn ein Gerät aufgrund eines Softwarefehlers falsche Daten liefert, könnte das für Patienten gefährlich sein. Regelmäßige Tests können helfen, solche Fehler zu finden und zu beheben, bevor sie zu einem Problem werden.

## Wie testen wir eigentlich?

### Teststufen

- **Komponententest**: Hier testen wir einzelne Teile der Software, ähnlich wie wenn du nur die Füllung eines Kuchens probierst.
- **Integrationstest**: Jetzt gucken wir, ob die verschiedenen Teile gut zusammenarbeiten, also ob der Kuchen als Ganzes gut schmeckt.
- **Systemtest**: Hier testen wir das gesamte System auf einmal, um sicherzustellen, dass alles richtig funktioniert.
- **Abnahmetest**: Das ist der letzte Test, oft durchgeführt von dem Kunden, der prüft, ob alles seinen Wünschen entspricht.

### Testarten

- **Funktionstest**: Überprüft, ob die Software tut, was sie soll.
- **Usability-Test**: Schaut, ob die Software einfach zu benutzen ist.
- **Sicherheitstest**: Sucht nach Sicherheitslücken in der Software.
- **Leistungstest**: Misst, wie gut die Software unter Belastung funktioniert.

### Fazit

Das Testen von Software ist wie eine Generalprobe vor der großen Premiere. Es hilft uns, Fehler zu finden und zu beheben, bevor sie zu echten Problemen werden. Dadurch sparen wir nicht nur Geld, sondern stellen auch sicher, dass die Software sicher und zuverlässig ist. So wie du keinen Kuchen servieren würdest, den du nicht probiert hast, solltest du auch keine Software freigeben, die nicht getestet wurde.

## Teststufen und Testarten im Detail

### Teststufen (Test Levels)

Beim Testen von Software gibt es verschiedene „Ebenen“ oder Stufen, die dabei helfen, das Produkt Schritt für Schritt zu überprüfen. Jede Stufe zielt darauf ab, unterschiedliche Aspekte und Teile der Software zu testen.

1. **Komponententest (Unit Testing)**  
   Was es ist: Dies ist die erste Teststufe, bei der einzelne Komponenten oder Teile der Software isoliert getestet werden. Man konzentriert sich darauf, die kleinsten testbaren Teile der Software zu überprüfen.

   Real-Life Beispiel: Stellen Sie sich vor, eine App wird entwickelt, die Rezepte speichern und vorschlagen kann. Der Komponententest könnte sich darauf konzentrieren, zu überprüfen, ob das Eingabefeld für die Zutaten die Daten korrekt speichert. Es ist, als ob du überprüfst, ob die Waage richtig kalibriert ist, bevor du die Zutaten für deinen Kuchen wiegst.

2. **Integrationstest**  
   Was es ist: Nachdem einzelne Komponenten getestet wurden, werden sie zu größeren Gruppen zusammengefügt und als Einheit getestet. Dieser Test überprüft, ob die Komponenten gut miteinander interagieren.

   Real-Life Beispiel: Wenn die App entwickelt wird, könnte der Integrationstest überprüfen, ob das Eingabefeld für die Zutaten korrekt mit der Datenbank interagiert, die die Rezepte speichert. Es ist vergleichbar damit, sicherzustellen, dass der Mixer die Zutaten richtig vermischt, nachdem jede einzeln gewogen wurde.

3. **Systemtest**  
   Was es ist: Hier wird das gesamte, vollständig integrierte Software-System getestet, um sicherzustellen, dass es den festgelegten Anforderungen entspricht.

   Real-Life Beispiel: Bei der Rezepte-App würde der Systemtest prüfen, ob die gesamte App funktioniert, wenn sie auf einem Smartphone oder Computer ausgeführt wird. Das umfasst alles von der Eingabe der Rezepte bis zur Anzeige von Vorschlägen. Das ist so, als würdest du den ganzen Kuchen probieren, um sicherzustellen, dass er nicht nur gut aussieht, sondern auch gut schmeckt.

4. **Abnahmetest**  
   Was es ist: Dies ist der letzte Test, der oft vom Endkunden durchgeführt wird, um zu bestätigen, dass die Software seinen Erwartungen entspricht und bereit für die Auslieferung ist.

   Real-Life Beispiel: Stellen Sie sich vor, der Endbenutzer der Rezepte-App ist ein großer Kochblog. Der Abnahmetest könnte darin bestehen, dass der Blogger die App eine Woche lang benutzt, um zu sehen, ob sie in seiner täglichen Kochroutine nützlich und fehlerfrei ist. Es ist wie wenn du deinen Freunden den Kuchen servierst, um ihre Zustimmung zu bekommen.

### Testarten (Types of Testing)

Jetzt, wo wir die Teststufen kennen, werfen wir einen Blick auf die verschiedenen Arten von Tests, die angewendet werden können.

1. **Funktionstest (Functional Testing)**  
   Was es ist: Überprüft, ob die Software die spezifizierten Funktionen gemäß den Anforderungen ausführt.

   Real-Life Beispiel: Funktioniert die Suchfunktion in der Rezepte-App? Liefert sie die richtigen Rezepte basierend auf den eingegebenen Zutaten?

2. **Usability-Test (Usability Testing)**  
   Was es ist: Testet, wie einfach und intuitiv die Software für Endbenutzer zu bedienen ist.

   Real-Life Beispiel: Ist die Rezepte-App leicht zu navigieren? Können neue Nutzer schnell verstehen, wie man Rezepte sucht und speichert?

3. **Sicherheitstest (Security Testing)**  
   Was es ist: Überprüft die Software auf Sicherheitslücken, die es Angreifern ermöglichen könnten, sensible Informationen zu stehlen oder die Anwendung zu beschädigen.

   Real-Life Beispiel: Ist die Rezepte-App sicher gegen Hackerangriffe? Werden die Benutzerdaten sicher gespeichert und übertragen?

4. **Leistungstest (Performance Testing)**  
   Was es ist: Misst, wie gut die Software unter verschiedenen Betriebsbedingungen funktioniert, insbesondere wenn sie unter Last arbeitet.

   Real-Life Beispiel: Wie schnell lädt die Rezepte-App, auch wenn viele Nutzer gleichzeitig darauf zugreifen? Bleibt sie stabil, auch wenn viele Daten gleichzeitig verarbeitet werden?

## Prinzipien des Testens

### Einführung

Beim Softwaretesting gibt es ein paar grundlegende Prinzipien, die wie die Spielregeln beim Fußball sind. Sie helfen uns zu verstehen, wie wir beim Testen vorgehen sollten, damit wir sicherstellen können, dass unsere Software gut funktioniert und keine bösen Überraschungen auf uns warten.

### Die sieben grundlegenden Prinzipien

1. **Testen zeigt die Anwesenheit von Fehlern**  
   Das bedeutet, dass wir durch Tests Fehler in der Software finden können, aber niemals sicher sein können, dass die Software komplett fehlerfrei ist. Es ist wie beim Suchen von Rechtschreibfehlern in einem Text – wir können einige finden, aber das bedeutet nicht, dass nicht noch mehr da sind.

   Beispiel: Stellen Sie sich vor, Sie testen eine Taschenlampen-App. Sie finden und beheben einen Fehler, der dazu führt, dass die Lampe manchmal nicht einschaltet. Obwohl dieser Fehler behoben ist, könnte es noch andere Probleme geben, die noch nicht entdeckt wurden.

2. **Exhaustives Testen ist unmöglich**  
   Es ist nicht möglich, alle Kombinationen von Eingaben und Voraussetzungen zu testen. Daher müssen wir klug wählen, welche Tests wir durchführen, basierend auf Risiko und Wichtigkeit.

   Beispiel: Eine Wetter-App könnte theoretisch für jede mögliche Wetterkombination getestet werden, aber das ist unrealistisch. Stattdessen konzentriert man sich darauf, die häufigsten Wetterbedingungen zu testen und sicherzustellen, dass die App unter diesen Bedingungen korrekt funktioniert.

3. **Frühzeitiges Testen**  
   Je früher im Entwicklungsprozess getestet wird, desto besser. Das hilft, Fehler zu finden, bevor sie teuer zu beheben sind.

   Beispiel: Wenn ein Fehler in der Planungsphase einer Software für Online-Banking gefunden wird, kann er behoben werden, bevor er in die Entwicklung geht, was viel Zeit und Geld spart.

4. **Defekte Häufung**  
   Fehler sind oft nicht gleichmäßig über die Software verteilt. Einige Bereiche sind fehleranfälliger als andere.

   Beispiel: In einer Spiele-App könnte der Bereich, der die Highscores verwaltet, komplexer und daher anfälliger für Fehler sein als der einfache Startbildschirm.

5. **Das Pesticide-Paradoxon**  
   Wenn die gleichen Tests immer wieder verwendet werden, finden sie keine neuen Fehler. Daher müssen Tests regelmäßig aktualisiert und erweitert werden.

   Beispiel: Wenn Sie immer nur die Grundfunktionen einer Foto-App testen, werden Sie keine Fehler in den neuen Filtern oder Bearbeitungswerkzeugen entdecken, die hinzugefügt wurden.

6. **Testen ist kontextabhängig**  
   Was und wie getestet wird, hängt oft von der Art der Anwendung ab. Eine medizinische Gerätesoftware wird anders getestet als eine einfache Taschenrechner-App.

   Beispiel: Bei einer App für Herzmonitore ist die Genauigkeit und Zuverlässigkeit viel kritischer und wird intensiver getestet als bei einer App, die nur dazu dient, Ihre täglichen Schritte zu zählen.

7. **Irrtum ist menschlich**  
   Auch Tester können Fehler machen. Daher sollten Tests immer von einer Person geplant und von einer anderen überprüft werden.

   Beispiel: Wenn ein Tester einen Testplan für eine E-Mail-App erstellt, könnte ein anderer Tester den Plan überprüfen und sicherstellen, dass keine wichtigen Testfälle vergessen wurden, wie z.B. das Testen des E-Mail-Versands mit großen Anhängen.

### Fazit

Diese Prinzipien helfen uns, unsere Tests effizient und effektiv zu gestalten. Sie erinnern uns daran, dass wir beim Testen strategisch vorgehen müssen, ähnlich wie ein Schachspieler, der nicht nur einzelne Züge, sondern das gesamte Spiel bedenkt. So stellen wir sicher, dass unsere Software robust und benutzerfreundlich ist, ohne dabei unendlich viel Zeit und Ressourcen zu investieren.

## Grundlegender Testprozess

### Einführung

Der grundlegende Testprozess im Softwaretesting ist wie das Rezept für einen Kuchen. Es gibt bestimmte Schritte, die du befolgen musst, um sicherzustellen, dass dein Kuchen (also deine Software) gut wird. Hier sind die Schritte, die wir beim Testen durchlaufen, um zu garantieren, dass die Software so funktioniert, wie sie soll.

### Die Schritte des grundlegenden Testprozesses

1. **Testplanung und Steuerung**  
   Was es ist: Dies ist der Schritt, in dem festgelegt wird, was getestet wird, wie es getestet wird, und wer das Testing durchführen wird. Es geht auch darum, zu entscheiden, wie Erfolg gemessen wird.

   Real-Life Beispiel: Du planst eine Party und entscheidest, was du brauchst, wer eingeladen wird und was das Ziel der Party ist. Bei der Software könnte das Ziel sein, sicherzustellen, dass sie unter allen Bedingungen stabil läuft.

2. **Testanalyse**  
   Was es ist: In diesem Schritt entscheidest du, welche Teile der Software getestet werden müssen. Du identifizierst die risikoreichsten Bereiche und konzentrierst dich darauf.

   Real-Life Beispiel: Du schaust dir die Zutaten deines Kuchens an und entscheidest, welche die wichtigsten sind, um sicherzustellen, dass der Kuchen gelingt. Bei der Software könnte das bedeuten, sich auf die Teile zu konzentrieren, die für den Benutzer am wichtigsten sind.

3. **Testentwurf**  
   Was es ist: Jetzt erstellst du die "Rezepte" oder Testfälle für deine Tests. Du legst fest, was genau getestet wird und wie die Tests durchgeführt werden.

   Real-Life Beispiel: Du schreibst auf, wie du den Kuchen backen willst, welche Temperatur du brauchst, und wie lange er im Ofen bleiben muss. Bei der Software schreibst du auf, welche Schritte unternommen werden müssen, um einen bestimmten Teil der Software zu testen.

4. **Testimplementierung und -ausführung**  
   Was es ist: Dies ist der Schritt, in dem du deine geplanten Tests tatsächlich durchführst. Du setzt die Testfälle um und beobachtest, ob die Software sich so verhält, wie sie soll.

   Real-Life Beispiel: Jetzt backst du den Kuchen und beobachtest, ob er aufgeht und richtig gart. Bei der Software führst du die Tests durch und siehst, ob sie fehlerfrei funktioniert.

5. **Testauswertung und Bericht**  
   Was es ist: Nachdem die Tests durchgeführt wurden, musst du die Ergebnisse bewerten und entscheiden, ob die Software bereit für die Auslieferung ist oder ob weitere Tests notwendig sind.

   Real-Life Beispiel: Du prüfst, ob der Kuchen gut schmeckt und richtig aussieht. Wenn nicht, musst du vielleicht einige Dinge ändern und es noch einmal versuchen. Bei der Software analysierst du die Testergebnisse und entscheidest, ob sie den Anforderungen entspricht oder ob Fehler behoben werden müssen.

6. **Testabschlussaktivitäten**  
   Was es ist: Das ist der Schritt, in dem das Testing formal abgeschlossen wird. Das beinhaltet die Archivierung der Testdaten und -ergebnisse und das Reflektieren darüber, was beim Testprozess gut lief und was verbessert werden könnte.

   Real-Life Beispiel: Nach der Party räumst du auf und überlegst, was gut gelaufen ist und was du das nächste Mal anders machen würdest. Bei der Software geht es darum, alles für zukünftige Tests bereitzuhalten und aus den Erfahrungen zu lernen.

### Fazit

Wie beim Backen eines Kuchens, ist der grundlegende Testprozess entscheidend dafür, dass die Software gut funktioniert und die Benutzer zufrieden sind. Jeder Schritt ist wichtig, um sicherzustellen, dass keine Probleme übersehen werden und dass das Endprodukt so ist, wie es sein sollte.

## Psychologie des Testens

### Einführung

Die Psychologie des Testens beschäftigt sich damit, wie Tester denken und welche Einstellungen sie haben sollten, um effektiv zu sein. Es geht nicht nur darum, was du testest, sondern auch, wie du darüber denkst.

### Warum ist die Einstellung so wichtig?

- **Denkweise des Testers**  
  Ein guter Tester muss eine kritische Denkweise haben. Das heißt, er sollte immer davon ausgehen, dass es irgendwo ein Problem gibt und es seine Aufgabe ist, dieses Problem zu finden. Es ist ein bisschen wie Detektivarbeit – du suchst nach Hinweisen und versuchst, das Rätsel zu lösen.

  Beispiel: Stellen Sie sich vor, Sie testen eine neue App, die Routen für Radfahrer vorschlägt. Ein Tester mit einer kritischen Denkweise würde nicht nur überprüfen, ob die App funktioniert, wenn alles perfekt ist, sondern auch, was passiert, wenn etwas Unerwartetes eintritt, wie zum Beispiel eine gesperrte Straße.

- **Unabhängigkeit**  
  Tester sollten unabhängig von den Entwicklern sein, die die Software geschrieben haben. Das hilft, unbefangen und objektiv zu bleiben. Manchmal kann es schwer sein, Fehler in etwas zu finden, das man selbst gemacht hat, weil man nicht möchte, dass es fehlerhaft ist.

  Beispiel: Ein Entwickler könnte eine Einkaufslisten-App erstellt haben und denkt, sie ist perfekt. Ein unabhängiger Tester könnte jedoch schnell feststellen, dass die App abstürzt, wenn man versucht, mehr als 20 Artikel hinzuzufügen.

- **Konstruktive Konflikte**  
  Ein gutes Testteam sollte in der Lage sein, konstruktive Kritik zu üben und auch zu empfangen. Es geht nicht darum, jemanden schlecht aussehen zu lassen, sondern darum, das Produkt zu verbessern.

  Beispiel: Wenn ein Tester einen Fehler in der App findet, sollte das Feedback so gegeben werden, dass es hilft, das Problem zu verstehen und zu beheben, nicht um den Entwickler zu kritisieren.

- **Verständnis und Kommunikation**  
  Tester müssen auch gute Kommunikatoren sein, weil sie ihre Funde und Bedenken klar und deutlich an andere Teammitglieder weitergeben müssen. Sie sollten auch die Perspektive der Endnutzer verstehen können, um zu sehen, wie diese die Software verwenden würden.

  Beispiel: Wenn ein Tester feststellt, dass die Buttons in einer App zu klein sind, muss er erklären können, warum das ein Problem ist, insbesondere für Benutzer mit größeren Fingern oder motorischen Einschränkungen.

### Fazit

Die Psychologie des Testens ist ein wichtiger Aspekt, der oft übersehen wird. Ein Tester muss nicht nur technische Fähigkeiten haben, sondern auch die richtige Einstellung und die Fähigkeit, kritisch zu denken, unabhängig zu sein, und effektiv zu kommunizieren. Es geht darum, Probleme zu finden und zu lösen, um sicherzustellen, dass das Endprodukt so gut wie möglich ist. Denken Sie daran, es ist wie eine Teamarbeit in einem Detektivfilm – jeder hat seine Rolle, und zusammen lösen Sie das Rätsel, damit die Software ein Erfolg wird.
