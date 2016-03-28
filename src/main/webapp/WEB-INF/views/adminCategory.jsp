<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form method="post">
    <h>Category:</h>

    <table align="center">
        <h2 align="center"> добавить категорию:</h2>
        <tr>
            <th>Назва Катерогии:</th>
            <td><input name="categoryName" type="text" /></td>
        </tr>
        <tr>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <td><input type="submit" value="Добавить" />
            <td>
        </tr>
    </table>

</form>
<table>
    <c:forEach var="category" items="${categorys}"><tr>
        <td>${category.getCategoryName()}</td>
        <td><--</td>
        <td><c:url value="/adminDeleteCategory/${category.id}" var = "url"/> <a href="${url}">Удалить</a> </td>
    </tr></c:forEach>
</table>
</body>
</html>