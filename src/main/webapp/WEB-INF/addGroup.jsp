<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new Group</title>
</head>
<body>
<h1>Dodawanie grup użytkowników</h1>
<form method="post">
    Wpisz nazwę dla nowej grupy: <input type="text" name="name">
    <button type="submit">Dodaj</button>
</form>
<a href="/groupsList">Cofnij</a>

</body>
</html>
