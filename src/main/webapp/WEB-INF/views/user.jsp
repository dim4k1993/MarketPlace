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
<form method="post">
	<table align="center">
		<tr>
			<h1 align="center">Войти в кабинет</h1>
		</tr>
		<tr>
			<th>Email:</th>
			<td><input  pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$" name = "email" type="text"/></td>
		</tr>
		<tr>
			<th>Пароль:</th>
			<td><input pattern = "^[a-zA-Z0-9]+$" name = "parol" type="password"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Войти" /></td>
		</tr>
		<a></a>
		<td><a href="registration">Registration</a></td>
	</table>
</form>

</body>
</html>