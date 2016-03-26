<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.entity.City" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
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
    <script   src="https://code.jquery.com/jquery-2.2.1.min.js" ></script>
</head>
<body>
<c:choose>

    <c:when test="${index.equals('city')}">
        <select id="optionCity" name = "RegionId">
            <c:forEach var="cityRegion" items="${cityRegion}">
                <option >${cityRegion}</option>
            </c:forEach>
        </select>
    </c:when>

</c:choose>

<script>

    $("#optionCity").change(function(){
        index = "cityId";
        var id = $("#optionCity").val();
        $.get("searchCityByIdRegion" + index + "/"+ id, {}, function(result){
            $("#selectId").html(result);
        });
    });
</script>

</body>
</html>
