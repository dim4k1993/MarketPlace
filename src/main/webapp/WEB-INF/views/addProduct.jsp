<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <script src="/resources/js/jquery-2.2.3.min.js"></script>
</head>
<body>
<sf:form method="POST" modelAttribute="product"  action="/registration=product+add">
    <sf:input path="id" id="id" type="hidden"/>
    <fieldset>
        <table align="center" style="margin-top: 100px">
            <h2 align="center" style="margin-top: 100px"> Подать бесплатное объявление</h2>
            <tr>
                <th>Заголовок*</th>
                <td><sf:input path="name"/></td>
                <td><sf:errors path="name"/></td>
            </tr>
            <tr>
                <th>Цена*</th>
                <td><sf:input path="price"/></td>
                <td><sf:errors path="price"/></td>
            </tr>
            <tr>
                <th>Описание*</th>
                <td><sf:input path="text"/></td>
                <td><sf:errors path="text"/></td>
            </tr>
            <tr>
                <th>Состояние*</th>
                <td><sf:input path="stanProducta"/></td>
                <td><sf:errors path="stanProducta"/></td>
                <td>
            </tr>
            <tr>
                <th>Контактное лицо*</th>
                <td><sf:input path="nameUser" value="${user.name}"/></td>
                <td><sf:errors path="nameUser"/></td>
                <td>
            </tr>
            <th>Email-адрес*</th>
            <td><sf:input readonly="true" path="email" value="${user.email}"/></td>
            <td><sf:errors path="email"/>
            </td>
            <tr>
                <th>Номер телефона*</th>
                <td><sf:input path="telephonNamber" value="${user.telephon_namber}"/></td>
                <td><sf:errors path="telephonNamber"/></td>
            </tr>
            <tr>
                <th>Skype:</th>
                <td><sf:input path="skype"/></td>
                <td><sf:errors path="skype"/></td>
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
                        <div id="selectCit"></div>
                        <div id="selectCity"></div>
                            <%--<div id="selectId"></div>--%>
                    </div>
                </td>

                <th>Категория:</th>
                <td>
                    <div id="categoryDiv">
                        <select id="option1" name = "IdCategory">
                            <option value="Виберете Категорию">-Виберете Категорию-</option>
                            <c:forEach var="categoryModel" items="${categoryModel}">
                                <option value="${categoryModel.id}">${categoryModel.categoryName}</option>
                            </c:forEach>
                        </select>
                        <br>
                        <div id="selectPidCat"></div>
                        <div id="selectPidCategory"></div>
                    </div>
                </td>
            <tr>
                <td align="right"><input type="submit" value="Добавить"/></td>
            </tr>
        </table>
    </fieldset>
</sf:form>

<script>
    $("#option").change(function(){
        var id = $("#option").val();
        index = "city";
        $.get("searchCityByIdRegion" + index + "/"+ id, {}, function(result){
            $("#selectCit").html(result);
        });
    });
</script>


<script>
    $("#option1").change(function(){
        var id = $("#option1").val();
        index = "pidCategory";
        $.get("searchPidCategoryByIdCategory" + index + "/"+ id, {}, function(result){
            $("#selectPidCat").html(result);
        });
    });
</script>


<security:authorize access="isAuthenticated() and principal.username=='${user.id}'">
    <%--Це буде бачити користувач який є власником сторінки--%>
</security:authorize>

<security:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">
    <%--Це буде бачити тільки адмін--%>
</security:authorize>

<security:authorize access="!isAuthenticated()">
    <%--Це буде бачити користувач який не залогінився--%>
</security:authorize>




</body>

<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

</html>