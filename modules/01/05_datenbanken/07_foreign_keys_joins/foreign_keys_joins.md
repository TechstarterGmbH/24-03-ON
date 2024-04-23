# Einführung in SQL Foreign Keys und Joins

## Einführung

### Szenario

- Anwendung zur Verwaltung einer CD Sammlung
- In der Datenbank gibt es Tabellen für CDs, Künstler und Genres
- Jede CD hat einen Künstler und ein Genre
- Wie können wir sicherstellen, dass die Daten in den Tabellen korrekt und konsistent sind?

## Einführung in Foreign Keys

### Was sind Foreign Keys?

#### Definition

- Ein Foreign Key wäre also in unserem Szenario ein Feld in der CD-Tabelle, das auf den Primärschlüssel in der Künstler- oder Genre-Tabelle verweist.
- **Ein Foreign Key ist eine Spalte oder eine Gruppe von Spalten in einer Tabelle, die auf den Primärschlüssel einer anderen Tabelle verweisen.**

##### CD-Tabelle (cd)

| -------------- | -------------- | -------------- |
| CD_ID (PK)     | Titel          | Künstler_ID (FK) |
| -------------- | -------------- | -------------- |
| 1              | Rubber Soul        | 1              |

##### Künstler-Tabelle (artist)

| -------------- | -------------- |
| Künstler_ID (PK) | Name         |
| -------------- | -------------- |
| 1              | The Beatles   |


##### Erklärung

- In der CD-Tabelle ist `Künstler_ID` ein Foreign Key, der auf den Primärschlüssel `Künstler_ID` in der Künstler-Tabelle verweist.
- Das bedeutet, dass das Album "Rubber Soul" im Feld `Künstler_ID` auf den Künstler mit der Id 1 verweist.
- Wir müssen also nun in der Künstler-Tabelle nachsehen, um herauszufinden, welcher Künstler die Id 1 hat.

#### Der Zweck von Foreign Keys

- Stellen sicher, dass die Beziehung zwischen den Daten in verschiedenen Tabellen erhalten bleibt.
- Helfen, Datenintegrität und Genauigkeit zu gewährleisten.

### Arbeiten mit Foreign Keys

#### Erstellen von Foreign Keys

- In unserem Beispiel haben wir eine CD-Tabelle und eine Künstler-Tabelle.

Hier ist die SQL-Abfrage zum Erstellen der Künstler-Tabelle:
```sql
CREATE TABLE IF NOT EXISTS artist (
    artist_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY (artist_id)
);

```

Um einen Foreign Key zu erstellen, fügst du die `FOREIGN KEY`-Klausel hinzu:

Hier ist die SQL-Abfrage zum Erstellen der CD-Tabelle mit einem Foreign Key:
```sql
CREATE TABLE IF NOT EXISTS cd (
  cd_id INT AUTO_INCREMENT,
  title VARCHAR(50),
  artist_id INT,
  
  PRIMARY KEY (cd_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);
```

#### Initiale Daten einfügen

- Nachdem du die Tabellen erstellt hast, kannst du Daten in die Tabellen einfügen.

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

```

#### Verwendung von Foreign Keys in Abfragen

Du kannst Foreign Keys nutzen, um Daten aus mehreren Tabellen basierend auf ihrer Beziehung zu filtern und zu selektieren.

Hierfür kannst du Joins verwenden, um Daten aus mehreren Tabellen zu kombinieren.

## Einführung in SQL-Joins

### Was sind Joins in SQL?

#### Definition

Ein Join in SQL ist eine Methode, um Zeilen aus zwei oder mehr Tabellen basierend auf einer gemeinsamen Spalte zusammenzuführen.

#### Der Zweck von Joins

Joins werden verwendet, um komplexe Abfragen über mehrere Tabellen hinweg durchzuführen. Sie sind wie die Naht, die zwei Stoffteile in einem Kleidungsstück zusammenhält, sodass ein neues, integriertes Ganzes entsteht.

### Arten von Joins

#### Inner Join

Der `INNER JOIN` liefert nur die Zeilen, die eine Übereinstimmung in beiden Tabellen haben.

```sql
SELECT *
FROM cd
INNER JOIN artist
ON cd.artist_id = artist.artist_id;
```

| title         | name         |
| ------------- | ------------ |
| Rubber Soul   | The Beatles  |


#### Left Join

Der `LEFT JOIN` gibt alle Zeilen aus der linken Tabelle und die übereinstimmenden Zeilen der rechten Tabelle zurück.


```sql
SELECT *
FROM cd
INNER JOIN artist
ON cd.artist_id = artist.artist_id;
```

#### Right Join

Der `RIGHT JOIN` funktioniert wie der `LEFT JOIN`, nur dass hier alle Zeilen der rechten Tabelle zurückgegeben werden.

```sql
SELECT *
FROM cd
RIGHT JOIN artist
ON cd.artist_id = artist.artist_id;
```

## Weitere Infromationen

- [MySQL Foreign Key Constraints](https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html)
- [MySQL Joins](https://dev.mysql.com/doc/refman/8.0/en/join.html)
- [W3Schools SQL Joins](https://www.w3schools.com/sql/sql_join.asp)
- [W3Schools SQL Foreign Keys](https://www.w3schools.com/sql/sql_foreignkey.asp)
