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

	<table align="center" style="margin-top: 200px">
		<c:forEach var="category" items="${categorys}">
			<tr>
				<td><c:url value="pidCategory${category.id}" var="url"/><a href="${url}"> ${category.getCategoryName()}</a></td>
			</tr>
		</c:forEach>
	</table>



</body>

<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

</html>