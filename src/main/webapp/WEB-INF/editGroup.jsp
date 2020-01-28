<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit group</title>
</head>
<body>
<h1>Edytowanie grup użytkowników</h1>
    <form method="post">
        Wpisz nową nazwę grupy: <input type="text" name="name" value="<c:out value="${group.name}"/>">
        <button type="submit" name="id" value="${group.id}">Edytuj</button>
    </form>
<a href="/groupsList">Cofnij</a>

</body>
</html>
