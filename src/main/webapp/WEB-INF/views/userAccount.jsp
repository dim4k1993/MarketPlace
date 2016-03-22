<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="uk"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="uk"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="uk"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="uk9=5211"> <!--<![endif]-->
<head>
    <style type="text/css">
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form method="post">
    <h>Юзер Акаунт</h>
    <table>
        <tr>
            <th>First Name:</th>
            <td>${firstNameMap}</td>
        </tr>
        <tr>
            <th>Last Name:</th>
            <td>${lastNameMap}</td>
        </tr>
        <tr>
            <th>City:</th>
            <td>${cityMap}</td>
        </tr>
        <tr>
            <th>Email:</th>
            <td>${emailMap}</td>
        </tr>
        <tr>
            <th>phoneNumber:</th>
            <td>${telephon_namberMap}</td>
        </tr>
        <tr>
            <th>Skype:</th>
            <td>${skypeMap}</td>

        </tr>
    </table>
    <table>
    <tr><a href="addProduct">Подать объявление </a></tr>
    </table>
    <c:url value="/logout" var="logout"/>
    <form method="post" action="${logout}?${_csrf.parameterName}=${_csrf.token}">
        <input  type="submit" value="Вихід"/>
    </form>
</form>
</body>
</html>