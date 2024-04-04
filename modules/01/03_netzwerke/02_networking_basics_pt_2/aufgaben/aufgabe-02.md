# Aufgabe 2: Linux Wiederholung

## 1. Shell Scripting

### 1.1 IP Adressen

- Erstelle ein Shell Script `ip.sh`
- Das Script soll alle IP-Adressen ausgeben, die in dem Bereich `10.10.10.0/24` liegen.
- Jede IP-Adresse soll in einer neuen Zeile ausgegeben werden.

Beispiel Ausgabe:

```
$ ./ip.sh

10.10.10.0
10.10.10.1
10.10.10.2
10.10.10.3
10.10.10.4
10.10.10.5
10.10.10.6
10.10.10.7
10.10.10.8
10.10.10.9
10.10.10.10
10.10.10.11
...
```

(Nach diesem Prinzip aber alle IP-Adressen aus dem genannten Bereich)

### 1.2 (Freiwillig) IP Adressen Part 2

- Erweitere das Script `ip.sh` so, dass es auch die IP-Adressen ausgibt, die in dem Bereich `10.10.0.0/16` liegen.
