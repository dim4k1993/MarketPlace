<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link href="/resources/fileForMySyte/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/fileForMySyte/css/userAccount-style.css" rel="stylesheet">

<script src="/resources/fileForMySyte/js/jquery.js"></script>

<body>




<h1>dsfdsfsdfsdf</h1>

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

<security:authorize access="isAuthenticated() and principal.username=='${user.id}'">
    <%--Це буде бачити користувач який є власником сторінки--%>
    <h1>Це буде бачити користувач який є власником сторінки</h1>
<sf:form action="/productSettings/addPhotoProduct?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
    <td><label for="photo">Виберіть зображення</label></td>
    <td><input type="file" name="photoProduct" id="photo"></td>
    <td></td>
    <td><input type="submit" value="OK"></td>
</sf:form>





</security:authorize>

    <security:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">
        <h1>Це буде бачити тільки адмін</h1>
        <%--Це буде бачити тільки адмін--%>
    </security:authorize>

</main>
</body>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>

</html>
