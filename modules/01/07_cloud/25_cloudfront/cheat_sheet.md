### Amazon CloudFront

- **Funktionen:**
  - Content Delivery Network (CDN) für Webinhalte.
  - Speichert eine Kopie der Daten an verschiedenen Orten (Edge Locations) auf der Welt verteilt (Caching).
  - **Verteilung:** Statische und dynamische Inhalte, Videos, Bilder, Audiodateien, Anwendungen, APIs.
  - **Optimierung:** Beschleunigung der Auslieferung von Inhalten, Reduzierung der Latenzzeiten.
  - **Verwaltung:**
    - Setzen einer **TTL (Time to Live)** für die Daten. Wie lange sollen die Kopien in den Edge Locations gespeichert werden?
    - Invalidationen (Löschen der lokalen Kopien in den Edge Locations).
    - Monitoring über CloudWatch
    - Sicherheitskonfiguration.
