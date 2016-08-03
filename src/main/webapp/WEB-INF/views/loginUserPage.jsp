<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="/resources/fileForMySyte/js/jquery-2.2.3.min.js"></script>
	<link href="/resources/fileForMySyte/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/fileForMySyte/css/loginPage-style.css" rel="stylesheet">
</head>
<body>
<c:url value="/login" var="login"/>
<form method="post"  class="login" action="${login}">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<h2 align="center" style="margin-top: 80px;">Войти</h2>
	<div align="center"  style="margin-top:220px" class="loginpanel">
		<div class="txt">
			<input id="email" type="text" required pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$"name="username" placeholder="Email-адреса" />
			<label for="email" class="entypo-user"></label>
		</div>
		<div class="txt">
			<input id="parol" type="password" required pattern = "^[a-zA-Z0-9]+$" min = "5"  name="password" placeholder="Пароль" />
			<label for="parol" class="entypo-lock"></label>
		</div>
		<div class="buttons">
			<button type="submit" class="myButton"> <input type="button" class="myButton2" value="Войти" /></button>
    <span>
      <a href="registration" class="entypo-user-add register">Регистрация</a>
    </span>
		</div>
		<div class="hr">
			<div class="hr1"></div>
			<h4>Вход с Помощью</h4>
			<div class="hr2"></div>
		</div>

		<div class="social">
			<a href="https://www.facebook.com/" class="facebook"></a>
			<a href="https://twitter.com/?lang=ru" class="twitter"></a>
			<a href="https://vk.com" class="googleplus"></a>
		</div>
	</div>
</form>

</body>


<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>




</html>