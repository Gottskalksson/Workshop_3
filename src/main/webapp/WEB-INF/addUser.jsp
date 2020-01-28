<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new User</title>
</head>
<body>
<h1>Dodawanie użytkownika</h1>
<form method="post">
    Nazwa użytkownika: <input type="text" name="name">
    E-Mail: <input type="text" name="email">
    Hasło: <input type="password" name="pass">
    Numer grupy: <input type="number" min="1" name="userGroupId">
    <button type="submit">Dodaj</button>
</form>
<a href="/usersList">Cofnij</a>

</body>
</html>
