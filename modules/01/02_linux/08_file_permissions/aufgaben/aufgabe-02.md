# Aufgabe 2: Praxis zu Permissions unter Linux

In dieser Praxisaufgabe wirst du die Theorie zu Dateiberechtigungen unter Linux in die Praxis umsetzen.
Führe die folgenden Schritte in deinem Linux-Terminal aus.
Gebe einen Screenshot von deinem Terminal aus, auf dem die Ausführung der Befehle und die Ergebnisse zu sehen sind.

## 1. Widerholung

Die Aufgabe ist komplexer als bisher. Bei Problemen kann auch nur ein Teil der Aufgabe abgegeben werden.

1. Navigiere zu dem Verzeichnis /usr/share
2. Erstelle ein neues Verzeichnis namens `secrets`. (Eventuell benötigst du sudo-Power)
3. Wechsle in das Verzeichnis `secrets`.
4. Erstelle eine neue Datei namens `bankdaten.txt`. (Eventuell benötigst du sudo-Power)
5. Schreibe in die Datei `bankdaten.txt` den Text `Meine Kontonummer ist 1234567890`. (Eventuell benötigst du sudo-Power)
6. Benötigst du sudo für das Schreiben der Datei? Warum?
7. Lese dir folgenden Artikel durch zum Befehl `chown`: [https://wiki.ubuntuusers.de/chown/](https://wiki.ubuntuusers.de/chown/)
8. Wir wollen nun eine neue Gruppe erstellen und allen Benutzern, die in dieser Gruppe sind, Zugriff auf das Verzeichnis `secrets` und die Datei `bankdaten.txt` geben. Wie würdest du das machen?
9. Der Befehl `sudo groupadd` erstellt eine neue Gruppe. Wie lautet der Befehl, um eine Gruppe namens `geheim` zu erstellen?
10. Füge deinen Benutzer zur Gruppe `geheim` hinzu. Nutze hierfür den Befehl `sudo usermod -a -G geheim <dein user name>`.
11. Es kann sein, dass du dich neu einloggen musst oder einen Neustart durchführen musst, damit die Gruppenzugehörigkeit wirksam wird. Überprüfe, ob du in der Gruppe `geheim` bist. ( Der Befehl `groups` zeigt deine Gruppen an)
12. Setze die Gruppe des `secrets`-Verzeichnisses auf `geheim`. (Nutze hierfür den Befehl `chown` den du in Schritt 7 gelesen hast)
13. Setze die Gruppe der Datei `bankdaten.txt` auf `geheim`.
14. Setze die Berechtigungen für das Verzeichnis `secrets` auf `rwx` für den Eigentümer, `rwx` für die Gruppe und `---` für Andere.
15. Setze die Berechtigungen für die Datei `bankdaten.txt` auf `rw-` für den Eigentümer, `rw-` für die Gruppe und `---` für Andere.

Jetzt solltest du und alle Benutzer, die in der Gruppe `geheim` sind, Zugriff auf das Verzeichnis `secrets` und die Datei `bankdaten.txt` haben.

## 2. Freiwillige Bonusaufgabe

Erstelle ein Shell Script, was folgenden Usecase abdeckt:

- Am Anfang des Scripts soll eine Variable `username` definiert werden
- Das Script soll den User `username` in die Gruppe `geheim` hinzufügen
- Das Script soll direkt eine Private Datei für den User `username` in dem Verzeichnis `secrets` erstellen
- Die Datei soll den Namen `username_privat.txt` (username wird ersetzt durch den wirklichen usernamen) haben und den Inhalt `Geheime Informationen für username`
- Die Berechtigungen für die Datei sollen auf `rw-` für den Eigentümer, `---` für die Gruppe und `---` für Andere gesetzt werden
