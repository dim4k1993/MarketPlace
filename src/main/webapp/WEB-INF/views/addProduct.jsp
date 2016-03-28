<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
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
        <h2 align="center"> Подать бесплатное объявление</h2>
                <tr>
                    <th>Заголовок*</th>
                    <td><input name="name" type="text" /></td>
                </tr>
                <tr>
                    <th>Цена*</th>
                    <td><input name="price" type="text" /></td>
                </tr>
                <tr>
                    <th>Описание*</th>
                    <td><input name="text" type="text" /></td>
                </tr>
                <tr>
                    <th>Состояние*</th>
                    <td><input name="stanProducta" type="text" />
                    <td>
                </tr>
                <tr>
                    <th>Контактное лицо*</th>
                    <td><input name="nameUser" type="text" />
                    <td>
                </tr>
                    <th>Email-адрес*</th>

        <td><input  pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$" name = "email" type="text"/></td>
                </tr>
                <tr>
                    <th>Номер телефона*</th>
                    <td><input name="telephonNamber" type="text" /></td>
                </tr>
                <tr>
                    <th>Skype:</th>
                    <td><input name="skype" type="text" /></td>
                </tr>
                <tr>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <td><input type="submit" value="Добавить" />
                    <td>
                </tr>
    </table>
</form>
<c:url value="/" var="logout"/>
<form method="post" action="${logout}">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input  type="submit" value="Вихід"/>
</form>

</body>
</html>