<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 21.01.2020
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Users in Group</title>
</head>
<body>

<table>
    <tr>
        <th>ID</th>
        <th>Użytkownik</th>
        <th>E-Mail</th>
    </tr>
    <c:forEach items="${users}" var="exercise">
        <tr>
            <td>${exercise.userName}</td>
            <td>${exercise.email}</td>
            <td><a href="/user?id=${exercise.id}">Szczegóły</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/">Powrót</a>
</body>
</html>
