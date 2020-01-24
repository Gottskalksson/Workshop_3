<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 23.01.2020
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
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
    </tr>
    <c:forEach items="${groups}" var="group">
        <tr>
            <td>${group.name}</td>
            <td><a href="/editGroup?id=${group.id}">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
