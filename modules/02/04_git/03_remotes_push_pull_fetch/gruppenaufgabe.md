# Github Kollaboration

- Einer der Gruppe erstellt ein neues Repository auf Github.
- Danach kann er die anderen Gruppenmitglieder als Collaborators hinzufügen. (Settings -> Manage Access -> Invite a collaborator [Anleitung](https://docs.github.com/en/issues/planning-and-tracking-with-projects/managing-your-project/managing-access-to-your-projects))
- Die anderen Gruppenmitglieder erhalten eine Einladung per E-Mail und können diese annehmen.
- Danach können alle Gruppenmitglieder das Repository clonen (wichtig: mit SSH-URL) `git clone ssh....`
- Einer der Gruppe soll also nun einen neuen Commit erstellen und diesen auf Github pushen.
- Alle anderen Gruppenmitglieder sollen nun die Änderungen pullen.
- Jeder soll nun abwecheslnd Änderungen machen und pushen und die anderen sollen pullen.
- Ziel ist es, dass alle Gruppenmitglieder die Änderungen der anderen sehen können.
- **WICHTIG**: Es soll immer nur eine Person pushen, damit es keine Konflikte gibt.
  - Wenn mehrere Leute gleichzeitig eine Änderung pushen, kann es zu Konflikten kommen.
  - Diese Konflikte müssen dann lokal gelöst werden.
  - Das macht keinen Spaß also bitte erstmal vermeiden!

- Nun soll jeder einen eigenen Branch erstellen und den Branch auf Github pushen.
- Jetzt kann jeder in seinem Branch arbeiten und pushen. (Auch gleichzeitig)
- Ziel ist es, dass jeder in seinem Branch arbeitet und die Änderungen der anderen in den anderen Branches sieht.
- Am Ende können die Branches dann nacheinander gemerged werden und dann gepusht.
