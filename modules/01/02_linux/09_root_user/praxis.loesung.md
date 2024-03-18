# Praxis Lösung

Um die Rechte richtig anzupassen, muss folgendes zur `sudoers`-Datei hinzugefügt werden:

```
%powergroup ALL=(ALL) NOPASSWD: /bin/cat
```

- Immer wenn die Zeile mit einem `%` beginnt, wird eine Gruppe referenziert.
- `powergroup` ist der Name der Gruppe, die wir erstellt haben.
- `ALL` bedeutet, dass die Gruppe auf allen Hosts (Maschinen) die Rechte hat.
- `(ALL)` bedeutet, dass die Gruppe für alle Benutzer die Rechte hat.
- `NOPASSWD` bedeutet, dass die Gruppe den Befehl ohne Passwort ausführen kann.
- `/bin/cat` ist der Befehl, den die Gruppe ausführen darf (alle anderen Befehle sind gesperrt).
