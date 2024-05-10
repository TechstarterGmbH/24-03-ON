# Cheat Sheet: IAM

## Was ist Auth?

- Um Sicherheit in unserem System zu gewährleisten, müssen wir **Authentifizierung** und **Autorisierung** implementieren.

### Authentifizierung

- **WER** bist du?
- Wie bei einer Einlasskontrolle, bei der du deinen Ausweis vorzeigen musst.
- Beispiel: Benutzername und Passwort.
- Nur wenn wir wissen, wer du bist, können wir entscheiden, ob du Zugriff auf XYZ hast

### Autorisierung

- **WAS** darfst du tun?
- Wie bei einem Zugangsberechtigungsschein, der dir Zugriff auf bestimmte Bereiche gewährt.
- Beispiel: Admins können Benutzer hinzufügen, aber Benutzer können das nicht.
- Hier ist die Authentifizierung bereits erfolgt, und wir wissen, wer du bist. (Ansonsten könnten wir nicht entscheiden, was du tun darfst.)

## Was ist IAM?

- **IAM** steht für **Identity and Access Management**.
- **Identity**: Wer bist du? -> Authentifizierung
- **Access**: Was darfst du tun? -> Autorisierung
- **Management**: Wie organisieren wir das?

### User / Benutzer

- Ein Benutzer ist eine Person, die auf AWS-Ressourcen zugreifen kann.
- Es gibt zwei Arten von Benutzern:
  - **Root User**:
    - Der Benutzer, der das AWS-Konto erstellt hat (E-Mail Addresse bei der Erstellung des Accounts).
    - Hat uneingeschränkten Zugriff auf alle AWS-Ressourcen.
  - **IAM User**:
    - Ein Benutzer, der im IAM-Service erstellt wurde.
    - Hat nur Zugriff auf die Ressourcen, die ihm zugewiesen wurden (via Policy, Gruppe etc.).

### Group / Gruppen

- Eine Gruppe ist eine **Sammlung von Benutzern**.
- Vereinfacht die Verwaltung von Berechtigungen.
- Alle Entwickler dürfen EC2-Instanzen starten? -> Gruppe "Entwickler" erstellen und Berechtigungen zuweisen.

### Role / Rollen

- Eine Rolle ist eine **Berechtigung**, die einer **Entität** zugewiesen wird.
- Eine Entität kann ein Benutzer, eine Anwendung oder ein Service sein.
- Rollen werden verwendet, um temporäre Berechtigungen zu erhalten.
- Typen:
  - AWS-Service-Rolle:
    - Eine Rolle, die von einem AWS-Service verwendet wird.
    - Zum Beispiel: EC2-Instanz, die auf S3 zugreifen muss.
  - Cross-Account-Rolle:
    - Eine Rolle, die einem Benutzer in einem anderen AWS-Konto zugewiesen wird.
    - Zum Beispiel: Ein Benutzer in Account A benötigt Zugriff auf Ressourcen in Account B.
  - Externe ID:
    - Eine eindeutige ID, die von einem Drittanbieter bereitgestellt wird.
    - Zum Beispiel: Ein Drittanbieter benötigt Zugriff auf Ressourcen in Ihrem Konto.

### Policy / Richtlinien

- Eine Richtlinie ist ein **Dokument**, das definiert, **was** ein Benutzer tun kann.
- Alle anderen Typen (Benutzer, Gruppen, Rollen) sind **Entitäten**, denen **Richtlinien** zugewiesen werden.
- Eine Richtlinie ist ein **JSON-Dokument**.
- Besteht immer aus mindestens einem **Statement**.
  - **Effect**: Erlauben oder Verweigern.
  - **Action**: Die Aktion, die der Benutzer ausführen kann.
  - **Resource**: Die Ressource, auf die die Aktion angewendet wird.
  - **Condition**: Eine Bedingung, die erfüllt sein muss, damit die Aktion ausgeführt werden kann.
