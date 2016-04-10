<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<script   src="https://code.jquery.com/jquery-2.2.1.min.js" ></script>
	<style>
		.errorblock{
			width: 400px;
			color:#000;
			background-color: #b74c4c;
			border: 2px solid #333;
			padding: 8px;
			margin: auto;
			margin-top: 10px;
		}
		.error{
			color: red;
			font-size: 20px;
			text-align: left;
		}
	</style>
</head>

<body>

	<sf:form method="POST" modelAttribute="user"  action="/registration=user+add?${_csrf.parameterName}=${_csrf.token}">
		<sf:input path="id" id="id" type="hidden"/>
		<fieldset>
		<table align="center" style="margin-top: 100px">
			<sf:errors path="*" element="div" cssClass="errorblock" style="margin-top: 100px"/>
			<tr>
				<h2 align="center" style="margin-top: 100px"> Регистрация</h2>
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
				<td><sf:input path="email"/></td>
				<td><sf:errors path="email"/></td>
			</tr>
			<tr>
				<th>Пароль:</th>
				<td><sf:input path="parol" type="password"/></td>
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
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>--%>
<%--<script   src="https://code.jquery.com/jquery-2.2.2.min.js"   integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="   crossorigin="anonymous"></script>--%>

</html>