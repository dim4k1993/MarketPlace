<%@ page import="java.sql.ResultSet" %>
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
<form method="post" action="/allProduct${namePidCategory}">

    <table align="center" style="margin-top: 100px">
        <c:forEach var="product" items="${products}">
            <tr>
                <td><c:url value="/product_id${product.id}" var="url"/><a href="${url}"> ${product.getName()}</a></td>

        </tr></c:forEach>
    </table>

</form>
</body>
<script src="/resources/fileForMySyte/js/jquery.js"></script>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>


</html>