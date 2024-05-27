# Praxis: VPC

In dieser Praxisaufgabe lernst du, wie man ein gesamtes VPC in AWS aufbaut. Dazu gehören die Subnetze, die Routing-Tabellen, die Security-Groups und die Internet-Gateway.

## Vorbereitung

- Melde ich bei deinem AWS-Konto an.
- Öffne die AWS-Management-Konsole.
- Navigiere zum `VPC`-Service.

## Schritte

### 1. VPC erstellen

1. Klicke auf `Yor VPCs` im linken Menü.
2. Klicke auf `Create VPC`.
3. Fülle die Felder aus:
  - **Resources to create**: `VPC only`
  - **Name tag**: `MyVPC`
  - **IPv4 CIDR block**: `10.0.0.0/16`
  - **IPv6 CIDR block**: `No IPv6 CIDR block`
  - **Tenancy**: `Default`
4. Klicke auf `Create VPC`.
5. Stelle sicher, dass die VPC erstellt wurde.

### 2. VPC Filter aktivieren

1. Im linken Menü klicke auf das Dropdown-Menü `Filter by VPC`.
2. Wähle `MyVPC` aus.

### 3. Subnetze erstellen

- In diesem Punkt erstellen wir für jede Availability Zone (in der Frankfurt Region `eu-central-1`) ein Subnetz.

1. Klicke auf `Subnets` im linken Menü.
2. Stelle sicher, dass der Filter für `MyVPC` aktiviert ist. (Siehe Schritt 2)
3. Klicke auf `Create subnet`.
4. Setze die VPC ID auf `MyVPC`
5. Fülle die Felder aus:
  - **Name tag**: `SubnetA`
  - **Availability Zone**: `eu-central-1a`
  - **IPv4 CIDR block**: `10.0.5.0/24`
6. Klicke auf `Add new subnet`.
7. Fülle die Felder aus:
  - **Name tag**: `SubnetB`
  - **Availability Zone**: `eu-central-1b`
  - **IPv4 CIDR block**: `10.0.6.0/24`
8. Klicke auf `Add new subnet`.
9. Fülle die Felder aus:
  - **Name tag**: `SubnetC`
  - **Availability Zone**: `eu-central-1c`
  - **IPv4 CIDR block**: `10.0.7.0/24`
10. Klicke auf `Create subnet`.
11. Stelle sicher, dass die Subnetze erstellt wurden.


### 4. Internet Gateway erstellen

Die nächsten Schritte wieder im Tab ausführen, in dem du das VPC erstellt hast.
1. Klicke auf `Internet Gateways` im linken Menü.
2. Klicke auf `Create internet gateway`.
3. Fülle die Felder aus:
  - **Name**: `MyIGW`
  - **VPC**: `MyVPC`
4. Klicke auf `Create internet gateway`.
5. Klicke auf das neu erstellte Internet Gateway.
6. Klicke auf `Actions` -> `Attach to VPC`.
7. Wähle `MyVPC` aus und klicke auf `Attach internet gateway`.
8. Kopiere die ID des Internet Gateways. (z.B. `igw-0a1b2c3d`)

- Kannst du dich jetzt mit deiner EC2 Instanz verbinden?

### 5. Route Table

1. Klicke `Route Tables` im linken Menü.
2. Stelle sicher, dass der Filter für `MyVPC` aktiviert ist. (Siehe Schritt 2)
3. Klicke auf den Main Route Table der für `MyVPC` erstellt wurde. (Main Route Table bedeutet, dass es der Standard-Route Table ist. Wenn ein Subnetz keinen spezifischen Route Table hat, wird der Main Route Table verwendet.)

- Wir haben zwar den Route Table, aber der Traffic wird noch nicht an das Internet Gateway weitergeleitet.
- Deshalb fügen wir jetzt eine Regel hinzu besagt, dass der **Traffic in Richtung Internet zum Internet Gateway geleitet wird**.

4. Klicke auf `Routes` und dann auf `Edit routes`.
5. Klicke auf `Add route`.
6. Fülle die Felder aus:
  - **Destination**: `0.0.0.0/0`
  - **Target**: Internet Gateway auswählen und dann die ID von `MyIGW` einfügen.
7. Klicke auf `Save changes`.

### 7. Security Group

- In einem neuen Tab öffne den `EC2`-Service.
1. Klicke auf `Security Groups` im linken Menü.
2. Klicke auf `Create security group`.
3. Fülle die Felder aus:
  - **Name**: `MySecurityGroupForEc2`
  - **Description**: `Security Group for EC2 instances in the MyVPC VPC`
  - **VPC**: `MyVPC`
  - **Inbound rules**:
    - Add Rule
      - **Type**: `SSH`
      - **Source**: `Anywhere`
    - Add Rule
      - **Type**: `AllTraffic`
      - **Source**: `10.0.0.0/16`
4. Klicke auf `Create security group`.

### 6. EC2-Instanz erstellen

Wir erstellen jetzt zwei EC2-Instanzen, die in unterschiedlichen Subnetzen liegen.

1. In einem neuen Tab navigiere zum `EC2`-Service.
2. Klicke auf `Instances` im linken Menü.
3. Klicke auf `Launch instance`.
4. Nutze folgende Einstellungen:
- Name: `InstanceA`
  - **Amazon Linux 2 AMI (HVM), SSD Volume Type**
  - **t2.micro**
  - **Network**: `MyVPC`
  - **Subnet**: `SubnetA`
  - **Auto-assign Public IP**: `Enable`
  - **Security group**: Wähle die erstellte Security Group aus.
5. Klicke auf `Launch instance`.
6. Wiederhole die Schritte 3-5 für die zweite EC2-Instanz, aber nutze nenne sie `InstanceB` und `SubnetB` als Subnet.
7. Kannst du dich mit der EC2-Instanz verbinden?

### 7. Testen

1. Verbinde dich mit `InstanceA`.
2. Versuche `google.com` zu pingen. `ping google.com`
3. Versuche `InstanceB` von `InstanceA` zu pingen. `ping <InstanceB-IP>`
- Funktioniert das Pingen?
- Achte darauf, dass es eine öffentliche und eine private IP-Adresse gibt!
4. Lösche eine der EC2-Instanzen.

## Wie bekommen wir ein Privates Subnetz?

### 1. Private Subnetze erstellen

1. Navigation zu `Subnets`.
2. Klicke auf `Create subnet`.
3. Setze die VPC ID auf `MyVPC`
4. Fülle die Felder aus:
  - **Name tag**: `PrivateSubnetA`
  - **Availability Zone**: `eu-central-1a`
  - **IPv4 CIDR block**: `10.0.10.0/24`
5. Klicke auf `Add new subnet`.
6. Fülle die Felder aus:
  - **Name tag**: `PrivateSubnetB`
  - **Availability Zone**: `eu-central-1b`
  - **IPv4 CIDR block**: `10.0.11.0/24`
7. Klicke auf `Add new subnet`.
8. Fülle die Felder aus:
  - **Name tag**: `PrivateSubnetC`
  - **Availability Zone**: `eu-central-1c`
  - **IPv4 CIDR block**: `10.0.12.0/24`

- Die Subnetze sind jetzt erstellt, aber sie sind noch nicht privat.
- Da unsere neuen Subnetze nicht explizit mit einem Route Table verbunden sind, verwenden sie den Main Route Table.

### 2. Private Route Table erstellen

1. Klicke auf `Route Tables` im linken Menü.
2. Klicke auf `Create route table`.
3. Fülle die Felder aus:
  - **Name tag**: `PrivateMyVPCRouteTable`
  - **VPC**: `MyVPC`
4. Klicke auf `Create route table`.
5. Klicke auf die neu erstellte Route Table.
6. Klicke auf `Subnet associations` und dann auf `Edit subnet associations`.
7. Wähle die Subnetze `PrivateSubnetA`, `PrivateSubnetB` und `PrivateSubnetC` aus.
8. Klicke auf `Save`.

### 3. Erstelle eine EC2-Instanz in einem privaten Subnet

1. Navigiere zum `EC2`-Service.
2. Erstelle ein neues Key Pair, und speichere es auf deinem Computer.
  - **Type**: `RSA`
  - **Key pair name**: `MyKeyPairFor
  - **File format**: `pem`
3. Erstelle eine neue EC2-Instanz (ähnlich wie in Schritt 6), aber wähle `PrivateSubnetA` als Subnet. **Verwende dabei das Key Pair, das du gerade erstellt hast.**

### 4. Testen

- Da die EC2-Instanz in einem privaten Subnet liegt, können wir sie nicht direkt erreichen.
- Wir müssen eine EC2-Instanz in einem öffentlichen Subnet verwenden, um uns mit der privaten EC2-Instanz zu verbinden. (**Bastion Host**)

1. Verbinde dich mit der EC2-Instanz in `InstanceA` im `SubnetA`.
2. Versuche die gerade erstellte EC2-Instanz in `PrivateSubnetA` zu pingen. `ping <PrivateInstance-IP>` (**Stelle sicher, dass du die gleiche Security Group verwendest!**)
3. Kannst du dich mit der EC2-Instanz in `PrivateSubnetA` verbinden?
4. Kannst du auf der Instanz in `PrivateSubnetA` `google.com` pingen?

### 5. NAT Gateway

- Jetzt können wir die EC2-Instanz in `PrivateSubnetA` nicht mit dem Internet verbinden.
- Um das zu erreichen, erstellen wir einen NAT Gateway.
- Ein NAT Gateway ermöglicht es den Instanzen in einem **privaten Subnetz**, **ausgehenden Traffic zu initiieren**, aber **verhindert eingehenden Traffic von außen**.

1. Im VPC-Service klicke auf `NAT Gateways`.
2. Klicke auf `Create NAT gateway`.
3. Fülle die Felder aus:
  - **Name**: `MyNATGateway`
  - **Subnet**: `SubnetA`
  - **Connection Type**: `Public`
  - **Elastic IP allocation ID**: `Allocate Elastic IP`
4. Klicke auf `Create NAT gateway`.

- In Produktionsanwendungen wird empfohlen NAT Gateways in jeder Availability Zone zu erstellen, um die Ausfallsicherheit zu gewährleisten.
- Für diese Übung reicht es, einen NAT Gateway in einer Availability Zone zu erstellen.

### 6. Route Table für das private Subnet

1. Klicke auf `Route Tables` im linken Menü.
2. Klicke auf die Route Table, die du für die privaten Subnetze erstellt hast.
3. Klicke auf `Routes` und dann auf `Edit routes`.
4. Klicke auf `Add route`.
5. Fülle die Felder aus:
  - **Destination**: `0.0.0.0/0`
  - **Target**: Wähle das NAT Gateway aus.
6. Klicke auf `Save changes`.

### 7. Testen

1. Verbinde dich mit der EC2-Instanz in `PrivateSubnetA`. (**Verwende die EC2-Instanz in `InstanceA` als Bastion Host**)
2. Versuche `google.com` zu pingen. `ping google.com`
