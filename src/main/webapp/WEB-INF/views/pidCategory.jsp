<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <script src="/resources/fileForMySyte/js/jquery.js"></script>

</head>
<body>
<form method="post" action="/pidCategory${name_category}">


<table align="center" style="margin-top: 100px">
    <c:forEach var="pidcategory" items="${pidcategorys}">
        <tr>
            <td><c:url value="allProduct${pidcategory.id}" var="url"/><a href="${url}"> ${pidcategory.getName()}</a></td>
        </tr>
    </c:forEach>

</table>
</form>
</body>

<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>
</html>
