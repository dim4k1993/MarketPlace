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

    <link href="/resources/fileForMySyte/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/userAccount-style.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/productUser-style.css" rel="stylesheet">

    <script src="/resources/fileForMySyte/js/jquery.js"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>


<main class="main">

        <security:authorize access="isAuthenticated() and principal.username!='${user.id}' and hasRole('ROLE_ADMIN')">
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


                    <!-- Form Name -->
                    <legend class="title_form ">Мої Оголошення</legend>
            <c:forEach var="product" items="${user.product}">
                <div class="container-item">
                    <c:forEach var="productPhoto" items="${product.productPhotos.get(0).fotoName}">
                        <div class="item">
                            <div class="photoProduct">
                                <img src="${productPhoto}"/>
                            </div>
                            </c:forEach>
                            <div class="item-overlay">
                                <a href="#" class="item-button share share-btn"></a>
                            </div>
                            <div class="item-content">
                                <div class="item-top-content">
                                    <div class="item-top-content-inner">
                                        <div class="item-product">
                                            <div class="item-top-title">
                                                <h3 class="nameProduct">${product.name}</h3>
                                                <p class="subdescription">
                                                <h6>${product.stanProducta}</h6>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="item-product-price">
                                            <span class="price-num">${product.price}грн.</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-add-content">
                                    <div class="item-add-content-inner">
                                        <div class="section">
                                            <a href="/product_id${product.id}" class="btn buy expand">Открить продукт</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item-menu popout-menu">
                            <ul>
                                <li class="color-blue"><a href="productSettings_id${product.id}" class="popout-menu-item glyphicon glyphicon-cog"> </a></li>
                                <li class="color-red"><a href="/userDeleteProduct/${product.id}" class="popout-menu-item glyphicon glyphicon-trash"></a></li>
                            </ul>
                        </div>
                </div>
            </c:forEach>
        </security:authorize>


        <security:authorize access="!isAuthenticated()">
            <%--Це буде бачити користувач який не залогінився--%>
            <h1>Це буде бачити користувач який не залогінився</h1>
        </security:authorize>

        <security:authorize access="isAuthenticated() and principal.username!='${user.id}' and !hasRole('ROLE_ADMIN')">
            <%--Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін--%>
            <h1>Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін</h1>
            <nav class="menu" tabindex="0">
                <div class="smartphone-menu-trigger"></div>
                <header class="avatar">
                    <img src="${user.foto}"/>
                    <h3>${user.name} ${user.lastName}</h3>
                </header>
                <ul>
                    <li tabindex="0" class="icon-dashboard g"><a href="addProduct"><span>Оголошення</span></a></li>
                    <li tabindex="0" class="icon-users "><a href="#"><span>Написать Сообщение</span></a></li>

                </ul>
            </nav>

            <!-- Form Name -->
            <legend class="title_form ">Оголошення ${user.name} ${user.lastName}</legend>

        </security:authorize>


        <security:authorize access="isAuthenticated() and principal.username=='${user.id}'">
            <%--Це буде бачити користувач який є власником сторінки--%>
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


                    <!-- Form Name -->
                    <legend class="title_form ">Мої Оголошення</legend>

                <c:forEach var="product" items="${userProducts}">
            <div class="container-item">
            <c:forEach var="productPhoto" items="${product.productPhotos.get(0).fotoName}">
                <div class="item">
                    <div class="photoProduct" >
                        <img src="${productPhoto}"/>
                    </div>
                    </c:forEach>
                    <div class="item-overlay">
                        <a href="#" class="item-button share share-btn"></a>
                    </div>
                    <div class="item-content">
                        <div class="item-top-content">
                            <div class="item-top-content-inner">
                                <div class="item-product">
                                    <div class="item-top-title">
                                        <h3 class="nameProduct">${product.name}</h3>
                                        <p class="subdescription">
                                            <h6>${product.stanProducta}</h6>
                                        </p>
                                    </div>
                                </div>
                                <div class="item-product-price">
                                    <span class="price-num">${product.price}грн.</span>
                                </div>
                            </div>
                        </div>
                        <div class="item-add-content">
                            <div class="item-add-content-inner">
                                <div class="section">
                                    <a href="/product_id${product.id}" class="btn buy expand">Открить продукт</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item-menu popout-menu">
                    <ul>
                        <li class="color-blue"><a href="productSettings_id${product.id}" class="popout-menu-item glyphicon glyphicon-cog"> </a></li>
                        <li class="color-red"><a href="/userDeleteProduct/${product.id}" class="popout-menu-item glyphicon glyphicon-trash"></a></li>
                    </ul>
                </div>
            </div>
                </c:forEach>

        </security:authorize>



</main>


</body>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>


</html>