<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
                        <td><sf:input path="email"/></td>
                        <td><sf:errors path="email"/>
                        </td>
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
                    <td align="right"><input type="submit" value="Добавить"/></td>
                </tr>
        </table>
    </fieldset>
</sf:form>
<%--readonly="true"--%>
<%--value="${user.name}"--%>
<%--value="${user.email}"--%>
<%--value="${user.telephon_namber}"--%>

    <security:authorize access="isAuthenticated() and principal.username=='${user.id}'">
    <%--Це буде бачити користувач який є власником сторінки--%>
    </security:authorize>

    <security:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">
    <%--Це буде бачити тільки адмін--%>
    </security:authorize>


    <security:authorize access="!isAuthenticated()">
        <%--Це буде бачити користувач який не залогінився--%>
    </security:authorize>




</body>

<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

</html>