<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new Exercise</title>
</head>
<body>
<h1>Dodawanie ćwiczenia</h1>
<form method="post">
    Wpisz nazwę dla nowego ćwiczenia: <input type="text" name="title"><br>
    Opis: <input type="text" name="description"><br>
    <button type="submit">Dodaj</button>
</form>
<a href="/groupsList">Cofnij</a>

</body>
</html>
