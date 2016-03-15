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
            <h2 align="center">Админка</h2>
        </tr>
    </table>
    <table>
        <td> <a href="adminDeleteUser">Удалить юзеров</a></td>
        <td></td>
        <td> <a href="adminDeleteProduct">Удалить продукти</a></td>

    </table>
    <tr>
        <a href="/loginUserPage">exit</a>
    </tr>
</form>

</body>
</html>