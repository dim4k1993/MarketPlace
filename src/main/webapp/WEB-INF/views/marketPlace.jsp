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
	<h2>Торговая Площадка</h2>
	<table>
	<tr><a href="loginUserPage">Мой профиль</a></tr>
	<tr><a href="addProduct">Подать объявление </a></tr>
	</table>
</form>

<%--<sf:form method="POST" modelAttribute="catagory" action="/marketPlace/addCategory">--%>
	<%--<sf:input path="id" id="id" type ="hidden"/>--%>
	<%--<fielded>--%>
		<%--<table>--%>
			<%--<tr>--%>
				<%--<td>--%>
					<%--<th>Name Category</th>--%>
					<%--<sf:input path="categoryName"/>--%>
					<%--<input type="submit" value="add">--%>
				<%--</td>--%>
			<%--</tr>--%>
		<%--</table>--%>
	<%--</fielded>--%>
<%--</sf:form>--%>
</body>

</html>