<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="uk"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="uk"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="uk"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="uk9=5211"> <!--<![endif]-->
<head>
    <link href="/resources/fileForMySyte/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/userAccount-style.css" rel="stylesheet">

    <script src="/resources/fileForMySyte/js/jquery.js"></script>

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
        <li tabindex="0" class="icon-customers "><a href="userAccount"><span>Мої Оголошення</span></a></li>
        <li tabindex="0" class="icon-users "><a href="#"><span>Повідомлення</span></a></li>
        <li tabindex="0" class="icon-settings "><a href="userSettings"><span>Налаштування</span></a></li>
    </ul>
</nav>

<main class="main">
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

            <sf:form action="/userSettings/addPhoto?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
                <td><label for="image">Виберіть зображення</label></td>
                <td><input type="file" name="photoAvatar" id="image"></td>
                <td></td>
                <td><input type="submit" value="OK"></td>
            </sf:form>




        </security:authorize>

</main>






</body>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>

</html>