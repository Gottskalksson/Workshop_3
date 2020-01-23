<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 23.01.2020
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Solution's Details</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>Nazwa użytkownika</th>
        <th>E-mail</th>
    </tr>
    <tr>
        <td><c:out value="${user.id}"></c:out></td>
        <td><c:out value="${user.userName}"></c:out></td>
        <td><c:out value="${user.email}"></c:out></td>
    </tr>
</table>
<table>
    <tr>
        <th>ID rozwiązania</th>
        <th>ID ćwiczenia</th>
        <th>Opis</th>
        <th>Data dodania</th>
        <th>Data edycji</th>
    </tr>

    <c:forEach items="${solutions}" var="solution">
    <tr>
        <td>${solution.id}</td>
        <td>${solution.exerciseId}</td>
        <td>${solution.description}</td>
        <td>${solution.created}</td>
        <td>${solution.updated}</td>
        <td><a href="/solution?id=${solution.id}">Szczegóły</a></td>
    </tr>
</c:forEach>
</table>

<a href="/">Powrót do strony głównej</a>

</body>
</html>
