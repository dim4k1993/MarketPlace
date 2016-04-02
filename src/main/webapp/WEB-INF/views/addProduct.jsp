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
<sf:form method="POST" modelAttribute="product"  action="/registration=product+add">
<sf:input path="id" id="id" type="hidden"/>
<fieldset>
    <table align="center" style="margin-top: 100px">
        <h2 align="center" style="margin-top: 100px"> Подать бесплатное объявление</h2>
                <tr>
                    <th>Заголовок*</th>
                    <td><sf:input path="name"/></td>
                    <td><sf:errors path="name"/></td>
                </tr>
                <tr>
                    <th>Цена*</th>
                    <td><sf:input path="price"/></td>
                    <td><sf:errors path="price"/></td>
                </tr>
                <tr>
                    <th>Описание*</th>
                    <td><sf:input path="text"/></td>
                    <td><sf:errors path="text"/></td>
                </tr>
                <tr>
                    <th>Состояние*</th>
                    <td><sf:input path="stanProducta"/></td>
                    <td><sf:errors path="stanProducta"/></td>
                    <td>
                </tr>
                <tr>
                    <th>Контактное лицо*</th>
                    <td><sf:input path="nameUser"/></td>
                    <td><sf:errors path="nameUser"/></td>
                    <td>
                </tr>
                    <th>Email-адрес*</th>
                        <td><sf:input pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$" path="email"/></td>
                        <td><sf:errors path="email"/></td>
                </tr>
                <tr>
                    <th>Номер телефона*</th>
                    <td><sf:input path="telephonNamber"/></td>
                    <td><sf:errors path="telephonNamber"/></td>
                </tr>
                <tr>
                    <th>Skype:</th>
                    <td><sf:input path="skype"/></td>
                    <td><sf:errors path="skype"/></td>

                <tr>
                    <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />--%>
                    <td align="right"><input type="submit" value="Добавить"/></td>
                    <td>
                </tr>
    </table>
</fieldset>
</sf:form>

<c:url value="/" var="logout"/>
<form method="post" action="${logout}">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input  type="submit" value="Вихід"/>
</form>

</body>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script   src="https://code.jquery.com/jquery-2.2.2.min.js"   integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="   crossorigin="anonymous"></script>
</html>