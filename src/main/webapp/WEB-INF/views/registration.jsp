<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.entity.City" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="uk"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="uk"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="uk"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="uk9=5211"> <!--<![endif]-->
<head>
	<script   src="https://code.jquery.com/jquery-2.2.1.min.js" ></script>
</head>

<body>

	<sf:form method="POST" modelAttribute="user"  action="/registration=user+add">
		<sf:input path="id" id="id" type="hidden"/>
		<fieldset>
		<table align="center">
			<tr>
				<h2 align="center"> Регистрация</h2>
			</tr>
			<tr>
				<th>Имя:</th>
				<td><sf:input path="name"/></td>
				<td><sf:errors path="name"/></td>
			</tr>
			<tr>
				<th>Фамилия:</th>
				<td><sf:input path="lastName"/></td>
				<td><sf:errors path="lastName"/></td>
			</tr>
			<tr>
				<th>Email-адрес:</th>
				<td><sf:input pattern = "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$" path="email"/></td>
				<td><sf:errors path="email"/></td>
			</tr>
			<tr>
				<th>Пароль:</th>
				<td><sf:input pattern = "^[a-zA-Z0-9]+$" path="parol" type="password"/></td>
				<td><sf:errors path="parol"/> </td>
			</tr>
			<tr>
				<th>Номер телефона:</th>
				<td><sf:input path="telephon_namber"/></td>
				<td><sf:errors path="telephon_namber"/></td>
			</tr>
			<tr>
				<th>Розташування:</th>
				<td>
					<div id="regionDiv">
						<select id="option" name = "IdRegion">
							<option value="Виберете Область">-Виберете Область-</option>
						<c:forEach var="regionModel" items="${regionModel}">
							<option value="${regionModel.id}">${regionModel.name}</option>
						</c:forEach>
						</select>
						<br>
						<div id="select"></div>
						<div id="selectCity"></div>
						<%--<tr>${IdCity}</tr>--%>
					</div>
				</td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="Зареєструватися"/></td>
			</tr>
		</table>
		</fieldset>
	</sf:form>

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