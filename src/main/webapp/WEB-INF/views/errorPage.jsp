<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <table align="center">
        <tr>
            <h1 align="center" style="color: red; font-family: Arial;" >Неправильний пароль або логін</h1>
        </tr>

        <tr>
            <th style="color: red; font-family: Arial">E-Mail:</th>
            <td><input name = "emailUser" type="text" /></td>
        </tr>
        <tr>
            <th style="color: red; font-family: Arial">Password:</th>
            <td><input name = "password" type="password"/></td>
        </tr>
        <tr>
            <td align="right"><input type="submit" value="Войти"/></td>
        </tr>
        <tr>
            <td align="right" style="text-align: left"><a href="Register" style="text-align: center">Register</a></td>
        </tr>
    </table>
</form>
</body>
</html>