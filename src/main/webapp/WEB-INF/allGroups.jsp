<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 21.01.2020
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>All Groups</title>
</head>
<body>
<table>
    <tr>
        <th>Grupa</th>
        <th>Akcje</th>
    </tr>
    <c:forEach items="${groups}" var="group">
        <tr>
            <td>${group.name}</td>
            <td><a href="/group?id=${group.id}">Szczegóły</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
