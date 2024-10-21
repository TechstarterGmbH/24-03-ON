# Aufgabe 1

**Aufgabe: Erstellen einer Benutzerfeedback-Tabelle in DynamoDB**

**Beschreibung:**
Erstelle eine Tabelle in DynamoDB, um Benutzerfeedback zu verschiedenen Produkten zu speichern. Die Tabelle soll flexibel sein und kurze Kommentare zu den Produkten aufnehmen können, einige davon gefüllt und einige leer.

**Schritte:**
1. Öffne die AWS Management Console und navigiere zu DynamoDB.
2. Klicke auf `Tabelle erstellen`.
3. Gib einen Namen für die Tabelle ein, `Benutzerfeedback`.
4. Definiere den Primärschlüssel der Tabelle, `Feedback-ID`.
5. Klicke auf `Tabelle erstellen`.
6. Erstelle Einträge für die Tabelle, um Feedback zu verschiedenen Aspekten der Produkte aufzunehmen, wie  `Produktname`, `Bewertung`, `Kommentar`, `Likes` 


**Beispiel einer Benutzerfeedback-Tabelle:**

| Feedback-ID | Produktname | Bewertung | Kommentar                             | Likes |
|-------------|-------------|-----------|---------------------------------------|-------|
| 1           | Laptop      | 4         | Toller Laptop!                         | 10    |
| 2           | Smartphone  | 5         | Liebe dieses Smartphone!               | 25    |
| 3           | Kopfhörer   | 3         | Der Sound ist okay.                    | 5     |
| 4           | Drucker     | 2         |                                        | 2     |

