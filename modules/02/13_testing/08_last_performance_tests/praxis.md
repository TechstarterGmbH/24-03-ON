# Load Testing mit k6

## Ziel:

- K6 installieren und konfigurieren
- Generelle Regeln
- Lasttests mit k6 durchführen

## Regeln

- **Führe Lasttests NIEMALS auf Websites oder Diensten durch, die du nicht besitzt oder kontrollierst.**
  - Das Durchführen von Lasttests auf fremden Websites kann zu einer Überlastung der Server führen und ist **illegal**.
  - Wenn du Lasttests auf fremden Websites durchführen möchtest, musst du die Erlaubnis des Website-Betreibers einholen.
- **Führe Lasttests NIEMALS in Produktionsumgebungen durch.**
  - Lasttests können die Leistung von Websites und Diensten beeinträchtigen und zu Ausfallzeiten führen.
  - Führe Lasttests immer in einer Testumgebung durch, die speziell für diesen Zweck eingerichtet wurde.

## Schritte

### 1. Installation

- K6 kann auf verschiedenen Betriebssystemen installiert werden.
- [K6 herunterladen](https://grafana.com/docs/k6/latest/set-up/install-k6/)
- Auf Windows kann einfach die Binary heruntergeladen und im Terminal ausgeführt werden.
- Einfach das neuste Release auf Github für Windows herunterladen und entpacken.
- [Github Releases](https://github.com/grafana/k6/releases)

### 2. Projekt erstellen

- Erstelle ein neues Projektverzeichnis.
- Öffne das Projekt in deinem Editor.
- Kopiere die k6-Datei (die in dem letzten Schritt heruntergeladen wurde) in das Projektverzeichnis.

### 3. K6 Binary ausführen

- Öffne das Terminal in VsCode
- Stelle sicher, dass die k6-Datei im Projektverzeichnis ist. `ls` sollte die Datei anzeigen.
- Führe die Datei aus: `./k6`

### 4. HTML Server starten

- Erstelle eine neue `index.html` Datei im Projektverzeichnis.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Hello World</h1>
</body>
</html>
```
- Führe `npx live-server .` aus, um einen lokalen Server zu starten.
- Notiere dir die URL des Servers.

### 5. Testskript erstellen

- Führe `./k6 new` aus, um ein Testskript zu erstellen.
- Es wurde eine neue `script.js` Datei erstellt.
- Öffne die Datei in deinem Editor.

### 6. Testskript bearbeiten

- Passe das Testskript an, um die URL des lokalen Servers zu testen.
- Füge hier die URL aus Schritt 4 ein.

```javascript
import http from 'k6/http';
import { sleep } from 'k6';

const URL = 'http://127.0.0.1:8080/';

export const options = {
  vus: 10,
  duration: '30s',
};

export default function() {
  http.get(URL);
  sleep(1);
}
```

### 7. Testskript ausführen

- Führe `./k6 run script.js` aus, um den Test zu starten.
- Der Test wird für 30 Sekunden mit 10 virtuellen Benutzern ausgeführt.
- Nach Abschluss des Tests werden die Ergebnisse angezeigt.

### 8. Last Schrittweise erhöhen

- Wir können die Anzahl der virtuellen Benutzer erhöhen, um die Last zu erhöhen.
- Das müssen wir nicht selbst machen, k6 kann das automatisch tun.

```javascript
import http from 'k6/http';
import { check, sleep } from 'k6';

const URL = 'http://127.0.0.1:8080/';

export const options = {
  stages: [
    { duration: '30s', target: 10 },
    { duration: '30s', target: 20 },
    { duration: '30s', target: 30 },
    { duration: '30s', target: 40 },
    { duration: '30s', target: 50 },
    { duration: '20s', target: 0 },
  ],
};

export default function () {
  const res = http.get(URL);
  check(res, { 'status was 200': (r) => r.status == 200 });
  sleep(1);
}
```

### 9. Freiwillig: AWS

- Erstelle eine AWS-Instanz
- Installiere den apache2 Webserver
- Trage die IP-Adresse in das Testskript ein
- Führe den Test aus
