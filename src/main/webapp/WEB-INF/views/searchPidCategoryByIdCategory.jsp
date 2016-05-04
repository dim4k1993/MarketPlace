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
    <%--<script src="/resources/js/jquery-2.2.3.min.js"></script>--%>
</head>
<body>
<c:choose>

    <c:when test="${index.equals('pidCategory')}">
        <select id="optionPidCategory" name = "CategoryId">
            <option value="Виберете підкатегорию">-Виберете підкатегорию-</option>
            <c:forEach var="pidCategoryCategory" items="${pidCategoryCategory}">
                <option value="${pidCategoryCategory.getId()}">${pidCategoryCategory.getName()}</option>
            </c:forEach>
        </select>
    </c:when>

</c:choose>

<script>
    $("#optionCat").change(function(){
        var id = $("#optionCat").val();
        index = "pidCategory";
        $.get("searchPidCategoryByIdCategory" + index + "/"+ id, {}, function(result){
            $("#selectPidCategory").html(result);
        });
    });
    $("#optionPidCategory").change(function(){
        index = "pidCategoryId";
        var id = $("#optionPidCategory").val();
        $.get("searchPidCategoryByIdCategory" + index + "/"+ id, {}, function(result){
            $("#selectPidCatId").html(result);
        });
    });
</script>

</body>
</html>