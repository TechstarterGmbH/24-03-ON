# Schritt für Schritt Einstieg in Virtual Box

In diesem Hands-on-Guide lernst du, wie du VirtualBox auf einem Windows-System installierst und einrichtest.
VirtualBox ist ein kostenloser Hypervisor von Oracle, der dir ermöglicht, virtuelle Maschinen (VMs) auf deinem Computer zu erstellen und zu verwalten.

## Schritt 1: VirtualBox herunterladen und installieren

### 1.1 Download von VirtualBox

- Öffne deinen Webbrowser und gehe zur offiziellen VirtualBox-Website: [https://www.virtualbox.org/](https://www.virtualbox.org/).
- Klicke auf der Startseite auf "Download VirtualBox 7.0"
- Wähle die Version für Windows-Hosts aus. Du wirst eine Datei mit der Endung `.exe` herunterladen, z.B. `VirtualBox-6.x.xx-Win.exe`.

### 1.2 Installationsprozess

- Doppelklicke auf die heruntergeladene `.exe`-Datei, um die Installation zu starten.
- Es erscheint ein Setup-Fenster. Klicke auf "Next", um fortzufahren.
- Du wirst aufgefordert, die Installationspfade zu bestätigen. Standardmäßig wird VirtualBox im Verzeichnis `C:\Program Files\Oracle\VirtualBox` installiert. Du kannst diesen Pfad bei Bedarf ändern.
- Im nächsten Schritt wählst du die Funktionen aus, die installiert werden sollen. Dazu gehören Programmverknüpfungen, USB-Unterstützung und Netzwerkfunktionen. Belasse die Standardauswahl, wenn du unsicher bist.
- Du wirst gefragt, ob Netzwerkschnittstellen installiert werden sollen. Diese sind notwendig, damit deine virtuellen Maschinen mit dem Internet oder dem Host-System kommunizieren können. Bestätige mit "Yes".
- Klicke auf "Install", um die Installation zu starten. Während des Prozesses könnten mehrere Dialoge erscheinen, die dich um Erlaubnis bitten, Gerätetreiber zu installieren. Diese sind notwendig für die Netzwerk- und USB-Funktionen von VirtualBox, also bestätige mit "Install".
- Nach Abschluss der Installation kannst du VirtualBox starten. Ein Neustart deines Computers könnte erforderlich sein.

## Schritt 2: Verständnis der VirtualBox-Benutzeroberfläche

Wenn du VirtualBox startest, wirst du mit der Hauptbenutzeroberfläche begrüßt. Hier eine detaillierte Erklärung der verschiedenen Elemente:

### 2.1 Hauptmenü

- **Neu**: Startet den Assistenten zum Erstellen einer neuen virtuellen Maschine. Hier gibst du Details wie den Namen, den Typ und die Version des Betriebssystems an, das du installieren möchtest.
- **Einstellungen**: Öffnet ein Fenster, in dem du die Konfigurationen der ausgewählten virtuellen Maschine anpassen kannst, einschließlich System, Anzeige, Speicher, Netzwerk und mehr.
- **Start**: Startet die ausgewählte virtuelle Maschine.
- **Pause**: Hält die ausgewählte virtuelle Maschine an, ähnlich wie das Anhalten eines Videos.
- **Zurücksetzen**: Startet die ausgewählte virtuelle Maschine neu, ähnlich dem Drücken des Reset-Knopfes an einem physischen Computer.

### 2.2 VM-Liste

- Auf der linken Seite siehst du eine Liste aller erstellten virtuellen Maschinen. Wenn du eine auswählst, werden auf der rechten Seite Details dazu angezeigt.

### 2.3 VM-Details

- Rechts werden Details zur ausgewählten virtuellen Maschine angezeigt, einschließlich allgemeiner Informationen, Systemeinstellungen, Speicher, Netzwerk und mehr.

### 2.4 Statusleiste

- Am unteren Rand des Fensters gibt es eine Statusleiste, die den Zustand der ausgewählten virtuellen Maschine anzeigt, einschließlich der Betriebszustände wie "Gestartet", "Angehalten" oder "Gestoppt".

Indem du dich mit diesen Elementen vertraut machst, erhältst du eine solide Grundlage für die Erstellung und Verwaltung deiner virtuellen Maschinen in VirtualBox.
