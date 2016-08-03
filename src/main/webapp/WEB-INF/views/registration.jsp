<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="ru"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="ru"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="ru"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="ru"> <!--<![endif]-->
<head>

	<script src="/resources/fileForMySyte/js/jquery-2.2.3.min.js"></script>
	<link href="/resources/fileForMySyte/css/register-style.css" rel="stylesheet">
	<link href="/resources/fileForMySyte/css/bootstrap.min.css" rel="stylesheet">


</head>

<body>
<div class="container" style="margin-top: 100px">
	<sf:form method="POST" class="well form-horizontal" id="contact_form" modelAttribute="user"  action="/registration=user+add?${_csrf.parameterName}=${_csrf.token}">
		<sf:input path="id" id="id" type="hidden"/>
		<fieldset>
			<legend class="reg_form ">Регистрация</legend>

			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Имя:</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<sf:input path="name" placeholder="Имя " class="form-control" type="text"/>
					</div>
					<sf:errors path="name" class="errorsValidation"/>
				</div>
			</div>

			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Фамилия:</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<sf:input path="lastName" placeholder="Фамилия " class="form-control" type="text"/>
					</div>
					<sf:errors path="lastName" class="errorsValidation"/>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label">E-Mail:</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
						<sf:input path="email" placeholder="E-Mail адрес" class="form-control" type="text"/>
					</div>
					<sf:errors path="email" class="errorsValidation"/>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label">Пароль:</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<sf:input path="parol" type="password" placeholder="Пароль" class="form-control"/>
					</div>
					<sf:errors path="parol" class="errorsValidation"/>
				</div>
			</div>

			<!-- Text input-->

			<div class="form-group">
				<label class="col-md-4 control-label">Телефон #</label>
				<div class="col-md-4 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
						<sf:input path="telephon_namber" placeholder="+380(98)53-12-955" class="form-control" type="text"/>
					</div>
					<sf:errors path="telephon_namber" class="errorsValidation"/>
				</div>
			</div>

			<!-- Select Basic -->

			<div class="form-group">
				<label class="col-md-4 control-label">Область:</label>
				<div class="col-md-4 selectContainer">
					<div id="regionDiv" class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
						<select id="option" name="IdRegion" class="form-control selectpicker">
							<option value="Виберете Область">-Виберете Область-</option>
							<c:forEach var="regionModel" items="${regionModel}">
								<option value="${regionModel.id}">${regionModel.name}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<div id="select"></div>
			<div id="selectCity"></div>


			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label"></label>
				<div class="col-md-4">
					<button type="submit" class="btn btn-warning batton-register">Отправить <span class="glyphicon glyphicon-send"></span></button>
				</div>
			</div>
		</fieldset>
	</sf:form>
</div>


<script>
	$("#option").change(function(){
		var id = $("#option").val();
		index = "city";
		$.get("searchCityByIdRegion" + index + "/"+ id, {}, function(result){
			$("#select").html(result);
		});
	});
</script>


<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>
<script src="/resources/fileForMySyte/js/register.js"></script>

</body>

</html>