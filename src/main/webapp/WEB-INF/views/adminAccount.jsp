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
<form method="post" action="/adminAccount">
    <table align="center" style="margin-top: 100px">
        <tr>
            <h2 align="center" style="margin-top: 100px">Админка</h2>
        </tr>
    </table>
    <table>
        <td> <a href="adminUser">Робота с ЮЗЕРОМ</a></td>
        <td></td>
        <td> <a href="adminProduct">Робота с ПРОДУКТОМ</a></td>
        <td></td>
        <td> <a href="adminCategory">Робота с КАТЕРОГИЯМИ</a></td>
    </table>


</form>
<c:url value="/logout" var="logout"/>
<form method="post" action="${logout}">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input  type="submit" value="Вихід"/>
</form>
</body>

<script src="/resources/fileForMySyte/js/jquery.js"></script>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>

</html>