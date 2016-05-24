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
    <link href="/resources/fileForMySyte/css/noProductAccount-style.css" rel="stylesheet">

    <script src="/resources/fileForMySyte/js/jquery.js"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<div class="row">
    <div class=" noProduct" >
        <img src="/resources/fileForMySyte/img/noProductPhoto/NoProductImg.jpg" width="100%">
        <div class="col-xs-6 col-md-3"></div>
        <div class="col-xs-6 col-md-3"></div>
        <div class="col-xs-6 col-md-4 col-xs-12">
            <div class="batton_noProduct">
                <a href="addProduct" class="action-button animate blue"><h6><p class="glyphicon glyphicon-plus"></p> Добавить Обьявление</h6></a>
            </div>
        </div>
    </div>
</div>




</body>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>


</html>