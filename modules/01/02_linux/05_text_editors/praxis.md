# Praxis: Textdateien und die `.bashrc`-Datei bearbeiten

## Ziel des Kurses

In diesem Kurs lernst du, wie du eine Textdatei erstellst, bearbeitest und Inhalte in der Shell ausgibst.

Du wirst auch lernen, wie du die `.bashrc`-Datei sicher bearbeitest und nützliche Programme installierst und nutzt.

## 1. Erstellen einer neuen Textdatei

- Öffne ein Terminal.
- Tippe `touch test.txt` ein, um eine neue Textdatei namens `test.txt` zu erstellen.
- Warum `touch`? Mit `touch` kannst du schnell leere Dateien erstellen.

## 2. Editieren der Datei mit Nano

- Im Terminal, öffne die Datei mit Nano durch Eingabe von `nano test.txt`.
- Füge einige Textzeilen hinzu, z.B. "Hallo Welt!"
- Speichere die Änderungen mit `Ctrl + O` und verlasse Nano mit `Ctrl + X`.

## 3. Ausgabe der Datei mit `cat`

- Um den Inhalt deiner Datei anzuzeigen, nutze `cat test.txt`.
- `cat` ist ein nützliches Programm, um den Inhalt von Dateien schnell im Terminal anzuzeigen.

## 4. Backup von `.bashrc`

- Immer vorsichtig sein, wenn du Konfigurationsdateien bearbeitest.
- Bevor wir Änderungen an der `.bashrc`-Datei vornehmen, solltest du ein Backup erstellen: `cp ~/.bashrc ~/.bashrc.bkp`.
- `cp` kopiert die Datei `~/.bashrc` in `~/.bashrc.bkp`.
- Dies gewährleistet, dass du eine Sicherungskopie hast, falls etwas schiefgeht.

## 5. Installation von `fortune`, `cowsay` und `lolcat`

- Installiere die Programme mit deinem Paketmanager, z.B. `sudo apt install fortune cowsay lolcat` für Ubuntu.
- Diese Programme bieten unterhaltsame und farbenfrohe Ausgaben im Terminal.

## 6. Test des Befehls

- Teste die Programme durch Eingabe von `fortune | cowsay | lolcat`.
- Hier siehst du, wie Programme in einer Pipeline zusammenarbeiten: `fortune` erzeugt einen Spruch, `cowsay` stellt diesen in einer Sprechblase dar, und `lolcat` färbt den Text ein.
- Wir werden in einem zukünftigen Kurs mehr über Pipelines lernen.

## Schritt 7: Editieren der `.bashrc`

- Öffne `.bashrc` mit `nano ~/.bashrc`.
- Füge am Ende der Datei `fortune | cowsay | lolcat` hinzu.
- Dies bewirkt, dass bei jedem neuen Terminalfenster eine bunte, sprechende Kuh erscheint.
- Speichere die Änderungen und schließe Nano.

## Schritt 8: Testen der Änderungen

- Öffne ein neues Terminalfenster, um deine Änderungen zu testen.
- Du solltest jetzt bei jedem neuen Terminalfenster eine bunte Nachricht sehen.

Durch diesen Kurs hast du nicht nur gelernt, wie man mit Nano Textdateien bearbeitet, sondern auch, wie man die Shell für unterhaltsame und praktische Zwecke nutzt.

