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
			<h2 align="center"> Регистрация</h2>
			<tr>
				<th>Имя:</th>
				<td><input name="name" type="text" /></td>
			</tr>
			<tr>
				<th>Фамилия:</th>
				<td><input name="lastName" type="text" /></td>
			</tr>
			<tr>
				<th>Email-адрес:</th>
				<td><input  pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$" name = "email" type="text"/></td>
			</tr>
			<tr>
				<th>Пароль:</th>
				<td><input pattern = "^[a-zA-Z0-9]+$" name = "parol" type="password"/></td>

				<td>
			</tr>
			<tr>
				<th> Повторите пороль :</th>
				<td><input pattern = "^[a-zA-Z0-9]+$" name = "povtorParol" type="password"/></td>
				<td>
			</tr>
				<th>Номер телефона:</th>
				<td><input name="telephon_namber" type="text" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Добавить" />
				<td>
			</tr>
		</table>
	</form>
</body>