<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%--<form method="post">--%>
    <%--<h>Продукт сторінка</h>--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<th> Імя продукта:</th>--%>
            <%--<td>${nameMap}</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Ціна:</th>--%>
            <%--<td>${priceMap}</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Опис:</th>--%>
            <%--<td>${textMap}</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Стан продукта:</th>--%>
            <%--<td>${stanProductaMap}</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Ім'я власника:</th>--%>
            <%--<td>${nameUserMap}</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Email:</th>--%>
            <%--<td>${emailMap}</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Телефонний номер:</th>--%>
            <%--<td>${telephonNamberMap}</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Skype:</th>--%>
            <%--<td>${skypeMap}</td>--%>

        <%--</tr>--%>
        <%--<tr>--%>
            <%--<th>Місто:</th>--%>
            <%--<td>${cityMap}</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
    <%--<tr>--%>
        <%--<a href="/">exit</a>--%>
    <%--</tr>--%>
<%--</form>--%>

<c:url value="/" var="logout"/>
<form method="post" action="${logout}">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input  type="submit" value="Вихід"/>
</form>

<security:authorize
        access="isAuthenticated() and hasRole('ROLE_ADMIN')">
    <h1>Це буде бачити тільки адмін</h1>
    <%--Це буде бачити тільки адмін--%>
</security:authorize>
<security:authorize access="!isAuthenticated()">
    <%--Це буде бачити користувач який не залогінився--%>
    <h1>Це буде бачити користувач який не залогінився</h1>
</security:authorize>
<security:authorize
        access="isAuthenticated() and principal.username!='${product.id}' and !hasRole('ROLE_ADMIN')">
    <%--Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін--%>
    <h1>Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін</h1>
</security:authorize>
<security:authorize
        access="isAuthenticated() and principal.username=='${product.id}'">
    <%--Це буде бачити користувач який є власником сторінки--%>
    <h1>Це буде бачити користувач який є власником сторінки</h1>
</security:authorize>

</body>
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>--%>
<%--<script   src="https://code.jquery.com/jquery-2.2.2.min.js"   integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="   crossorigin="anonymous"></script>--%>

</html>