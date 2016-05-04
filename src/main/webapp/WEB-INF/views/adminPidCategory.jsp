<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form method="post" action="/adminPidCategory${name_category}">
    <h>Category:</h>

    <table align="center" style="margin-top: 100px">
        <h2 align="center" style="margin-top: 100px"> добавить под-категорию:</h2>

        <h1 align="center" style="margin-top: 100px">${name_category}</h1>
        <tr>
            <th>Назва Под-Катерогии:</th>
            <td><input name="name" type="text" /></td>
        </tr>
        <tr>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <td><input type="submit" value="Добавить" />
            <td>
        </tr>
    </table>
</form>
<table>
    <c:forEach var="pidcategory" items="${pidcategorys}"><tr>
        <td>${pidcategory.getName()}</td>
        <td><--</td>
        <td><c:url value="/adminDeletePidCategory/${pidcategory.id}" var = "url"/> <a href="${url}">Удалить /</a></td>
        <td><c:url value="/adminProduct${pidcategory.id}" var = "url"/>  <a href="${url}" >показать продукти</a>  </td>
    </tr></c:forEach>
</table>
</body>
</html>
