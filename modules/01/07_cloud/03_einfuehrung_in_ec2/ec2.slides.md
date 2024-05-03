---

class: invert

---

# Erste Einführung in AWS EC2

---

## Einleitung

### AWS EC2: Eine Einführung

- **AWS EC2** steht für *Amazon Web Services Elastic Compute Cloud*.
- Im Wesentlichen handelt es sich um eine Virtuelle Maschine (wie unser Ubuntu Virtual Box), die in der Cloud gehostet wird.
- Bietet die Flexibilität, Rechenressourcen je nach Bedarf zu erweitern oder zu reduzieren, was in einer physischen Umgebung schwer zu erreichen wäre.

---

## 1. Was ist AWS EC2?

### 1.1 Definition und Zweck von AWS EC2

- **Definition:** AWS EC2 ermöglicht es Benutzern, virtuelle Server, genannt Instanzen, in der Cloud zu betreiben.
- **Zweck:** Bietet sichere, skalierbare Rechenleistung für Entwickler und Unternehmen, um jede Anwendung in der Cloud auszuführen.
- Revolutioniert die Art und Weise, wie Unternehmen IT-Ressourcen bereitstellen und verwalten.

---

### 1.2 Übersicht über AWS EC2 Funktionen

- **Elastizität:** Starte und stoppe Instanzen (weltweit innerhalb von Sekunden), wie es der Arbeitslast deiner Anwendungen entspricht.
- **Steuerung der Netzwerkzugriffe:** Definiere IP-Bereiche, erstelle Subnetze und konfiguriere Routing-Tabellen und Netzwerkgateways.
- **Sicherheit und Compliance:** Konfiguriere Firewall-Einstellungen und manage Zugangsberechtigungen.
- **Amazon Machine Images (AMIs):** Wie die virtuelle DVD, von der du dein Betriebssystem installierst. (z.B. Amazon Linux, Ubuntu, Windows Server)

---

### 1.3 Vorteile von AWS EC2

- **Flexibilität und Kontrolle:** Wähle aus einer Vielzahl von Instanzkonfigurationen die passende für deine Anwendung aus.
- **Globale Reichweite:** Betreibe Instanzen in geografischen Regionen und Verfügbarkeitszonen weltweit.
- **Integrierbarkeit:** AWS EC2 lässt sich nahtlos mit anderen Amazon Web Services integrieren, um komplexe Anwendungen zu unterstützen.

---

## 2. AWS EC2 Instanzen

---

### 2.1 Arten von AWS EC2 Instanzen

- **Instanztypen:** Unterschiedliche Kombinationen von CPU, Speicher, Speicherplatz und Netzwerkkapazität.
- Es gibt verschiedene Instanzfamilien, die auf spezifische Anwendungsfälle zugeschnitten sind.
  - General Purpose
  - Compute Optimized
  - Memory Optimized
  - Storage Optimized
  - etc
- Für alle Instanztypen, finde die Übersicht hier [AWS EC2 Instance Types](https://aws.amazon.com/ec2/instance-types/).

---

- **Beispiel Instanztypen:**
  - **T3/T2:** Kostengünstige Option für eine Vielzahl allgemeiner Anwendungen.
  - **C5:** Hochleistungstyp für rechenintensive Anwendungen wie Batch-Verarbeitung.
  - **R5:** Speicher-optimierte Instanzen für datenintensive Aufgaben wie High-Performance-Datenbanken.

---

### 2.2 Kontrollieren von AWS EC2 Instanzen

- **Lebenszyklus von Instanzen:**
  - **Starten:** Erstelle und starte Instanzen basierend auf deinen Anforderungen.
  - **Stoppen:** Halte Instanzen an, um Kosten zu sparen, ohne Daten zu verlieren.
  - **Beenden:** Lösche Instanzen, wenn sie nicht mehr benötigt werden.

---

### 2.3 Verwalten von AWS EC2 Instanzen

- **Tagging:** Organisiere Ressourcen durch Zuweisung von Labels (Tags), um Kosten zu verfolgen und Ressourcen effizient zu verwalten.
- In der Console findest du eine Übersicht über alle Instanzen und kannst sie nach Tags filtern.

---

### 2.4 Verbinden mit AWS EC2 Instanzen

---

#### 2.4.1 Verbinden mit einer AWS EC2 Instanz über SSH

- **SSH** (Secure Shell) ist ein Protokoll zur sicheren Verbindung mit einem entfernten Computer.
- **Es ist der Standardweg, um sich per Terminal mit einem Linux-Server zu verbinden.**
- **Voraussetzungen:** 
  - Öffne den Port 22 in der Sicherheitsgruppe deiner Instanz.
  - Verwende ein Schlüsselpaar, um dich zu authentifizieren.

---

## 3. AWS EC2 Sicherheit

---

### 3.1 Sicherheitsgruppen in AWS EC2

- **Funktion:** Verhalten sich wie virtuelle Firewalls für Instanzen, um eingehenden und ausgehenden Verkehr zu kontrollieren.
- Wie eine Sicherheitskontrolle am Flughafen: Erlaube oder blockiere den Zugang basierend auf definierten Regeln.
- **Best Practices:** Minimiere offene Ports und beschränke den Zugang auf vertrauenswürdige IPs.

---

### 3.2 Schlüsselpaare in AWS EC2

- **Funktion:** Verschlüsselte Schlüsselpaare werden zur Authentifizierung verwendet, wenn du dich bei deinen Instanzen anmeldest.
- **Sicherheit:** Speichere den privaten Schlüssel sicher und geheim, da er nicht wiederherstellbar ist, falls verloren.

---

## 4. AWS EC2 Preismodell

### 4.1 Kosten von AWS EC2

- **Preisoptionen:** 
  - On-Demand: Der einfachste Weg, um Instanzen zu starten und zu bezahlen. Bezahle die Zeit, die du nutzt.
  - Reserved Instances: Langfristige Verpflichtungen für reduzierte Preise.
  - Spot Instances: Spare Geld, indem du ungenutzte Kapazitäten nutzt. Kommt aber mit Risiken.
  - Dedicated Hosts: Reserviere physische Server für deine Instanzen. Sehr teuer, aber notwendig für bestimmte Anwendungsfälle.

---

- **Kostenverwaltung:** Nutze das AWS Cost Management Dashboard zur Überwachung und Optimierung der Ausgaben.
- **Kostenbeispiel:** Preise variieren je nach Instanztyp, Region und Optionen für Datenspeicher und Datenübertragung.

