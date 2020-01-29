<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>INDEX</title>
</head>
<body>
<%@include file="header.jsp"%>
<table>
    <tr>
        <th>Tytuł</th>
        <th>Autor</th>
        <th>Data dodania</th>
        <th>Akcje</th>
    </tr>
    <c:forEach items="${solutions}" var="exercise">
        <tr>
            <td>${exercise.description}</td>
            <td>${exercise.userId}</td>
            <td>${exercise.created}</td>
            <td><a href="/solution?id=${exercise.id}">Szczegóły</a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/WEB-INF/footer.jsp"%>
</body>
</html>
