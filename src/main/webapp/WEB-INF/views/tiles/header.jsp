<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/header-style.css" rel="stylesheet">
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle "  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand logo" href="/">MarketPlace</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right ">
                <security:authorize access="!isAuthenticated()">
                    <%--Це буде бачити користувач який не залогінився--%>
                <li>
                    <a href="loginUserPage">Мой Кабинет</a>
                </li>
                </security:authorize>
                <security:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">
                    <%--Це буде бачити тільки адмін--%>
                    <li>
                        <a href="adminAccount">Мой Кабинет</a>
                    </li>
                </security:authorize>
                <security:authorize access="isAuthenticated() and principal.username!='${user.id}' and !hasRole('ROLE_ADMIN')">
                    <%--Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін--%>
                    <li>
                        <a href="userAccount">Мой Кабинет</a>
                    </li>
                </security:authorize>
                <security:authorize access="isAuthenticated() and principal.username=='${user.id}' and !hasRole('ROLE_ADMIN')">
                    <%--Це буде бачити користувач який залогінився він являється власником сторінки і він не адмін--%>
                    <security:authorize access="!isAuthenticated()">
                        <%--Це буде бачити користувач який не залогінився--%>
                    <li>
                        <a href="userAccount">Мой Кабинет</a>
                    </li>
                    </security:authorize>
                    <security:authorize access="isAuthenticated()">
                        <%--Це буде бачити користувач який залогінився--%>
                        <li>
                            <a href="userAccount">${user.name} ${user.lastName}</a>
                        </li>
                    </security:authorize>

                </security:authorize>
                    <security:authorize access="!isAuthenticated()">
                <li>
                    <a href="registration">Подать Обявление</a>
                </li>
                    </security:authorize>
                <security:authorize access="isAuthenticated()">
                    <li>
                        <a href="addProduct">Подать Обявление</a>
                    </li>
                </security:authorize>
                <li>
                    <a href="registration">Регистрация</a>
                </li>
                <security:authorize access="!isAuthenticated()">
                    <%--Це буде бачити користувач який не залогінився--%>
                <li>
                    <a href="loginUserPage">Войти</a>
                </li>
                </security:authorize>
                <security:authorize access="isAuthenticated()">
                    <%--Це буде бачити користувач який  залогінився--%>
                    <li>
                        <a href="logout">Вийти</a>
                    </li>
                </security:authorize>
            </ul>
        </div>
    </div>
</nav>

</body>

<%--<script src="/resources/js/jquery.js"></script>--%>
<%--<script src="/resources/js/bootstrap.min.js"></script>--%>

</html>
