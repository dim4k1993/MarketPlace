<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%-- JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- Spring security taglibs--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html>
<head>
    <title>Spring MVC + AJAX Integration</title>
</head>
<body>

<div class="springajax" style="width:450px; height:150px;">
    <table>
        <tr>
            <td colspan="2">AJAX Demo</td>
        </tr>
        <tr>
            <td>Select State</td>
            <td>
                <select name="regionR">
                    <option value="0">- выберите область -</option>
                    <c:forEach var="region" items="${region}">
                        <option value="${region.id}">${region.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>Select City</td>
            <td>
                <<select name = "cityM">
                    <option value="0">Select City</option>
                </select>
                <div id="loading"></div>
            </td>
        </tr>
    </table><br>
</div><br><br><br><br><br><br>
<div align="center">
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/example1.js"></script>
</body>
</html>
