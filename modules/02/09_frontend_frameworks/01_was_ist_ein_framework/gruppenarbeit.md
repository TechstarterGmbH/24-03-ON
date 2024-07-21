# Erste Schritte mit Svelte

## Einleitung

- Svelte ist eine der einfachsten Frameworks, um schnell zu starten.
- In unserem Kurs werden wir uns hauptsächlich mit React beschäftigen.
- Ich persönlich finde Svelte jedoch sehr interessant und möchte es euch gerne vorstellen.
- Hier geht es vor allem darum, die Grundlagen kennenzulernen um dann besser zu verstehen, wie React funktioniert.

## Schritte

- Ein großer Grund wieso Svelte so einfach ist, ist das Interaktive Tutorial
- Öffne [https://learn.svelte.dev/tutorial/welcome-to-svelte](https://learn.svelte.dev/tutorial/welcome-to-svelte) und folge den Schritten
- Wie weit kommt ihr?

## Erklärung

- Auf der rechten Seite befindet sich ein Code Editor der benutzt werden kann
- Der Code wird automatisch kompiliert und das Ergebnis wird auf unten angezeigt
- Auf der linken Seite befindet sich die Anleitung

### Grundlagen

- Der `Application State` ist der aktuelle Zustand der Anwendung
- In Svelte können wir einfach einen `<script>` Tag verwenden und dann darin Variablen deklarieren (diese sind dann teil des Zustands)
- In unserem HTML können wir dann einfach auf diese Variablen zugreifen und sie auszugeben (z.B. `{$variable}`)

### Beispiel

```html

<script>
  let name = 'world';
</script>

<h1>Hello {$name}!</h1>

```

- In diesem Beispiel wird `world` in `name` gespeichert und dann in der Überschrift ausgegeben
- Wenn wir den Wert von `name` ändern, wird auch die Überschrift aktualisiert

## Fragen

- Wie kann man in Svelte den Zustand einer Anwendung verwalten?
- Wie kann man in Svelte auf den Zustand zugreifen und ihn verändern?
- Wie kann man Attribute in Svelte verwenden?
- Wie kann man andere Komponenten importieren und verwenden?
- Wie erstellt man einen einfachen Counter?
