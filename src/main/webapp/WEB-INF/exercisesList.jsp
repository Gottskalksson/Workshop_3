<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Users</title>
</head>
<body>
<table>
    <tr>
        <th>Tytuł zadania</th>
        <th>Opis</th>
        <th>Nr grupy</th>
        <th><a href="/addExercise">Dodaj nowe ćwiczenie</a> </th>
    </tr>
    <c:forEach items="${exercises}" var="exercise">
        <tr>
            <td>${exercise.title}</td>
            <td>${exercise.description}</td>
            <td><a href="/editExercise?id=${exercise.id}">Edytuj</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/">Strona Główna</a>
</body>
</html>
