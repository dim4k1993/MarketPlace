<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Связанные с помощью ajax списки</title>
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="selects.js"></script>
</head>
<body><br /><br /><br /><br />
<table  align="center" >
    <tr>
        <td><form action="#" method="get">
            Страна:<br />
            <select name="country_id" id="country_id" class="StyleSelectBox">
                <option value="0">- выберите страну -</option>
                <option>Украина</option>
            </select>
        </td>
        <td>
        Регион:<br />
            <form method = "POST">
                <select name = "regionM">
                    <option value="0">- выберите регион -</option>
                    <c:forEach var="region" items="${region}">
                        <option value="${region.id}">${region.name}</option>
                    </c:forEach>
                </select>
            </form>
        </td>
        <td>
        Город:<br />
        <select name="city_id" id="city_id" disabled="disabled" class="StyleSelectBox">
            <option value="0">- выберите город -</option>
        </select>
        </form>
    </td>
    </tr>
</table><br />
<div align="center" id="selectBoxInfo"></div>



</body>
</html>