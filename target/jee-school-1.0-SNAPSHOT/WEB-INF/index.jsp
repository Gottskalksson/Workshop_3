<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 18.01.2020
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
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
    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td>${solution.description}</td>
            <td>${solution.userId}</td>
            <td>${solution.created}</td>
            <td><a href="/solution?id=${solution.id}">Szczegóły</a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/WEB-INF/footer.jsp"%>
</body>
</html>
