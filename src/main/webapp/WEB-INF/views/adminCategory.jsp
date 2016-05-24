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

    <script src="/resources/fileForMySyte/js/jquery.js"></script>

</head>
<body>
<form method="post" action="/adminCategory">
    <h>Category:</h>

    <table align="center" style="margin-top: 100px">
        <h2 align="center" style="margin-top: 100px"> добавить категорию:</h2>
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
        <td><c:url value="/adminDeleteCategory/${category.categoryName}" var = "url"/> <a href="${url}">Удалить /</a></td>
        <td><c:url value="/adminPidCategory${category.categoryName}" var = "url"/> <a href="${url}">проказать пк </a> </td>
    </tr></c:forEach>
</table>
</body>

<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>


</html>