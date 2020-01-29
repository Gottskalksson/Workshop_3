<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit exercise</title>
</head>
<body>
<h1>Edytowanie ćwiczenia</h1>
<form method="post">
    Wpisz nową nazwę ćwiczenia: <input type="text" name="title" value="<c:out value="${exercise.title}"/>">
    Opis: <input type="text" name="description" value="<c:out value="${exercise.description}"/>">
    <button type="submit" name="id" value="${exercise.id}">Edytuj</button>
</form>
<a href="/exercisesList">Cofnij</a>

</body>
</html>
