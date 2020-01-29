<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Users</title>
</head>
<body>
<table>
    <tr>
        <th>Nazwa użytkownika</th>
        <th>Adres e-mail</th>
        <th>Nr grupy</th>
        <th><a href="/addUser">Dodaj nowego użytkownika</a> </th>
    </tr>
    <c:forEach items="${users}" var="exercise">
        <tr>
            <td>${exercise.userName}</td>
            <td>${exercise.email}</td>
            <td>${exercise.userGroupId}</td>
            <td><a href="/editUser?id=${exercise.id}">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/">Strona Główna</a>
</body>
</html>
