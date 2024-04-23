# Praxis: Foreign Keys und Joins

## Schritte

### Vorbereitung

1. Führe folgende SQL Query aus um die Umgebung vorzubereiten:

```sql
INSERT INTO artist
  (name)
VALUES
  ("The Beatles"),
  ("Britney Spears");



INSERT INTO cd (title, artist_id)
VALUES
  ("Rubber Soul", 1),
  ("Abbey Road", 1),
  ("Let it be", 1),
  ("Baby One More time", 2);

INSERT INTO cd (title)
VALUES
  ("Lets got");
```

### Aufgaben

Schreibe SQL-Abfragen um folgende Aufgaben zu lösen:

1. **Finde alle CDs von "The Beatles"**

```sql
SELECT cd.title, artist.name
FROM cd
INNER JOIN artist
ON cd.artist_id = artist.artist_id
WHERE artist.name = "The Beatles";
```

2. **Finde alle Artists und deren CDs**

```sql
SELECT artist.name, cd.title
FROM artist
LEFT JOIN cd
ON artist.artist_id = cd.artist_id;
```


3. Finde alle CDs, die keinen Künstler haben

```sql
SELECT cd.title
FROM cd
LEFT JOIN artist
ON cd.artist_id = artist.artist_id
WHERE artist.artist_id IS NULL;
```
