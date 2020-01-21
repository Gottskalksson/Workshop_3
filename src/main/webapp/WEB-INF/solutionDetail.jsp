<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 21.01.2020
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Solution Deatil</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>Data dodania</th>
        <th>Data aktualizacji</th>
        <th>Opis</th>
        <th>ID ćwiczenia</th>
        <th>ID użytkownika</th>
    </tr>
    <tr>
        <td><c:out value="${solution.id}"></c:out></td>
        <td><c:out value="${solution.created}"></c:out></td>
        <td><c:out value="${solution.updated}"></c:out></td>
        <td><c:out value="${solution.description}"></c:out></td>
        <td><c:out value="${solution.exerciseId}"></c:out></td>
        <td><c:out value="${solution.userId}"></c:out></td>
    </tr>
</table>
<a href="/">Powrót</a>
</body>
</html>
