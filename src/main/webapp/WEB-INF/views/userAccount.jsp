<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="uk"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="uk"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="uk"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="uk9=5211"> <!--<![endif]-->
<head>

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/userAccount-style.css" rel="stylesheet">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<nav class="menu" tabindex="0">
    <div class="smartphone-menu-trigger"></div>
    <header class="avatar">
        <img src="${user.foto}"/>
        <h3>${user.name} ${user.lastName}</h3>
    </header>
    <ul>
        <li tabindex="0" class="icon-dashboard g"><a href="addProduct"><span>Подати Оголошення</span></a></li>
        <li tabindex="0" class="icon-customers "><a href="#"><span>Мої Оголошення</span></a></li>
        <li tabindex="0" class="icon-users "><a href="#"><span>Повідомлення</span></a></li>
        <li tabindex="0" class="icon-settings "><a href="userSettings"><span>Налаштування</span></a></li>
    </ul>
</nav>

<main>

    <div class="helper">
        Додати оголошення

        <security:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">
            <h1>Це буде бачити тільки адмін</h1>
            <%--Це буде бачити тільки адмін--%>
        </security:authorize>
        <security:authorize access="!isAuthenticated()">
            <%--Це буде бачити користувач який не залогінився--%>
            <h1>Це буде бачити користувач який не залогінився</h1>
        </security:authorize>
        <security:authorize access="isAuthenticated() and principal.username!='${user.id}' and !hasRole('ROLE_ADMIN')">
            <%--Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін--%>
            <h1>Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін</h1>
        </security:authorize>
        <security:authorize access="isAuthenticated() and principal.username=='${user.id}'">
            <%--Це буде бачити користувач який є власником сторінки--%>
            <h1>Це буде бачити користувач який є власником сторінки</h1>

            <c:forEach var="product" items="${user.product}">
                <tr>
                    <td><c:url value="/product_id${product.id}" var="url"/><a href="${url}"> ${product.name}</a></td>
                </tr>
            </c:forEach>

        </security:authorize>

    </div>

</main>


</body>
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>--%>
<%--<script   src="https://code.jquery.com/jquery-2.2.2.min.js"   integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="   crossorigin="anonymous"></script>--%>


</html>