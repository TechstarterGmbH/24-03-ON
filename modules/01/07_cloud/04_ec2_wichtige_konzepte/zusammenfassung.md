# EC2 Advanced

## EC2 Instance

Eine Amazon EC2-Instanz ist eine virtuelle Maschine (VM) in der AWS-Cloud, die von dem Amazon EC2 Service bereitgestellt wird. Eine EC2 Instance wird mit folgenden Konfigurationen erstellt:

1. **AMI (Amazon Machine Image)**: Ein AMI ist ein vordefiniertes Image oder eine Vorlage, auf der die EC2-Instanz basiert. Es enthält das Betriebssystem, die Anwendungen und die Konfigurationseinstellungen. Benutzer können aus öffentlichen AMIs wählen oder ihre eigenen benutzerdefinierten AMIs erstellen.
2. **Instanztyp (Instance Type)**: Der Instanztyp legt die Hardware-Ressourcen wie CPU, Speicher und Netzwerkfestplattenkapazität für die Instanz fest. Es gibt verschiedene Instanztypen, die für verschiedene Workloads optimiert sind, z. B. Compute-optimiert, Speicher-optimiert oder GPU-optimiert.
3. **Netzwerkkonfiguration**: Dies umfasst die Zuordnung einer virtuellen private Cloud (VPC) und Subnetz, IP-Adressen, Sicherheitsgruppen und Netzwerkzugriffssteuerungslisten (NACLs). Die Netzwerkkonfiguration bestimmt, wie die Instanz im Netzwerk kommunizieren kann.
4. **Speicher**: EC2-Instanzen verwenden verschiedene Arten von Speicher, darunter Instanzspeicher und elastische Blockspeicher (EBS). Der Instanzspeicher ist temporär und wird bei der Instanzzerstörung gelöscht, während EBS-Volume dauerhaften Blockspeicher bietet, der an eine Instanz angehängt werden kann.
5. **Startkonfiguration (User Data)**: Dies sind optionale Skripte oder Befehle, die beim Start der Instanz ausgeführt werden. Sie können verwendet werden, um benutzerdefinierte Konfigurationen oder Initialisierungen durchzuführen.
6. **Schlüsselpaar (Key Pair)**: Ein Schlüsselpaar besteht aus einem öffentlichen und einem privaten Schlüssel und wird verwendet, um auf eine EC2-Instanz zuzugreifen. Der öffentliche Schlüssel wird beim Start der Instanz angegeben, während der private Schlüssel geheim gehalten werden muss.
7. **Metadaten (Instance Metadata)**: Dies sind Informationen und Konfigurationsdaten, auf die die Instanz zugreifen kann, um beispielsweise Informationen über sich selbst oder benutzerdefinierte Metadaten abzurufen.

## **AMI (Amazon Machine Image)**

Ein AMI (Amazon Machine Image) ist ein Image, das als Grundlage für das Erstellen von Amazon EC2-Instances in der AWS-Cloud dient. AMIs bieten eine Möglichkeit, konsistente, reproduzierbare und vordefinierte EC2 Instances bereitzustellen und zu verwalten. AWS-Benutzer können AMIs als Vorlagen für verschiedene Projekte oder Anwendungsfälle wiederverwenden. 

Ein AMI enthält das **Betriebssystem**, auf dem die virtuelle Maschine basiert. Dies kann Linux-Distributionen wie Amazon Linux, Ubuntu, CentOS, Windows-Betriebssysteme wie Windows Server oder MacOS sein. Je nach AMI können **vorinstallierte Software und Anwendungen** enthalten sein. Dies können grundlegende Dienstprogramme, Webserver (wie Apache oder Nginx), Datenbanken (wie MySQL oder PostgreSQL), Entwicklungsframeworks und viele andere Softwarekomponenten sein. Die **Konfigurationseinstellungen** in einem AMI definieren, wie das Betriebssystem und die Anwendungen auf einer EC2 Instance eingerichtet sind. Dies kann beispielsweise Benutzerkonten, Netzwerkkonfiguration, Sicherheitseinstellungen und andere benutzerdefinierte Konfigurationsoptionen umfassen.

Es ist wichtig zu beachten, dass AMIs in der Regel in zwei Varianten verfügbar sind: öffentlich und privat. Öffentliche AMIs können von anderen AWS-Nutzern gefunden und verwendet werden, während private AMIs nur für den Eigentümer oder autorisierte Benutzer sichtbar sind. Benutzer können auch ihre eigenen benutzerdefinierten AMIs erstellen, indem sie eine vorhandene Instanz konfigurieren und dann ein Image von dieser Instanz erstellen.

## EC2 Instance Types

Ein Amazon EC2 Instance Type (Instanztyp) ist eine vordefinierte Konfiguration für eine EC2 Instance. Jeder Instanztyp ist speziell auf bestimmte Leistungsmerkmale und Ressourcenanforderungen zugeschnitten und bietet eine Kombination aus CPU, Arbeitsspeicher, Speicher und Netzwerkleistung.

### Allgemeine Zwecke (General Purpose)

Allgemeine Zwecke (General Purpose) Instanztypen in Amazon EC2 sind so konzipiert, dass sie ein ausgewogenes Verhältnis von CPU, Speicher und Netzwerkleistung bieten. Sie eignen sich gut für Anwendungen und Workloads, bei denen keine spezialisierte Leistungsoptimierung erforderlich ist. 

Anwendungsbeispiele:

- **Webanwendungen**: Allgemeine Zwecke Instanzen sind ideal für das Hosting von Webanwendungen, einschließlich Websites, Blogs und E-Commerce-Plattformen. Sie bieten ausreichend CPU und Speicher, um den Anforderungen des Webverkehrs gerecht zu werden.
- **Entwicklungsumgebungen**: Entwickler verwenden diese Instanztypen oft für die Einrichtung von Entwicklungsumgebungen, in denen sie Code schreiben, testen und debuggen können. Sie bieten die Flexibilität, verschiedene Entwicklungstools und -frameworks auszuführen.
- **Enterprise-Anwendungen**: Für Unternehmensanwendungen wie Customer Relationship Management (CRM) und Enterprise Resource Planning (ERP) können General Purpose Instanzen ausreichend Leistung bieten. Sie sind oft kosteneffizienter als speziell optimierte Instanztypen.
- **Entwicklungs- und Testumgebungen**: Allgemeine Zwecke Instanzen sind ideal für die Erstellung von Entwicklungs- und Testumgebungen. Entwickler können Instanzen schnell erstellen, um Code zu entwickeln, zu testen und zu validieren, bevor er in die Produktion übergeht.
- **Microservices-Architekturen**: Wenn Sie eine Microservices-Architektur verwenden, in der mehrere kleine Dienste unabhängig voneinander ausgeführt werden, können General Purpose Instanzen für die Bereitstellung und Skalierung dieser Dienste verwendet werden.

### **Compute-optimiert (Compute Optimized)**

Compute-optimierte (Compute Optimized) Instance Types sind eine Kategorie von Amazon EC2-Instanztypen, die darauf ausgelegt sind, eine hohe CPU-Leistung zu bieten. Sie eignen sich besonders gut für Workloads und Anwendungen, bei denen rechenintensive Aufgaben im Vordergrund stehen. 

Anwendungsbeispiele:

- **Datenverarbeitung und Analyse**: Compute Optimized Instanzen sind ideal für die Verarbeitung großer Datenmengen und die Ausführung von Datenanalysen. Beispielsweise können sie verwendet werden, um Big Data-Analysen durchzuführen.
- **Hochleistungs-Anwendungsserver**: Compute Optimized Instanzen sind auch für Hochleistungs-Anwendungsserver geeignet, insbesondere wenn Ihre Anwendung eine hohe Anzahl von Anfragen pro Sekunde verarbeiten muss. Sie bieten die Leistung, um schnell auf Anfragen zu reagieren.
- **Batch-Verarbeitung und Automatisierung**: Unternehmen können Compute Optimized Instanzen für die Automatisierung von Geschäftsprozessen und die Stapelverarbeitung (Batch-Verarbeitung) großer Datenmengen verwenden. Dies ist besonders nützlich für das Ausführen von Batch-Jobs, Datenbereinigung und die Automatisierung wiederkehrender Aufgaben.
- **Medienverarbeitung**: Compute Optimized Instanzen können für die Verarbeitung von Medieninhalten wie Bildverarbeitung, Video-Transkodierung und Audioverarbeitung eingesetzt werden. Sie bieten die benötigte Leistung für diese rechenintensiven Aufgaben.
- **Gaming und Unterhaltung**: Bei Online-Spielen und Unterhaltungsanwendungen ist eine schnelle Verarbeitung von Spieleraktionen und Multimedia-Inhalten erforderlich. Compute Optimized Instanzen können dazu beitragen, eine reibungslose Spielerfahrung zu gewährleisten und Multimedia-Inhalte in Echtzeit zu streamen.
- **Ad-Server und Online-Werbung**: Unternehmen im Bereich der digitalen Werbung können Compute Optimized Instanzen verwenden, um Ad-Server und Echtzeit-Bidding-Plattformen bereitzustellen. Diese Instanzen unterstützen die schnelle Verarbeitung von Anfragen und bieten eine hohe Skalierbarkeit für Online-Werbekampagnen.

### Arbeitsspeicheroptimiert (Memory Optimized)

Arbeitsspeicheroptimierte Instances (Memory Optimized) Instance Types sind eine Kategorie von Amazon EC2-Instanztypen, die speziell auf Anwendungen mit hohem Bedarf an Arbeitsspeicher (RAM) ausgelegt sind. Diese Instanzen bieten eine große Menge an Arbeitsspeicher, um Anwendungen zu unterstützen, die große Datenmengen im Speicher halten müssen, was die Leistung und Reaktionsfähigkeit von Anwendungen erheblich verbessert. 

Anwendungsbeispiele:

- **Datenbankserver**: Memory Optimized Instanzen sind ideal für Datenbanken, insbesondere für In-Memory-Datenbanken wie Redis und Memcached. Diese Instanzen ermöglichen es, große Datenmengen im Arbeitsspeicher zu halten, was die Datenabrufzeiten beschleunigt und die Latenz minimiert.
- **In-Memory-Analysen**: Für analytische Workloads, bei denen große Datenmengen schnell verarbeitet werden müssen, sind Memory Optimized Instanzen geeignet. Sie sind ideal für Anwendungen, die komplexe Abfragen und Analysen im Speicher durchführen, wie Business Intelligence (BI)-Tools und Echtzeit-Analytikplattformen.
- **Hochleistungs-Datenbanken**: Unternehmen, die High-Performance-Datenbanken benötigen, können Memory Optimized Instanzen verwenden. Diese bieten genügend RAM, um die Leistung von Datenbankabfragen zu steigern.
- **Hochleistungs-Caching**: Memory Optimized Instanzen eignen sich hervorragend für die Bereitstellung von Hochleistungs-Caching-Schichten in Anwendungen. Sie können als Zwischenspeicher für häufig verwendete Daten dienen und die Antwortzeiten der Anwendung erheblich verbessern.
- **Java-Anwendungen**: Java-basierte Anwendungen, die oft mehr Arbeitsspeicher benötigen, können von Memory Optimized Instanzen profitieren. Dies gilt insbesondere für Enterprise-Anwendungen und Anwendungen, die Java Virtual Machines (JVMs) verwenden.

### Speicheroptimiert (Storage Optimized)

Speicheroptimierte (Storage Optimized) Instance Types sind eine Kategorie von Amazon EC2-Instanztypen, die sich durch ihre Fähigkeit auszeichnen, eine hohe Datenspeicherungsleistung bereitzustellen. Dies geschieht durch die Kombination von schnellem Blockspeicher und leistungsstarken Eingabe-/Ausgabe-Operationen pro Sekunde (IOPS). Diese Instanzen sind ideal für Anwendungen und Workloads, die eine schnelle Datenspeicherung und -abfrage erfordern. 

Anwendungsbeispiele:

- **Data Warehouses**: Data Warehouses, die große Mengen an Unternehmensdaten speichern und analysieren, können von Storage Optimized Instanzen profitieren. Sie bieten die Leistung und Kapazität, um komplexe Abfragen über umfangreiche Datenbestände hinweg zu unterstützen.
- **Relationale Datenbanken**: Storage Optimized Instanzen sind hervorragend für relationale Datenbanken geeignet, insbesondere wenn schnelle Datenbankabfragen und Transaktionen erforderlich sind. Sie bieten die IOPS, um komplexe SQL-Anfragen und den gleichzeitigen Zugriff auf Daten zu bewältigen.
- **Log-Analyseplattformen**: Unternehmen, die große Mengen von Log-Daten von verschiedenen Quellen analysieren müssen, können Storage Optimized Instanzen verwenden, um die benötigten IOPS und den Speicherplatz für die schnelle Verarbeitung von Protokollen und die Identifizierung von Trends und Anomalien bereitzustellen.
- **Big Data-Verarbeitung**: Workloads, die große Datenmengen für Big Data-Analysen und -Verarbeitung verarbeiten müssen, können von Storage Optimized Instanzen profitieren. Sie ermöglichen das schnelle Schreiben und Lesen von Daten, was wichtig ist, um Analyseergebnisse in Echtzeit zu generieren.
- **E-Commerce-Anwendungen**: E-Commerce-Plattformen, die große Produktkataloge und Transaktionsdatenbanken verwalten, profitieren von Storage Optimized Instanzen. Sie ermöglichen schnelle Produktseiten-Ladezeiten und zuverlässige Transaktionen für Online-Käufe.

### Beschleunigtes Computing (Accelerated Computing)

Beschleunigtes Computing (Accelerated Computing) sind EC2 Instanztypen, die Grafikprozessoren (GPUs) oder Field-Programmable Gate Arrays (FPGAs) enthalten, um rechenintensive Aufgaben zu beschleunigen. Diese Instanzen bieten eine erhebliche Menge an paralleler Rechenleistung und sind ideal für Anwendungen, die von Hardwarebeschleunigung profitieren. 

Anwendungsbeispiele:

- **Maschinelles Lernen und Künstliche Intelligenz (KI)**: Accelerated Computing Instanzen werden häufig für das Training und die Inferenz von neuronalen Netzwerken verwendet. GPUs beschleunigen komplexe Matrixoperationen und ermöglichen so schnellere und genauere Modelle für Bilderkennung, natürliche Sprachverarbeitung und mehr.
- **Kryptographie und Sicherheit**: Für Verschlüsselung, Entschlüsselung und die Berechnung von Hash-Funktionen werden Accelerated Computing Instanzen verwendet, um die Sicherheit und den Datenschutz zu gewährleisten.
- **Bildverarbeitung und Rendering**: In der Unterhaltungsindustrie und in Designanwendungen werden GPUs für die Bearbeitung von Bildern, Videobearbeitung und 3D-Rendering eingesetzt, um hochwertige visuelle Inhalte zu erstellen und zu bearbeiten.
- **Wissenschaftliche Simulationen**: In der wissenschaftlichen Forschung werden GPUs und FPGAs für numerische Simulationen in Bereichen wie Astrophysik, Klimamodellierung, Molekularbiologie und Materialwissenschaft eingesetzt. Diese Hardware beschleunigt komplexe Berechnungen und ermöglicht schnellere Fortschritte.

### High-Performance Computing (HPC)

HPC steht für "High-Performance Computing" und bezieht sich auf den Einsatz von leistungsstarken Computerressourcen, um komplexe wissenschaftliche, technische oder rechenintensive Aufgaben und Berechnungen durchzuführen. AWS ermöglicht es, Cluster von EC2 Instances aufzubauen, die für paralleles Computing optimiert sind. Dies ermöglicht die gleichzeitige Ausführung von Berechnungen auf mehreren Instanzen und beschleunigt komplexe Aufgaben.

Anwendungsbeispiele:

- **Wissenschaftliche Forschung**: In der wissenschaftlichen Forschung werden HPC-Ressourcen oft für die Durchführung von komplexen Simulationen und Berechnungen in Bereichen wie Astrophysik, Klimamodellierung, Genomik, Molekularbiologie und Materialwissenschaft benötigt.
- **Finanzdienstleistungen**: Im Finanzsektor werden HPC-Ressourcen für algorithmischen Handel, Risikoanalyse, Portfolio-Optimierung und die Verarbeitung großer Datenmengen verwendet.
- **Medizin und Gesundheitswesen**: In der medizinischen Forschung werden HPC-Ressourcen zur Genomsequenzierung, für medizinische Bildverarbeitung, Drogenentwicklung und die Simulation von Krankheitsausbreitungen eingesetzt.
- **Künstliche Intelligenz und Machine Learning**: Fortgeschrittene Machine Learning-Modelle und neuronale Netzwerke erfordern oft hohe Rechenleistung, was HPC-Ressourcen für das Training und Inferenz notwendig macht.

## Instanz-Kaufoptionen (Instance purchsing options)

**On-Demand-Instanzen (On-Demand Instances)**
- Kurze Workloads, vorhersehbare Preisgestaltung, Bezahlung pro Sekunde

**Beispiel**
- Ein Unternehmen verwendet On-Demand-Instanzen, um seine Website während einer Marketingkampagne mit erhöhtem Datenverkehr zu skalieren. Die Instanzen werden schnell bereitgestellt und nur für die Dauer der Kampagne genutzt.

**Reservierte Instanzen (1 & 3 Jahre) (Reserved Instances)**
  - Langfristige Workloads

**Beispiel**
  - Ein Unternehmen, das eine permanente Produktionsumgebung in der Cloud betreibt, erwirbt reservierte Instanzen für einen Zeitraum von drei Jahren, um die Betriebskosten langfristig zu senken.

**Savings Plans (1 & 3 Jahre) (Savings Plans)**
- Verpflichtung zu einem bestimmten Nutzungsbedarf, geeignet für langfristige Workloads

**Beispiel**
- Ein Start-up-Unternehmen verpflichtet sich zu einem bestimmten monatlichen Nutzungsbedarf mit Savings Plans, um eine zuverlässige und kostengünstige Infrastruktur für seine wachsenden Anwendungen sicherzustellen.

**Spot-Instanzen (Spot Instances)**: 
- Kurze Workloads, kostengünstig, aber die Instanzen können verloren gehen (weniger zuverlässig)

**Beispiel**
- Ein Unternehmen führt zeitkritische Analysen von großen Datenmengen durch und nutzt Spot-Instanzen, um die Rechenkosten zu minimieren, da die Analysen flexibel sind und nicht zu einem bestimmten Zeitpunkt ausgeführt werden müssen.

**Dedicated Hosts (Dedicated Hosts)**
- Buchen eines gesamten physischen Servers

**Beispiel**
- Ein Unternehmen mit strengen Compliance-Anforderungen entscheidet sich für Dedicated Hosts, um die physische Isolierung seiner Workloads zu gewährleisten und die Kontrolle über die zugrunde liegende Hardware zu behalten.

**Dedicated Instances (Dedicated Instances)** 
- Keine anderen Kunden teilen Ihre Hardware

**Beispiel**
- Ein Unternehmen, das sensible Workloads in der Cloud ausführt, wählt Dedicated Instances, um sicherzustellen, dass keine anderen Kunden die zugrunde liegende Hardware teilen und die Sicherheit der Daten gewährleistet ist.

**Kapazitätsreservierungen (Capacity Reservations)**
- Reservieren von Kapazität in einer bestimmten Verfügbarkeitszone für jede gewünschte Dauer

**Beispiel**
- Ein Unternehmen plant die Einführung einer neuen Anwendung und reserviert vorab Kapazitäten in einer bestimmten AWS-Region, um sicherzustellen, dass ausreichende Ressourcen verfügbar sind, wenn die Anwendung gestartet wird.

### Analogien dazu

Welche Kaufoption ist die richtige für mich?
• **On-Demand:** Wir kommen und bleiben im Hotel, wann immer wir wollen, und zahlen den vollen Preis.
• **Reserviert:** Wenn wir gerne im Voraus planen und wenn wir vorhaben, lange zu bleiben, können wir einen guten Rabatt erhalten.
• **Sparpläne/ Saving Plans:** Wir zahlen einen bestimmten Betrag pro Stunde für einen bestimmten Zeitraum und können in jedem Zimmertyp übernachten (z.B. King, Suite, Meerblick, ...).
• **Spot-Instanzen:** Das Hotel erlaubt es den Gästen, für die freien Zimmer zu bieten, und der Höchstbietende behält die Zimmer. Gäste können jederzeit herausgeschmissen werden.
• **Dedizierte Hosts:** Wir buchen ein ganzes Gebäude des Resorts.
• **Kapazitätsreservierungen:** Gäste buchen ein Zimmer für einen Zeitraum zum vollen Preis, auch wenn sie nicht darin übernachten.

# EBS

## Blockspeicher

Blockspeicher ist eine Form der Datenspeicherung, bei der Daten in fest definierten Blöcken organisiert werden. Jeder dieser Blöcke ist gleich groß und wird durch eine eindeutige Adresse identifiziert, wodurch ein Betriebssystem oder eine Anwendung direkt auf den Speicherblock zugreifen kann. Diese direkte und effiziente Zugriffsmethode macht Blockspeicher besonders geeignet für Umgebungen, die hohe Leistung und geringe Latenz erfordern, wie Datenbanken, E-Mail-Server und andere Transaktionssysteme.

### Vorteile des Blockspeichers

- **Direkter Zugriff**: Blockspeicher ermöglicht das Lesen oder Schreiben in genau definierte Speicherblöcke. Anwendungen können direkt auf einzelne Blöcke zugreifen, was den Prozess sehr schnell und effizient macht.
- **Hohe Leistung**: Durch den direkten Zugriff auf die Speicherblöcke bietet Blockspeicher eine hohe I/O-Leistung und geringe Latenz, was ihn ideal für leistungskritische Anwendungen macht.
- **Flexibilität**: Blockspeicher kann von einem Betriebssystem als lokale Festplatte formatiert und verwendet werden. Dies ermöglicht es, das Dateisystem nach Wahl zu erstellen und zu verwalten.

### **Nachteile** des Blockspeichers

- Weniger skalierbar im Vergleich zum Objektspeicher, kann teurer in der Verwaltung sein.
- Erfordert ein Dateisystem, um Daten zu organisieren.

### Anwendungsfälle

1. **Datenbanken**: Blockspeicher ist optimal für relationale und NoSQL-Datenbanken, wo schneller Zugriff auf Datenblöcke kritisch ist.
2. **E-Mail-Server**: Bietet die erforderliche Leistung und Effizienz für Systeme mit hohem Datenaufkommen.
3. **Transaktionssysteme**: Ideal für Finanz- und Handelssysteme, die eine hohe I/O-Leistung benötigen.
4. **ERP- und CRM-Systeme**: Unterstützt die Leistungsanforderungen von Unternehmensanwendungen, die eine stabile und schnelle Datenspeicherung benötigen.

In AWS wird Blockspeicher durch den Amazon Elastic Block Store (Amazon EBS) und Amazon EC2 Instance Store bereitgestellt. 

EBS bietet hochverfügbaren, zuverlässigen, skalierbaren, blockbasierten Speicher, der eng mit Amazon EC2 (Elastic Compute Cloud) integriert ist. EBS-Volumes können einfach an EC2-Instanzen angehängt werden, um die Leistungsanforderungen spezifischer Anwendungen zu erfüllen, und bieten die Flexibilität, Kapazität und Leistung schnell anzupassen.

## Amazon Elastic Block Store (Amazon EBS)

Amazon Elastic Block Store (Amazon EBS) ist ein hochverfügbarer, langlebiger, blockbasierter Speicherservice, der speziell für die Nutzung mit Amazon EC2 (Elastic Compute Cloud) entwickelt wurde. EBS ermöglicht es, Datenvolumes zu erstellen, die an EC2-Instanzen angehängt werden können, und bietet die Leistung und Kapazität, die notwendig sind, um die Speicheranforderungen Ihrer Anwendungen zu erfüllen.

### Eigenschaften und Besonderheiten

- **Persistenz**: EBS-Volumes sind unabhängig von der zugehörigen EC2-Instanz. EBS-Volumes können Daten behalten, selbst wenn die EC2-Instanz heruntergefahren oder beendet wird.
- **Leistung**: EBS bietet verschiedene Volume-Typen, die sich in Leistung und Preis unterscheiden, um verschiedene Anwendungsanforderungen zu erfüllen. Dazu gehören:
    - SSD-basierte Volumes für IOPS-intensive Anwendungen (Provisioned IOPS SSD)
    - SSD-basierte Volumes für allgemeine Zwecke (General Purpose SSD)
    - HDD-basierte Volumes für durchsatzintensive Anwendungen (Throughput Optimized HDD)
    - HDD-basierte Volumes für Kostenoptimierung (Cold HDD).
- **Sicherheit und Compliance**: EBS-Volumes können verschlüsselt werden.
- **Hochverfügbarkeit und Haltbarkeit**: EBS-Volumes sind automatisch repliziert, um innerhalb einer Availability Zone Schutz vor Ausfällen zu bieten, was eine hohe Verfügbarkeit und Haltbarkeit sicherstellt.
- **Snapshots**: EBS ermöglicht es, Snapshots Ihrer Volumes zu erstellen, die zur Datensicherung, zur Replikation und zur Erstellung neuer Volumes verwendet werden können. Snapshots werden inkrementell gespeichert, sodass nur die Blöcke gespeichert werden, die sich seit dem letzten Snapshot geändert haben.

### Anwendungsbeispiele

- **Boot Volumes**: EBS-Volumes können als Boot-Partition für EC2-Instanzen verwendet werden, wodurch die Root-Partition und das Betriebssystem der Instanz auf EBS liegen.
- **Datenbanken**: EBS-Volumes bieten die hohe IOPS-Leistung und niedrige Latenz, die für Datenbank-Workloads erforderlich sind.
- **Unternehmensanwendungen**: ERP-Systeme, CRM-Software und andere Geschäftsanwendungen können von der Leistung, Persistenz und Skalierbarkeit von EBS profitieren.
- **Big Data und Analytics**: Die Fähigkeit, schnell auf große Mengen an Daten zuzugreifen, macht EBS zu einer guten Wahl für Datenverarbeitung, Big Data und Analyseanwendungen.

### Amazon EC2 Instance Store

Amazon EC2 Instance Store bietet temporären blockbasierten Speicher direkt auf dem physischen Host-Computer, der eine EC2-Instanz hostet. Dieser Speicher besteht aus einer oder mehreren Festplattenlaufwerken, die physisch mit dem Host verbunden sind. Instance Store ist darauf ausgelegt, temporäre Daten zu speichern, die während der Lebensdauer einer Instanz benötigt werden, wie z.B. Cache-Daten oder Puffer. Wenn eine Instanz gestoppt oder beendet wird, gehen die auf dem Instance Store gespeicherten Daten verloren.

### Eigenschaften und Besonderheiten

- **Temporäre Speicherung**: Die Daten im Instance Store sind nur während der Lebensdauer der Instanz verfügbar und persistent. Daten gehen verloren, wenn die Instanz beendet wird.
- **Hohe Leistung**: Da der Speicher direkt auf dem physischen Host bereitgestellt wird, bietet der Instance Store im Vergleich zu Amazon EBS eine höhere I/O-Leistung.
- **Keine zusätzlichen Kosten**: Der Instance Store wird ohne zusätzliche Kosten mit der EC2-Instanz bereitgestellt, basierend auf dem Instanztyp, der gewählt wird
- **Nicht für jeden Instanztyp verfügbar**: Nicht alle EC2-Instanztypen bieten Instance Store-Volumes.

### Anwendungsbeispiele

- **Temporäre Datenbanken**: Datenbanken, die temporäre Daten wie Sitzungsinformationen oder Zwischenergebnisse von Berechnungen speichern, können von der hohen I/O-Leistung des Instance Store profitieren.
- **Cache-Speicher**: Anwendungen, die einen schnellen Cache für Daten benötigen, auf die häufig zugegriffen wird, können den Instance Store nutzen, um Latenzzeiten zu minimieren.
- **Batch-Verarbeitungsworkloads**: Workloads, die eine große Menge an Daten verarbeiten und speichern müssen, die nur für die Dauer der Verarbeitung relevant sind, können effektiv den Instance Store verwenden.

### Wichtige Überlegungen

- **Datenhaltbarkeit**: Da Daten im Instance Store verloren gehen können, wenn die Instanz gestoppt oder beendet wird, ist es wichtig, wichtige Daten regelmäßig zu sichern oder redundante Daten in dauerhaften Speicherdiensten wie Amazon S3 oder Amazon EBS zu speichern.

Zusammenfassend ist der Amazon EC2 Instance Store eine leistungsstarke, aber flüchtige Speicheroption, die für Anwendungsfälle geeignet ist, bei denen hohe I/O-Leistung für temporäre Daten erforderlich ist, und bei denen der Verlust dieser Daten beim Beenden der Instanz akzeptabel ist.

## EBS Volumes vs. Instance Store

Amazon EC2 Instance Store und Amazon EBS (Elastic Block Store) Volumes sind beides Speicheroptionen für Amazon EC2-Instanzen, unterscheiden sich jedoch in mehreren Schlüsselaspekten wie Leistung, Haltbarkeit und Anwendungsfall. Die Entscheidung, wann jede Option zu verwenden ist, hängt von den spezifischen Anforderungen Ihrer Anwendung ab.

### Instance Store

**Eigenschaften:**

- **Temporärer Speicher**: Instance Store-Daten sind nur während der Lebensdauer der EC2-Instanz vorhanden. Daten gehen verloren, wenn die Instanz gestoppt, beendet wird oder der physische Host, der die Instanz hostet, ausfällt.
- **Hohe Leistung**: Bietet in der Regel eine höhere I/O-Leistung als EBS, da der Speicher direkt auf dem physischen Server bereitgestellt wird, der die EC2-Instanz hostet.
- **Kosten**: Keine zusätzlichen Kosten für den Instance Store-Speicher; die Kosten sind im Preis der Instanz enthalten.

**Wann zu verwenden:**

- Für temporäre Speicherbedürfnisse, bei denen Datenverlust beim Stoppen oder Beenden der Instanz akzeptabel ist.
- Für Anwendungen, die von der hohen I/O-Leistung profitieren, wie z.B. Cache-Speicher oder temporäre Datenbanken.

### EBS Volumes

**Eigenschaften:**

- **Persistenz**: EBS-Daten bleiben auch nach dem Stoppen, Starten oder Beenden der zugehörigen EC2-Instanz erhalten. Volumes können von einer Instanz getrennt und an eine andere angehängt werden.
- **Anpassbare Leistung**: Bietet verschiedene Volume-Typen, die unterschiedliche Leistungsstufen für verschiedene Anwendungsanforderungen bieten, einschließlich SSD-basierter Optionen für IOPS-intensive Anwendungen und HDD-basierte Optionen für durchsatzintensive Workloads.
- **Zusätzliche Kosten**: Die Nutzung von EBS Volumes ist kostenpflichtig, basierend auf der bereitgestellten Speichermenge und der gewählten Leistung.

**Wann zu verwenden:**

- Für Anwendungen, die Datendauerhaftigkeit über das Stoppen und Starten von EC2-Instanzen hinweg benötigen.
- Wenn eine flexible Speicherleistung erforderlich ist oder wenn Daten zwischen Instanzen übertragbar sein müssen.
- Für Anwendungen, die eine kontinuierliche Datensicherung oder Snapshots benötigen.

### Zusammenfassung des Unterschieds

- **Datenhaltbarkeit**: Instance Store bietet temporären Speicher, der mit der Lebensdauer der Instanz verbunden ist, während EBS persistente Speicheroptionen bietet, die unabhängig von den EC2-Instanzen bestehen bleiben.
- **Leistung**: Instance Store kann direkten, physischen Speicher für eine höhere I/O-Leistung bieten, während EBS flexible und anpassbare Leistungsoptionen bietet, die für eine breite Palette von Anwendungsanforderungen optimiert sind.
- **Kosten**: Instance Store ist im Preis der EC2-Instanz enthalten, während EBS basierend auf der Nutzung berechnet wird.

Für kritische Daten, die Persistenz erfordern, oder wenn die Flexibilität benötigt wird, Volumes zwischen Instanzen zu bewegen, ist EBS die bessere Wahl. Für temporäre Daten oder Workloads, die maximale I/O-Leistung erfordern und bei denen Datenverlust beim Beenden der Instanz akzeptabel ist, könnte der Instance Store geeigneter sein.
