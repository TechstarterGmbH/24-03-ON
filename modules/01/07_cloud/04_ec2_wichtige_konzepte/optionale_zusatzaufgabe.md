Durch diese Schritte erstellst du ein AMI aus einer vorhandenen Instanz und startest dann eine neue Instanz aus diesem AMI heraus. Dies ermöglicht es dir, die Konfiguration und den Zustand der ursprünglichen Instanz auf einfache Weise zu replizieren und neue Instanzen basierend auf dem erstellten AMI zu starten.

#### Schritt 1: Erstellen eines AMI aus der vorhandenen Instanz

   - Gehe zur Amazon EC2-Konsole unter Gehe zur AWS Management Console und navigiere zum EC2-Dashboard.
   - Wähle im Navigationsbereich "Instanzen" die Instanz aus, von der du ein AMI erstellen möchtest oder erstelle eine neue Instanz und wähle diese aus.
   - Klicke auf die Schaltfläche "Aktion", dann auf ,,Image und Vorlagen" und wähle "Image erstellen" aus.
   - Gib einen Namen und eine Beschreibung für das AMI ein und bestätige die Erstellung.
   - Warte, bis das AMI erstellt wurde.

#### Schritt 2: Erstellen einer neuen Instanz aus dem AMI

   - Gehe zur Amazon EC2-Konsole unter Gehe zur AWS Management Console und navigiere zum EC2-Dashboard.
   - Klicke auf "AMI" im Navigationsbereich und wähle das AMI aus, das du erstellt hast.
   - Klicke auf " Instance aus AMI Starten", um eine neue Instanz aus diesem AMI zu starten.
   - Konfiguriere die Instanzeinstellungen, einschließlich Instanztyp, Netzwerkeinstellungen und Sicherheitsgruppen.
   - Überprüfe die weiteren Konfigurationsoptionen und starte die Instanz.

#### Aufräumen

Lösche alle nicht mehr benötigten Ressourcen, die du soeben erstellt hast.
