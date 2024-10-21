---
marp: false
theme: default
class:
  - invert
style: |-
  section{
    background-color: #090917;
    color: #F1F1F1;
  }
  h1, h2, h3, h4{
    color: #FC6549;
  }

  em{
    color: #FC6549;
  }
paginate: true
footer: 
---

# AWS Wiederholung: EC2, Storage, Migration & Transfer, Container

---

# Fahrplan

1. EC2 
2. Storage
3. Migration & Transfer
4. Container

---

## 1. Amazon EC2

- Virtuelle Server (Instances)
- Skalierbare Rechenkapazität
- Instance-Typen (General Purpose, Compute Optimized, Memory Optimized, etc.)
- **Zahlungspläne**:
  - **On-Demand**: Bezahlen für Rechenkapazität pro Stunde oder Sekunde ohne langfristige Verpflichtungen
  - **Reserved Instances**: Rabatte (bis zu 75%) im Austausch für eine Verpflichtung von 1 oder 3 Jahren
  - **Spot Instances**: Ersteigern ungenutzter EC2-Kapazität zu stark reduzierten Preisen
  - **Savings Plans**: bis zu 72% Ersparnis im Austausch zu konsistentem Rechenleistungskonsum


---

## 2. Storage

---

## Elastic Block Store
- Blockspeicher für EC2-Instanzen
- Hohe Verfügbarkeit und Zuverlässigkeit
- Verschiedene Volumentypen (SSD, HDD)

---

## Elastic File System
- Skalierbares, elastisches *Dateisystem*
- NFS (Network File System) kompatibel
- Gleichzeitiger Zugriff von mehreren EC2-Instanzen

---

# FsX
- Managed File Systems
- FSx for Windows File Server: *Windows*-native Dateisystem
- FSx for Lustre: Hochleistungsdateisystem für *High-Performance-Computing* (HPC)


---



# Amazon S3
- Objektspeicher: Speichern und Abrufen beliebiger Datenmengen
- **Sicherheit**: IAM-Richtlinien, Bucket-Richtlinien, Verschlüsselung (Server- und Client-seitig)
- **Bucket Versionierung**: Behalten von Versionen geänderter Objekte
- **Datenhaltbarkeit und Verfügbarkeit**: 99.999999999% Haltbarkeit, 99.99% Verfügbarkeit
- **Speicherklassen**: Standard, Standard-IA, One Zone-IA, Glacier, Glacier Deep Archive
- **Preis**: Abhängig von Speicherklasse, Datenübertragungen und API-Aufrufen

---

## 3.  AWS Migration & Transfer

---

## AWS Application Discovery Service
  - Automatisierte Erfassung von Daten über lokale IT-Infrastruktur
  - Identifizierung und Analyse von Anwendungen und Workloads
  - *Planung*

---


 ## AWS Application Migration Service
  - Automatisierte Migration von Anwendungen und Workloads in die Cloud
  - Schnelle und nahtlose Migration von Anwendungen.
  - Vorteile: Zeit- und Ressourceneinsparung, Risikoreduktion

---

 ## AWS Database Migration Service (DMS)
  - *Übertragung von Datenbanken* in die AWS Cloud
  - Minimierung von Ausfallzeiten (DB in Betrieb)
  - Migration zwischen verschiedenen Datenbankplattformen

---


 ## AWS Schema Conversion Tool (SCT)
  - Konvertierung von *Datenbankschemas* für Cloud-Zielsysteme
  - Automatisierung, Minimierung von Konvertierungsfehlern

---

 ## AWS Migration Hub
  - Zentralisierte *Kontrolle* und Überwachung von Migrationen
  - Integration mit anderen Migration Services
  - Vorteile: Transparenz, Nachverfolgbarkeit, Fehlererkennung

---


 ## AWS Snow Family
  - Physische Geräte für große Datenmengen und Offline-Migrationen
  - Übertragung großer Datenmengen ohne Netzwerkverbindung

---

 ## AWS Snowcone
  - Speicher: 8 TB HDD, 14 TB SSD
  - Integrierte Prozessoren und RAM

---

## AWS Snowball
  - Optionen: 80 TB - 210 TB Speicher
  - Integrierter Speicher und Datenverarbeitung

---


## AWS Snowmobile
  - Speicher: 100 PB
  - LKW-basierte Datenübertragung, nur in den USA verfügbar

---


## AWS Transfer Family
- Du möchtest gerne regelmäßig Dateien zwischen Buisness-Partnern oder anderen
AWS-Services übertragen?
- Lade Dateien über FTP oder SFTP hoch und AWS leitet sie entweder an S3 oder
EFS weiter.

---

## 4. AWS Container Services

- **Amazon ECS**: Elastic *Container* Service
- **Amazon EKS**: Elastic *Kubernetes* Service
- **AWS Fargate**: *Serverless* Compute Engine für Container
- **Amazon ECR**: Elastic Container *Registry*

---

## Zusammenfassung

- **EC2**: Flexible virtuelle Server, verschiedene Zahlungspläne
- **EFS**: Skalierbares Dateisystem
- **EBS**: Hochverfügbarer Blockspeicher
- **FSx**: Spezialisierte Managed File Systems
- **S3**: Sicherer Objektspeicher, verschiedene Speicherklassen, hohe Datenhaltbarkeit
- **Migration & Transfer**: Datenmigration und -übertragung
- **Container**: Verwaltung und Orchestrierung von Containern
