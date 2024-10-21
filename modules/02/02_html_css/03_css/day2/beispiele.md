<img src="Techstarter.svg" style="height: 50px; width: auto">


### 1. Einfaches Formular mit Textfeld
```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Einfaches Formular</title>
</head>
<body>
    <form>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">
    </form>
</body>
</html>
```

### 2. Formular mit verschiedenen Eingabetypen
```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Formular mit verschiedenen Eingabetypen</title>
</head>
<body>
    <form>
        <label for="email">E-Mail:</label>
        <input type="email" id="email" name="email">
        
        <label for="password">Passwort:</label>
        <input type="password" id="password" name="password">
        
        <label for="age">Alter:</label>
        <input type="number" id="age" name="age" min="0">
    </form>
</body>
</html>
```

### 3. Formular mit Checkboxen und Radio-Buttons
```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Formular mit Checkboxen und Radio-Buttons</title>
</head>
<body>
    <form>
        <label for="subscribe">Newsletter abonnieren:</label>
        <input type="checkbox" id="subscribe" name="subscribe">
        
        <p>Geschlecht:</p>
        <input type="radio" id="male" name="gender" value="male">
        <label for="male">Männlich</label>
        
        <input type="radio" id="female" name="gender" value="female">
        <label for="female">Weiblich</label>
        
        <input type="radio" id="other" name="gender" value="other">
        <label for="other">Andere</label>
    </form>
</body>
</html>
```

### 4. Formular mit einer Dropdown-Liste
```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Formular mit Dropdown-Liste</title>
</head>
<body>
    <form>
        <label for="country">Land:</label>
        <select id="country" name="country">
            <option value="de">Deutschland</option>
            <option value="at">Österreich</option>
            <option value="ch">Schweiz</option>
        </select>
    </form>
</body>
</html>
```

### 5. Formular mit Textbereich
```html
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Formular mit Textbereich</title>
</head>
<body>
    <form>
        <label for="message">Nachricht:</label>
        <textarea id="message" name="message" rows="4" cols="50"></textarea>
    </form>
</body>
</html>
```

