---

class: invert

---

# Einführung in AWS Network Access Control Lists (NACLs)

---

# Einleitung

---

## Verständnis von Zugriffssteuerlisten (Access Control Lists)

- Eine ACL ist wie eine Gästeliste für eine Party: Sie bestimmt, wer Zugriff hat und wer nicht.
- Sie wird verwendet, um den Zugriff auf Netzwerkressourcen zu steuern, basierend auf einer Reihe von Regeln.
- In AWS werden ACLs in Form von **Network Access Control Lists (NACLs)** verwendet.

---

# Die Grundlagen von NACLs

---

## Was sind NACLs?

- **Network Access Control Lists (NACLs)** sind virtuelle Firewalls, die den Datenverkehr **in und aus einem Subnetz** eines VPC steuern.
- Sie arbeiten wie Türsteher, die überprüfen, welche Datenpakete ein- und ausgehen dürfen.

---

## Warum sind NACLs notwendig?

- Um Netzwerke vor unerwünschtem Verkehr und Angriffen zu schützen.
- Zur feineren Steuerung des Datenverkehrs, der die Subnets einer VPC betritt oder verlässt.

---

## Wie funktionieren NACLs?

- NACLs bestehen aus **einer Reihe von Regeln**, die den Datenverkehr basierend auf bestimmten Kriterien zulassen oder ablehnen.
- Jede Regel kann Datenverkehr anhand von **IP-Adressen**, **Ports** und **Protokollen** zulassen oder ablehnen.
- NACLs sind **zustandslos**, d.h. sie behandeln jedes Paket unabhängig voneinander.

---

## Erläuterung von eingehenden und ausgehenden Regeln

- **Eingehende Regeln** kontrollieren den ankommenden Verkehr zu dem Subnet. (z.B. von anderen Subnetzen oder aus dem Internet)
- **Ausgehende Regeln** bestimmen, wie Verkehr das Subnet verlassen darf. (z.B. zu anderen Subnetzen oder ins Internet)

---

## Erläuterung des "Allow" und "Deny" Verhaltens von NACLs

- NACLs evaluieren Regeln in einer **nummerierten Reihenfolge**, wobei die **niedrigste Nummer zuerst kommt**.
- Wenn eine Regel den Verkehr ablehnt, werden alle weiteren Regeln übersprungen.

---

# NACLs im Vergleich zu Sicherheitsgruppen

---

## Was ist der Unterschied zwischen NACLs und Sicherheitsgruppen?

- NACLs sind **zustandslos**: Jedes Paket wird unabhängig behandelt, ohne den Kontext der Verbindung zu berücksichtigen.
- Sicherheitsgruppen sind **zustandsbehaftet**: **Antworten auf erlaubte eingehende Anfragen sind automatisch erlaubt**.

---

## Stateful vs. Stateless Firewalls

- Beispiel:
  - Stell dir vor, du bist zu Besuch in einer Botschaft.
  - Normalerweise gibt es in Botschaften immer strenge Sicherheitskontrollen.
- **Stateful Firewalls**
  - (Sicherheitsgruppen) erinnern sich an den Status der Netzwerkverbindungen.
  - Wenn du einmal durch die Sicherheitskontrolle gegangen bist, wirst du beim Verlassen nicht noch einmal kontrolliert.
- **Stateless Firewalls**
  - (NACLs) behandeln jedes Paket, als ob es das erste wäre.
  - Jedes Mal, wenn du die Botschaft betrittst oder verlässt, musst du durch die Sicherheitskontrolle.

---

## Anwendungsfälle für NACLs und Sicherheitsgruppen

- **NACLs** sind ideal für die **Segmentierung von Subnetzen** und die **Kontrolle des Datenverkehrs** zwischen ihnen.
- **Sicherheitsgruppen** sind besser geeignet, um **den Zugriff auf einzelne EC2-Instanzen** zu steuern.
