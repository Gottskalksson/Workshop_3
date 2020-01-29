<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Groups</title>
</head>
<body>
<table>
    <tr>
        <th>Nazwa grupy</th>
        <th><a href="/addGroup">Dodaj nową grupę</a> </th>
    </tr>
    <c:forEach items="${groups}" var="exercise">
        <tr>
            <td>${exercise.name}</td>
            <td><a href="/editGroup?id=${exercise.id}">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/">Strona Główna</a>
</body>
</html>
