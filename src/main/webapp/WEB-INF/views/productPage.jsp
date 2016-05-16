<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
<security:authorize
        access="isAuthenticated() and hasRole('ROLE_ADMIN')">
    <h1>Це буде бачити тільки адмін</h1>
    <%--Це буде бачити тільки адмін--%>
</security:authorize>
<security:authorize access="!isAuthenticated()">
    <%--Це буде бачити користувач який не залогінився--%>
    <h1>Це буде бачити користувач який не залогінився</h1>
</security:authorize>
<security:authorize
        access="isAuthenticated() and principal.username!='${product.user.id}' and !hasRole('ROLE_ADMIN')">
    <%--Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін--%>
    <h1>Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін</h1>
</security:authorize>



<security:authorize
        access="isAuthenticated() and principal.username=='${product.user.id}'">
    <%--Це буде бачити користувач який є власником сторінки--%>
    <h1>Це буде бачити користувач який є власником сторінки</h1>




    <sf:form action="/addProduct/addPhotoProduct?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data" method="post">
        <td><label for="photo">Виберіть зображення</label></td>
        <td><input type="file" name="photoProduct" id="photo"></td>
        <td></td>
        <td><input type="submit" value="OK"></td>
    </sf:form>
</security:authorize>





</body>
<script src="/resources/fileForMySyte/js/jquery.js"></script>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>


</html>