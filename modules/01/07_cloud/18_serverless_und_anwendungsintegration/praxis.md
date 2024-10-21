# Praxisaufgabe 1


1. **AWS CLI installieren**: Stelle sicher, dass du die neueste Version der AWS CLI installiert hast. Du kannst die AWS CLI herunterladen und installieren, indem du den Anweisungen auf der [AWS CLI-Installationsseite](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) folgst.
2. **Überprüfen:** Überprüfe, dass alles geklappt hat, indem du folgenden Befehl ausführst
```
aws --version
```
3. **Anmeldung Sandbox:** Melde dich bei deiner Sanbox an. Lasse folgende Ansicht offen
![[Pasted image 20240515100224.png]]
klicke auf Access Keys
Wir brauchen die Einträge `SSO start URL` und `SSO Region`. Diese kannst du dir aber merken. Unsere Region ist immer `eu-central-1` (Frankfurt)
![[Pasted image 20240515101424.png]]
Lasse dies einfach parallel so offen, wie es ist.
4. **SSO konfigurieren**:
    - Öffne ein Terminal oder eine Eingabeaufforderung.
    - Führe den folgenden Befehl aus, um die SSO-Konfiguration zu starten:
      ```bash
      aws configure sso
      ```
    - Du wirst aufgefordert einen SSO `session name` zu vergeben. Dies dient dazu, die Sitzung zu identifizieren und kann später hilfreich sein, um nachzuvollziehen, wer welche Aktionen innerhalb der AWS-Ressourcen durchgeführt hat. Es wird empfohlen, einen eindeutigen und beschreibenden Namen zu wählen, der den Zweck der Sitzung widerspiegelt.
    - Du wirst aufgefordert, die **SSO-Start-URL** einzugeben. Gib die URL ein, die du in Schritt 3 gefunden hast
    - Du wirst nach der **SSO-Region** gefragt. Gib die Region ein, die für dein SSO-Setup gilt (z.B. `eu-central-1`).
    - Du wirst aufgefordert einen `SSO registration scopes` anzugeben. Der SSo-Registrierungsbereich definiert, welche Art von Zugriff dein AWS CLI-Profil haben wird. Dies könnten unter anderem sein:
	    -  **sso:account:access:** Dies ermöglicht dem AWS CLI-Profil den Zugriff auf Ressourcen innerhalb eines bestimmten AWS-Kontos. Dies ist nützlich, wenn du Zugriff auf spezifische Ressourcen in einem AWS-Konto benötigst.
	    - **sso:role:access:** Dies ermöglicht es dem Profil, auf bestimmte Rollen in deinem AWS-Konto zuzugreifen. Dies ist nützlich, wenn du verschiedene Berechtigungsstufen für verschiedene Aufgaben oder Projekte hast und jeder Rolle bestimmte Zugriffsrechte zugewiesen hat.
	    - **sso:policy:access:** Mit diesem Bereich kannst du auf Richtlinien zugreifen, die im AWS Single Sign-On definiert sind. Dies kann hilfreich sein, um Richtlinien zu verwalten, die den Zugriff auf AWS-Ressourcen steuern.
	- wir wählen `sso:account:access`

3. **Authentifizierung**:
    - Nun öffnet sich zeitgleich ein Browserfenster, indem du den Code bestätigen sollst, der dir zeitgleich im Terminal angezeigt wird. Dabei wird ein einmaliger Code erzeugt, der in einem separaten Browserfenster oder in deinem Terminal angezeigt wird. Dass die beiden übereinstimmen, sollst du bestätigen- Damit wird versucht sicherzustellen, dass du tatsächlich derjenige oder diejenige bist, der versucht, sich anzumelden, und um sicherzustellen, dass keine automatisierte oder nicht autorisierte Anmeldung stattfindet.
    - Klicke auf `Confirm and continue`.
    - nun erscheint die Meldung **Allow botocore-client-SSO Configuration to access your data?** 
    - Diese Meldung erscheint, weil die AWS CLI im Hintergrund die notwendigen Informationen benötigt, um die Konfiguration für die SSO-Authentifizierung abzuschließen. Die Meldung fragt dich, ob du der AWS CLI erlauben möchtest, auf deine SSO-Anmeldedaten zuzugreifen.
    - Es ist sicher, dieser Aufforderung zuzustimmen, da die AWS CLI nur lokal auf deinem Computer ausgeführt wird und die Anmeldedaten nicht an Dritte weitergegeben werden. Durch das Zulassen des Zugriffs ermöglichst du es der AWS CLI, die SSO-Konfiguration abzuschließen, sodass du anschließend die AWS-Ressourcen über die CLI aufrufen kannst.
    - klicke daher auf `allow access`

4. **AWS SSO-Profile konfigurieren**:
    - Nach erfolgreicher Authentifizierung wirst du aufgefordert, das AWS-Konto und die Rolle auszuwählen, die du verwenden möchtest. Diese Konten und Rollen werden von deinem SSO-Administrator bereitgestellt. Für uns sind sowohl das AWS Konto als auch die Rolle vorgegeben.
    - Gebe unter dem Punkt `CLI default client Region` erneut `eu-central-1`als Region an, , was bedeutet, dass die AWS CLI standardmäßig die Region "eu-central-1" verwenden wird. Dies ist die AWS-Region "EU (Frankfurt)
    - Die Meldung `CLI default output format:` fragt nach dem Standardausgabeformat der CLI. Wenn du nichts eingibst und die Eingabetaste drückst, wird der Standardformattyp verwendet, der normalerweise JSON ist. Du kannst aber auch einen anderen Ausgabeformattyp auswählen, z. B. `json`, `yaml`, `text`, usw.
    - Gib dem Profil einen Namen, z.B. `sandbox-profile` oder `sandbox-deinName` oder einfach deinen Namen.

5. **Überprüfen der Konfiguration**:
    - Du kannst die Konfiguration überprüfen, indem du folgendes ausführst:
      ```bash
      aws s3 ls --profile sandbox-profile
      ```
    - Wenn die Konfiguration korrekt ist, solltest du nun mit den entsprechenden AWS-Ressourcen interagieren können und dir sollten vorhandene s3 Buckets angezeigt werden.
Natürlich! Hier ist ein Cheat Sheet mit grundlegenden AWS CLI-Befehlen, um gängige Ressourcen anzuzeigen, zu erstellen und zu löschen:

