## Tutorial: Senden von E-Mails mit Amazon SNS

### Schritt 1: AWS Management Console öffnen

1. Melde dich bei AWS an.
2. Navigiere zum **Simple Notification Service (SNS)**.

### Schritt 2: Erstellen eines SNS-Themas (Topic)

Ein **Topic** in SNS ist ein logischer Kanal, über den Nachrichten gesendet werden. Abonnenten (z.B. E-Mail-Adressen) können sich für dieses Thema anmelden, um Nachrichten zu erhalten.

1. Klicke im SNS-Dashboard auf **"Create topic"**.
2. Wähle **"Standard"** als Topic-Typ.
3. Gib einen **Namen** für das Thema ein, z.B. `MyEmailTopic`.
4. Klicke auf **"Create topic"**.

### Schritt 3: Hinzufügen eines Abonnements zum Thema

Ein **Subscription** (Abonnement) verbindet eine Zieladresse (z.B. eine E-Mail-Adresse) mit einem Thema. Wenn eine Nachricht an das Thema gesendet wird, wird sie an alle Abonnenten weitergeleitet.

1. Wähle das gerade erstellte Thema (`MyEmailTopic`) aus der Liste der Themen aus.
2. Klicke auf **"Create subscription"**.
3. Wähle **"Protocol"** als **E-Mail**.
4. Gib die **E-Mail-Adresse** ein, an die die Nachrichten gesendet werden sollen.
5. Klicke auf **"Create subscription"**.

### Schritt 4: Bestätigen des Abonnements

1. Überprüfe dein E-Mail-Postfach für eine Bestätigungs-E-Mail von AWS SNS.
2. Klicke auf den **Bestätigungslink** in der E-Mail, um das Abonnement zu aktivieren.

### Schritt 5: Senden einer Nachricht an das Thema

Eine **Message** (Nachricht) ist der Inhalt, der an ein Thema gesendet wird und dann an alle Abonnenten des Themas verteilt wird.

1. Gehe zurück zur Seite des Themas (`MyEmailTopic`) in der SNS-Konsole.
2. Klicke auf **"Publish message"**.
3. Gib einen **Betreff** (Subject) für die Nachricht ein, z.B. `Test Message`.
4. Gib den **Nachrichtentext** (Message) ein, z.B. `This is a test message from SNS`.
5. Klicke auf **"Publish message"**.

### Erklärung der Begriffe

- **Topic**: Ein Thema ist ein logischer Kanal, über den Nachrichten gesendet werden. Abonnenten können sich für ein Thema anmelden, um Nachrichten zu erhalten. Es handelt sich um eine zentrale Komponente in SNS, die als Vermittler zwischen dem Publisher (der die Nachricht sendet) und den Abonnenten (die die Nachricht empfangen) dient.
  
- **Message**: Eine Nachricht ist der Inhalt, der an ein Thema gesendet wird. Diese Nachricht kann Text, JSON oder ein anderes Datenformat enthalten. Die Nachricht wird an alle Abonnenten des Themas verteilt, sobald sie veröffentlicht wird.

---

Jetzt hast du erfolgreich ein Thema erstellt, ein E-Mail-Abonnement hinzugefügt und eine Nachricht über Amazon SNS gesendet. Dies ist ein grundlegendes Beispiel, das zeigt, wie SNS verwendet werden kann, um Nachrichten per E-Mail zu senden.