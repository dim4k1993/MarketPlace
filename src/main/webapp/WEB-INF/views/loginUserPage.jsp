<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Войти в кабинет</title>
	<style>
		<%@include file='/resources/css/UserEnter.css' %>
	</style>
</head>
<body>

	<form method="post" action="" class="login">
	<p>
		<label for="email">Email:</label>
		<input type="text" required pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$"name="email" id="email" >
	</p>
	<p>
		<label for="parol">Пароль:</label>
		<input pattern = "^[a-zA-Z0-9]+$" min = "5" required type="password" name="parol" id="parol" >
	</p>
		<p class="login-submit">
			<button type="submit" class="login-button">Войти</button>
		</p>
	<p><a href="registration">Регистрация</a></p>
</form>

</body>
</html>