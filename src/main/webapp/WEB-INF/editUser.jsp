<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit user</title>
</head>
<body>
<h1>Edytowanie użytkownika</h1>
<form method="post">
    Wpisz nową nazwę użytkownika: <input type="text" name="name" value="<c:out value="${user.userName}"/>">
    E-mail: <input type="text" name="email" value="<c:out value="${user.email}"/>">
    Hasło: <input type="password" name="pass">
    Nr grupy: <input type="number" min="1" name="userGroupId" value="<c:out value="${user.userGroupId}"/>">
    <button type="submit" name="id" value="${user.id}">Edytuj</button>
</form>
<a href="/userList">Cofnij</a>

</body>
</html>
