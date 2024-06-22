# Git Remotes, Push, Pull, Fetch

## Einführung in Git: Verstehen und Arbeiten mit Remotes, Push, Pull und Fetch

### Remotes

#### Einführung in Remotes

##### Was sind Remotes?

- Ein Remote in Git ist eine gemeinsame Version deines Projekts, die sich auf einem Server im Internet oder Netzwerk befindet. Du kannst deine Änderungen mit diesem Remote teilen und auch Änderungen von anderen herunterladen.

##### Warum sind Remotes wichtig?

- Remotes sind wichtig, weil sie es dir ermöglichen, mit anderen an denselben Projekten zu arbeiten. Sie dienen als zentrale Hub, wo alle Projektversionen sicher gespeichert und verwaltet werden.

##### Welche Remotes gibt es?

- **GitHub**: Eine Plattform für die Zusammenarbeit an und Hosting von Softwareprojekten.
- **GitLab**: Ähnlich wie GitHub, bietet es aber zusätzliche Funktionen für Continuous Integration und Deployment.
- **Bitbucket**: Bietet neben Git-Unterstützung auch Mercurial als Versionskontrollsystem.

#### Erstellen eines Accounts

- Auch wenn man seine eigenen Git server hosten kann, empfielt es sich, einen Account bei einem der großen Anbieter zu erstellen.
- Erstelle dir also jetzt einen Github Account.
- Danach kannst du dort ein neues Repository erstellen.

#### Einrichten des SSH Keys

- Um sicher mit dem Remote zu kommunizieren, solltest du einen SSH Key erstellen und diesen auf deinem Account hinterlegen.
- Hier findest du eine Anleitung dazu: [Github SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=windows)

#### Arbeiten mit Remotes

##### Hinzufügen von Remotes

- Um ein Remote hinzuzufügen, verwendest du den Befehl `git remote add <name> <url>`. Dadurch wird ein neuer Remote mit dem Namen `<name>` und der URL `<url>` zu deinem Repository hinzugefügt.
- Standardmäßig wird der Name `origin` für das Haupt-Remote verwendet.

##### Auflisten von Remotes

- Mit `git remote -v` kannst du alle konfigurierten Remotes und ihre URLs anzeigen.

##### Entfernen von Remotes

- Ein Remote entfernst du mit `git remote remove <name>`.

##### Ändern von Remotes

- Um die URL eines Remotes zu ändern, benutze `git remote set-url <name> <newurl>`.

### git push

#### 3.1 Einführung in git push

##### Was bedeutet git push?

- Mit `git push` sendest du deine lokalen Repository-Änderungen an ein Remote-Repository.

##### Warum ist git push wichtig?

- `git push` ist wichtig, um deine Änderungen mit dem Team zu teilen und sicherzustellen, dass alle auf dem neuesten Stand sind.

#### 3.2 Arbeiten mit git push

##### So führen Sie einen git push aus

- Nachdem du Änderungen committet hast, verwende `git push <remote> <branch>`, um sie an das Remote-Repository zu senden.
- Du kannst auch `git push -u <remote> <branch>` verwenden, um das Remote als Standard zu setzen.
- Beispiel `git push -u origin master`.

##### Wie man Merge-Konflikte löst

Wenn es Konflikte gibt, musst du diese lokal lösen und dann erneut pushen.

##### Tipps und Tricks zu git push

- Verwende `git push --force` mit Vorsicht, da dies bestehende Änderungen im Remote überschreiben kann.

### git pull

#### 4.1 Einführung in git pull

##### Was bedeutet git pull?

- `git pull` aktualisiert dein lokales Repository mit Änderungen aus einem Remote-Repository.
- Also stell dir vor, dein Team hat Änderungen gemacht und du möchtest diese in dein lokales Repository holen.

##### Warum ist git pull wichtig?

- Es hält dein lokales Repository auf dem neuesten Stand mit anderen Teammitgliedern' Änderungen.

#### 4.2 Arbeiten mit git pull

##### So führen Sie einen git pull aus

- Verwende `git pull <remote> <branch>`, um die neuesten Änderungen herunterzuladen und in dein lokales Repository zu integrieren.

##### Wie man Merge-Konflikte löst

- Bei Konflikten musst du die betroffenen Dateien manuell bearbeiten und die Konflikte lösen.

##### Tipps und Tricks zu git pull

- Verwende `git pull --rebase`, um einen saubereren Projektverlauf zu erhalten.

### git fetch

#### 5.1 Einführung in git fetch

##### Was bedeutet git fetch?

- `git fetch` lädt die neuesten Informationen von einem Remote herunter, ohne dein aktuelles Arbeitsverzeichnis zu ändern.
- Es ist nützlich, um zu sehen, was andere Teammitglieder gemacht haben, ohne deine lokalen Änderungen zu beeinflussen.

##### Warum ist git fetch wichtig?

- Es ermöglicht dir, die neuesten Branches und Änderungen zu sehen, ohne deine lokalen Änderungen zu beeinflussen.

#### 5.2 Arbeiten mit git fetch

##### So führen Sie einen git fetch aus

- Mit `git fetch <remote>` kannst du alle neuen Informationen vom Remote abrufen.

##### Rapidität von git fetch im Vergleich zu git pull

- `git fetch` ist schneller als `git pull`, da es keine Dateien im Arbeitsverzeichnis ändert.

##### Tipps und Tricks zu git fetch

- Verwende `git fetch --all`, um von allen Remotes die neuesten Informationen zu erhalten.
