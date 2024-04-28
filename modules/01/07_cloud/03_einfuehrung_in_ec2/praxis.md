# Erste Schritte mit AWS EC2

## Einleitung

### Ziel dieses Guides

- Dieser Guide führt dich durch die Grundlagen der Erstellung und Verwaltung einer Amazon EC2-Instanz.
- Du lernst, wie man eine EC2-Instanz erstellt, konfiguriert, darauf zugreift und sie verwaltet.

## 1. Im AWS-Konto anmelden

### 1.1 Anmelden bei Amazon Web Services

- Melde dich bei der Techstarter Sandbox an (wie im Kurs besprochen)
- Stelle sicher, dass du dein Smartphone parat hast für die 2 Faktor-Authentifizierung

### 1.2 Richtige Region auswählen

- Am Anfang jeder Nutzung der AWS Console solltest du sicherstellen, dass du in der richtigen Region arbeitest.
- Wähle die Region, die für deine Anwendung am besten geeignet ist. (In der Regel ist `eu-central-1` (Frankfurt) eine gute Wahl für Deutschland)

## 2. Erstellen einer EC2-Instanz

### 2.1 Navigieren zum EC2-Dashboard

- Klicke im AWS Management Dashboard auf `Dienste`.
- Wähle unter der Kategorie `Compute` den Dienst `EC2`.
- Du kannst auch einfach nach `EC2` suchen und darauf klicken.

### 2.2 Starten der Instanz

- Klicke auf `Instanzen` im linken Menü und dann auf `Instanz starten`.
- Gebe der Instanz einen Namen und eine Beschreibung.
- Wähle ein `Amazon Linux`-AMI oder ein anderes Betriebssystem deiner Wahl.

### 2.3 Instanztyp wählen

- Wähle einen Instanztyp, z.B. `t2.micro`, der kostenlosen Tier-Option.

### 2.4 Konfiguration der Instanz

**Die folgenden Konfigurationsoptionen sind hier nur erklärt, bitte für die erste Übung einfach die Standardeinstellungen belassen:**

- Schlüsselpaar
  - Nötig um sich von lokalem Computer mit der Instanz zu verbinden
  - Erstelle ein neues Schlüsselpaar oder wähle ein bestehendes.
  - In unserem Fall: Belasse die Standardeinstellungen.
- Netzwerk Einstellungen
  - Hier kann das VPC (Netzwerk) und die Subnetzkonfiguration ausgewählt werden.
  - Hier können auch **Sicherheitsgruppen** konfiguriert werden.
    - Firewall-Regeln, die den Zugriff auf die Instanz steuern.
    - In unserem Fall: Wir wollen per SSH auf die Instanz zugreifen, also muss Port 22 geöffnet sein.
    - Das ist auch die Standardeinstellung.
  - Belasse die Standardeinstellungen.
- Speicher
  - Hier kann die Größe und Art des Speichers für die Instanz konfiguriert werden.
  - Normalerweise wird hier Elastic Block Store (EBS) verwendet.
- Erweitere die `Erweiterten Details` für zusätzliche Konfigurationsoptionen wie IAM-Rollen und Monitoring (optional).

### 2.7 Überprüfung und Start der Instanz

- Klicke auf `Überprüfen und starten`.
- Überprüfe alle Einstellungen und klicke auf `Starten`.

## 3. Zugriff auf die EC2-Instanz

### 3.1 Verbinden mit der Instanz

- Gehe zurück zum `EC2 Dashboard`.
- Wähle `Instanzen` und dann deine neu erstellte Instanz.
- Klicke auf `Verbinden`.
- Befolge die Anweisungen, um eine SSH-Verbindung von deinem Computer herzustellen.

## 4. Verwalten und Überwachen der EC2-Instanz

### 4.1 Stoppen und Terminieren der Instanz

- Um Kosten zu sparen, solltest du Instanzen stoppen, wenn du sie nicht benötigst.
- Klicke auf `Instanzen` und wähle die Instanz, die du stoppen möchtest.
- Klicke auf `Aktionen` und dann auf `Instanz stoppen`.
- Wenn du die Instanz nicht mehr benötigst, kannst du sie auch beenden.
- **Achtung:** Beim Beenden einer Instanz werden alle Daten gelöscht!
- Klicke auf `Aktionen` und dann auf `Instanz beenden`.
