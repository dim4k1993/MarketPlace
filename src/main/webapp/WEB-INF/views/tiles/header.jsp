<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="" />
    <style>
<%@include file='/web-resources/css/bootstrap.min.css' %>

<%@include file='/web-resources/css/header-style.css' %>
    </style>

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

                <li class="dropdown">
                    <a href="/loginUserPage" class="dropdown-toggle" data-toggle="dropdown">Мой Кабинет <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#">11111111</a>
                        </li>
                        <li>
                            <a href="#">2222222</a>
                        </li>
                        <li>
                            <a href="#">3333333</a>
                        </li>
                        <li>
                            <a href="#">4444444</a>
                        </li>
                        <li>
                            <a href="#">5555555</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/addProduct">Подать Обявление</a>
                </li>
                <li>
                    <a href="/registration">Регистрация</a>
                </li>
                <li>
                    <a href="/loginUserPage">Войти</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

</body>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script   src="https://code.jquery.com/jquery-2.2.2.min.js"   integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="   crossorigin="anonymous"></script>

</html>
