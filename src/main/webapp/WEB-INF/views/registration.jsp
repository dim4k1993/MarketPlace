<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.entity.City" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<script   src="https://code.jquery.com/jquery-2.2.1.min.js" ></script>
</head>
<body>
	<form method="post" action="?${_csrf.parameterName}=${_csrf.token}">
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
				<td><input  pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$" name = "email"  type="text"/></td>
			</tr>
			<tr>
				<th>Пароль:</th>
				<td><input pattern = "^[a-zA-Z0-9]+$" name = "parol" type="password"/></td>
			</tr>
			<tr>
				<th> Повторите пороль :</th>
				<td><input pattern = "^[a-zA-Z0-9]+$" name = "povtorParol" type="password"/></td>
				<td>
			</tr>
			<tr>
				<th>Номер телефона:</th>
				<td><input name="telephon_namber" type="text" /></td>
			</tr>
			<tr>
				<th>Розташування:</th>
				<td>
					<div id="regionDiv">
						<select id="option" name = "IdRegion">
						<c:forEach var="regionModel" items="${regionModel}">
							<option value="${regionModel.id}">${regionModel.name}</option>
						</c:forEach>
						</select>
						<br>

						<div id="select"></div>
						<div id="selectCity"></div>
					</div>
				</td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="Зареєструватися"/></td>
				<td>
			</tr>
		</table>
	</form>


<script>
	$("#option").change(function(){
//        $.ajax({url: "searchCityByIdRegion", success: function(result){
//            $("#regionDiv").append(result);
//        }});
		var id = $("#option").val();
		index = "city";
		$.get("searchCityByIdRegion" + index + "/"+ id, {}, function(result){
			$("#select").html(result);
		});
	});
</script>

</body>

</html>