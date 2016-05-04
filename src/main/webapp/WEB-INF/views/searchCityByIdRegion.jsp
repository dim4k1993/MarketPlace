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
    <link href="/resources/css/register-style.css" rel="stylesheet">
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <%--<script src="/resources/js/jquery-2.2.3.min.js"></script>--%>
</head>
<body>

<c:choose>
    <c:when test="${index.equals('city')}">
        <div class="form-group">
            <label class="col-md-4 control-label">Город:</label>
            <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                    <select id="optionCity" name="RegionId" class="form-control selectpicker">
                        <option value="Виберете город">-Виберете город-</option>
                        <c:forEach var="cityRegion" items="${cityRegion}">
                            <option value="${cityRegion.getId()}">${cityRegion.getName()}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </c:when>
</c:choose>

<script>
    $("#optionReg").change(function(){
        var id = $("#optionReg").val();
        index = "city";
        $.get("searchCityByIdRegion" + index + "/"+ id, {}, function(result){
            $("#selectCity").html(result);
        });
    });
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