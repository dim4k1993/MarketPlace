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
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/carusel.marketPlace-style.css" rel="stylesheet">
<body>
<div class="container">
	<div class="row">
		<div class="col-xs-12"></div>
	</div>
	<div id="carousel-example-generic" class="carousel ramka slide carousel-fade" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			<li data-target="#carousel-example-generic" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item">
				<img class="img-responsive" src="/resources/img/caruselPhoto/CaruselPhoto5.jpg" alt="John Piper Image">
			</div>
			<div class="item">
				<img class="img-responsive" src="/resources/img/caruselPhoto/CaruselPhoto2.jpg" alt="John Piper Image">
			</div>
			<div class="item">
				<img class="img-responsive" src="/resources/img/caruselPhoto/CaruselPhoto1.jpg" alt="John Piper Image">
			</div>
			<div class="item">
				<img class="img-responsive" src="/resources/img/caruselPhoto/CaruselPhoto4.jpg">
			</div>
			<div class="item active">
				<img class="img-responsive" src="/resources/img/caruselPhoto/CaruselPhoto3.jpg" alt="John Piper Image">
			</div>
		</div>

		<!--         Controls -->
		<!--
                <a class="left " href="#carousel-example-generic" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
        -->
	</div>

	<table align="center" style="margin-top: 200px">
		<c:forEach var="category" items="${categorys}">
			<tr>
				<td><c:url value="pidCategory${category.categoryName}" var="url"/><a href="${url}"> ${category.getCategoryName()}</a></td>
			</tr>
		</c:forEach>
	</table>


</body>

<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/Carusel.js"></script>

</html>