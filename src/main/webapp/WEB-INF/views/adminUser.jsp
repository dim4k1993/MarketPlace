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
<form method="post" action="/adminUser">
    <h>Удалить юзера:</h>

    <table style="margin-top: 100px">
        <c:forEach var="user" items="${users}"><tr>
            <td>${user.getLastName()}</td>
            <td><--</td>
            <td><c:url value="/user_id${user.id}" var = "url"/><a href="${url}" >Показать</a>  </td>
            <td><c:url value="/adminDeleteUser/${user.id}" var = "url"/> <a href="${url}">Удалить</a> </td>
        </tr></c:forEach>
    </table>

</form>
</body>
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>


</html>