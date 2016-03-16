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
    <tr>
        <a href="/loginUserPage">exit</a>
    </tr>
</form>
</body>
</html>