## Sicherheitsgruppe erstellen

So erstellst du eine Sicherheitsgruppe:

1. Gehe zur AWS Management Console und navigiere zum EC2-Dashboard.
2. Wähle im Navigationsbereich Security Groups (Sicherheitsgruppen) aus.
3. Wähle Create security group (Sicherheitsgruppe erstellen) aus.

Gehe im Abschnitt Basic details (Grundlegende Details) wie folgt vor:

1. Gib einen beschreibenden Namen und eine kurze Beschreibung für die Sicherheitsgruppe ein. Du kannst diese nicht bearbeiten, nachdem die Sicherheitsgruppe erstellt wurde. Der Name und die Beschreibung können bis zu 255 Zeichen lang sein. Die zulässigen Zeichen sind a-z, A-Z, 0-9, Leerzeichen und ._-:/()#,@[]+=&;{}!$*.
2. Wähle unter VPC die VPC aus.
3. Du kannst Regeln für eine Sicherheitsgruppe jetzt erstellen oder zu einem späteren Zeitpunkt hinzufügen.
3. Du kannst Tags (Markierungen) jetzt erstellen oder zu einem späteren Zeitpunkt hinzufügen. Um eine Markierung hinzuzufügen, wähle Add Tags (Tags (Markierung) hinzufügen) und gib dann den Markierungsschlüssel und -Wert ein.
4. Wähle Sicherheitsgruppe erstellen aus.

## Sicherheitsgruppe kopieren

So kopierst du eine Sicherheitsgruppe:

1. Gehe zur AWS Management Console und navigiere zum EC2-Dashboard.
2. Wähle im Navigationsbereich Security Groups (Sicherheitsgruppen) aus.
3. Wähle die zu kopierende Sicherheitsgruppe und wähle Actions (Aktionen), Copy to new security group (In neue Sicherheitsgruppe kopieren).
3. Gib einen Namen und eine optionale Beschreibung an und ändere bei Bedarf die VPC und Sicherheitsgruppenregeln.
4. Wähle Create (Erstellen) aus.

## Hinzufügen von Regeln

Eingehende Regel hinzufügen:

1. Öffne die Amazon EC2-Konsole.
2. Wähle Security Groups aus.
3. Wähle die gewünschte Sicherheitsgruppe und dann Aktionen > Eingangsregeln bearbeiten.
4. Füge eine Regel hinzu, indem du den Typ des Protokolls, die Quelle und eine optionale Beschreibung angibst.
5. Speichere die Regeln.

Ausgehende Regel hinzufügen:

1. Öffne die Amazon EC2-Konsole.
2. Wähle Security Groups aus.
3. Wähle die gewünschte Sicherheitsgruppe und dann Aktionen > Ausgangsregeln bearbeiten.
4. Füge eine Regel hinzu, indem du den Typ des Protokolls, das Ziel und eine optionale Beschreibung angibst.
5. Bestätige die Änderungen.

## Löschen einer Sicherheitsgruppe

Um eine Sicherheitsgruppe zu löschen, folge diesen Schritten:

1. Öffne die Amazon EC2-Konsole.
2. Wähle Security Groups im Navigationsbereich aus.
3. Wähle die Sicherheitsgruppe aus und dann Aktionen > Sicherheitsgruppe löschen.
4. Wenn du zur Bestätigung aufgefordert wirst, wähle Delete (Löschen).

## Ändern der Sicherheitsgruppe einer Instanz

So änderst du die Sicherheitsgruppen für eine Instanz:

1. Öffne die Amazon EC2-Konsole.
2. Wähle Instances im Navigationsbereich aus.
3. Wähle deine Instanz aus und dann Actions (Aktionen) > Security (Sicherheit) > Change security groups (Sicherheitsgruppen ändern).
4. Wähle für Associated security groups (Zugehörige Sicherheitsgruppen) eine Sicherheitsgruppe aus der Liste aus und klicke auf Add security group (Sicherheitsgruppe hinzufügen).
5. Um eine bereits zugeordnete Sicherheitsgruppe zu entfernen, wähle Remove (Entfernen) für diese Sicherheitsgruppe.
6. Wähle Save aus.

## Aufräumen

Lösche nicht mehr benötigte Sicherheitsgruppen