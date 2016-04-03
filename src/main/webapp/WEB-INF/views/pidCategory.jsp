<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form method="post" action="/pidCategory${idCategory}">


<table align="center" style="margin-top: 100px">
    <c:forEach var="pidcategory" items="${pidcategorys}">
        <tr>
            <td><c:url value="allProduct${pidcategory.id}" var="url"/><a href="${url}"> ${pidcategory.getName()}</a></td>
        </tr>
    </c:forEach>

</table>
</form>
</body>
</html>
