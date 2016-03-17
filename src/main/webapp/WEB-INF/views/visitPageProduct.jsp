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
    <h>Продукт сторінка зайшов гість</h>
    <table>
        <tr>
            <th> Імя продукта:</th>
            <td>${nameMap}</td>
        </tr>
        <tr>
            <th>Ціна:</th>
            <td>${priceMap}</td>
        </tr>
        <tr>
            <th>Опис:</th>
            <td>${textMap}</td>
        </tr>
        <tr>
            <th>Стан продукта:</th>
            <td>${stanProductaMap}</td>
        </tr>
        <tr>
            <th>Ім'я власника:</th>
            <td>${nameUserMap}</td>
        </tr>
        <tr>
            <th>Email:</th>
            <td>${emailMap}</td>
        </tr>
        <tr>
            <th>Телефонний номер:</th>
            <td>${telephonNamberMap}</td>
        </tr>
        <tr>
            <th>Skype:</th>
            <td>${skypeMap}</td>

        </tr>
        <tr>
            <th>Місто:</th>
            <td>${cityMap}</td>
        </tr>
    </table>
    <tr>
        <a href="/">exit</a>
    </tr>
</form>
</body>
</html>