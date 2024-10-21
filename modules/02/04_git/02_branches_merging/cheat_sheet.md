<img src="Techstarter.svg" style="height: 50px; width: auto">

# Cheat Sheet


```bash
git branch               # zeigt an, wo wir uns befinden
git branch NAME          # erstellt den Branch NAME
git switch NAME          # wechselt zum Branch NAME
git merge NAME           # führt den Branch NAME in den aktuellen Branch ein
git branch -d NAME       # löscht den Branch NAME
git branch -D NAME       # löscht den ungemergten Branch NAME
```

Da folgende Befehlskombination so häufig vorkommt:

```bash
git branch NAME          # erstellt den Branch NAME
git switch NAME          # wechselt zum Branch NAME
```

Es gibt eine Abkürzung dafür:

```bash
git switch --create NAME  # erstellt den Branch NAME und wechselt zu ihm
```

### Typische Arbeitsabläufe

Dabei gibt es zwei typische Arbeitsabläufe:

1. Neue Funktion entwickeln:
   ```bash
   # erstellt den Branch, wechselt zu ihm
   git switch --create new-feature  

   # arbeiten, arbeiten, arbeiten ..., und testen
   git commit                       

   # sobald die Funktion bereit ist, zum main-Branch wechseln
   git switch main                  

   # Zusammenführen der Arbeit in den main-Branch
   git merge new-feature            

   # Branch entfernen
   git branch -d new-feature        
   ```

2. Verrückte Idee oder Debugging-Zweig:
   ```bash
   # erstellt den Branch für eine verrückte Idee oder zum Debuggen
   git switch --create wild-idea    

   # realisiert, dass es eine schlechte Idee war, zurück zum main-Branch
   git switch main                  

   # Branch löschen, auf zu einer neuen Idee
   git branch -D wild-idea          
   ```

