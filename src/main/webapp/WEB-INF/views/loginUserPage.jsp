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
	<style type="text/css">
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
<c:url value="/login" var="login"/>
<form method="post"  class="login" action="${login}">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<fieldset>
			<table align="center" style="margin-top: 100px">
				<h2 align="center" style="margin-top: 100px"> войти в кабинет</h2>
	<p>
		<label for="email">Email:</label>
		<input type="text" required pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$"name="username" id="email" >
	</p>
	<p>
		<label for="parol">Пароль:</label>
		<input pattern = "^[a-zA-Z0-9]+$" min = "5" required type="password" name="password" id="parol" >
	</p>
		<p class="login-submit">
			<button type="submit" class="login-button">Войти</button>
		</p>
	<p><a href="registration">Регистрация</a></p>
			</table>
		</fieldset>
</form>

</body>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script   src="https://code.jquery.com/jquery-2.2.2.min.js"   integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="   crossorigin="anonymous"></script>
</html>