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
    <script src="/resources/fileForMySyte/js/jquery-2.2.3.min.js"></script>
    <link href="/resources/fileForMySyte/css/addProduct-style.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" style="margin-top: 100px">
<sf:form method="POST"  class="well form-horizontal coloraaa" id="contact_form" modelAttribute="product"  action="/registration=product+add">
    <sf:input path="id" id="id" type="hidden"/>
    <fieldset>
        <!-- Form Name -->
        <legend class="reg_form ">Подати безкоштовне оголошення на MarkepPlace</legend>

        <!-- Text input-->

        <div class="form-group ">
            <label class="col-md-4 control-label">Заголовок*</label>
            <div class="col-md-5 ">
                <div class="input-group ">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-chevron-right"></i></span>
                    <sf:input path="name" placeholder="Заголовок" class="form-control" type="text"/>
                </div>
                    <sf:errors path="name"/>
             </div>
        </div>



        <!-- Select Basic -->

        <div class="form-group">
            <label class="col-md-4 control-label">Категория* </label>
            <div class="col-md-4 selectContainer">
                <div id="categoryDiv" class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-chevron-right"></i></span>
                    <select id="option1" name="IdCategory" class="form-control selectpicker ">
                        <option value="Виберете Категорию">-Виберете Категорию-</option>
                            <c:forEach var="categoryModel" items="${categoryModel}">
                            <option value="${categoryModel.id}">${categoryModel.categoryName}</option>
                            </c:forEach>
                    </select>
                </div>
            </div>
        </div>
            <div id="selectPidCat"></div>
            <div id="selectPidCategory"></div>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Цена*</label>
            <div class="col-md-4 inputGroupContainer priceWigh">
                <div class="input-group priceWigh">
                    <sf:input path="price" placeholder="Цена" class="form-control priceWigh" type="text"/>
                </div>
                    <sf:errors path="price"/>
            </div>
            <div class="col-md-2 inputGroupContainer pricemargin">
                <h4>грн.</h4>
                <div class="checkbox-style">
                    <input type="checkbox"> договорная
                </div>
            </div>
        </div>


        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Состояние*</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-thumbs-up "></i></span>
                    <sf:input path="stanProducta" class="form-control" type="text"/>
                </div>
                 <sf:errors path="stanProducta"/>
            </div>
        </div>

        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Описание*</label>
            <div class="col-md-5 inputGroupContainer">
                <sf:textarea path="text" class="form-control"  rows="6" placeholder="Описание продукта..."/>
            </div>
            <sf:errors path="text"/>
        </div>




        <div class="form-group">
            <label class="col-md-7 control-label">Добавить фото</label>
        </div>

        <div class="form-group addFotoGroup">
            <label class="col-md-2 control-label"></label>
            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png" id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera"/>
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"   id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera1" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"   id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"   id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"    id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"    id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>
        </div>





        <div class="form-group addFotoGroup">
            <label class="col-md-2 control-label"></label>
            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"    id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"   id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera1" capture="camera1" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"   id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"    id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"   id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>

            <section class="addPhotoFromProdct">
                <img src="/resources/fileForMySyte/img/productPhotoDefoult/no-image-blog-one.png"   id="img">
                <a id="addphoto" href="#" class="btn addFoto">+ Добавить фото</a>
                <a id="removephoto" href="#" class="btn deledeFoto">x Удалить фото</a>
                <input type="file" name="file" id="file" accept="image/*;capture=camera" capture="camera" />
            </section>
        </div>




        <!-- Text input-->

        <div class="form-group marginTopp">
            <label class="col-md-4 control-label">Контактное лицо*</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <sf:input path="nameUser" value="${user.name}" placeholder="Контактное лицо " class="form-control" type="text"/>
                </div>
                    <td><sf:errors path="nameUser"/></td>
            </div>
        </div>




        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label">E-Mail</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                    <sf:input readonly="true" path="email" value="${user.email}" placeholder="E-Mail адрес" class="form-control" type="text"/>
                </div>
                <sf:errors path="email"/>
            </div>
        </div>


        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Телефон #</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                    <sf:input path="telephonNamber" value="${user.telephon_namber}" placeholder="+380(98)53-12-955" class="form-control" type="text"/>
                </div>
                    <sf:errors path="telephonNamber"/>
            </div>
        </div>


        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label">Skype:</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                    <sf:input path="skype"  placeholder="skype" class="form-control" type="text"/>
                </div>
                <sf:errors path="skype"/>
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
        <div id="selectCit"></div>
        <div id="selectCity"></div>

        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label"></label>
            <div class="col-md-4">
                <button type="submit" class="btn btn-warning batton-register"><span class="glyphicon glyphicon-plus"></span> Добавить </button>
            </div>
        </div>
    </fieldset>




</sf:form>
</div>






    <%--<fieldset>--%>
        <%--<table align="center" style="margin-top: 100px">--%>
            <%--<h2 align="center" style="margin-top: 100px"> Подать бесплатное объявление</h2>--%>
            <%--<tr>--%>
                <%--<th>Заголовок*</th>--%>
                <%--<td><sf:input path="name"/></td>--%>
                <%--<td><sf:errors path="name"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th>Цена*</th>--%>
                <%--<td><sf:input path="price"/></td>--%>
                <%--<td><sf:errors path="price"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th>Описание*</th>--%>
                <%--<td><sf:input path="text"/></td>--%>
                <%--<td><sf:errors path="text"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th>Состояние*</th>--%>
                <%--<td><sf:input path="stanProducta"/></td>--%>
                <%--<td><sf:errors path="stanProducta"/></td>--%>
                <%--<td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th>Контактное лицо*</th>--%>
                <%--<td><sf:input path="nameUser" value="${user.name}"/></td>--%>
                <%--<td><sf:errors path="nameUser"/></td>--%>
                <%--<td>--%>
            <%--</tr>--%>
            <%--<th>Email-адрес*</th>--%>
            <%--<td><sf:input readonly="true" path="email" value="${user.email}"/></td>--%>
            <%--<td><sf:errors path="email"/>--%>
            <%--</td>--%>
            <%--<tr>--%>
                <%--<th>Номер телефона*</th>--%>
                <%--<td><sf:input path="telephonNamber" value="${user.telephon_namber}"/></td>--%>
                <%--<td><sf:errors path="telephonNamber"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th>Skype:</th>--%>
                <%--<td><sf:input path="skype"/></td>--%>
                <%--<td><sf:errors path="skype"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th>Розташування:</th>--%>
                <%--<td>--%>
                    <%--<div id="regionDiv">--%>
                        <%--<select id="option" name = "IdRegion">--%>
                            <%--<option value="Виберете Область">-Виберете Область-</option>--%>
                            <%--<c:forEach var="regionModel" items="${regionModel}">--%>
                                <%--<option value="${regionModel.id}">${regionModel.name}</option>--%>
                            <%--</c:forEach>--%>
                        <%--</select>--%>
                        <%--<br>--%>
                        <%--<div id="selectCit"></div>--%>
                        <%--<div id="selectCity"></div>--%>
                            <%--&lt;%&ndash;<div id="selectId"></div>&ndash;%&gt;--%>
                    <%--</div>--%>
                <%--</td>--%>

                <%--<th>Категория:</th>--%>
                <%--<td>--%>
                    <%--<div id="categoryDiv">--%>
                        <%--<select id="option1" name = "IdCategory">--%>
                            <%--<option value="Виберете Категорию">-Виберете Категорию-</option>--%>
                            <%--<c:forEach var="categoryModel" items="${categoryModel}">--%>
                                <%--<option value="${categoryModel.id}">${categoryModel.categoryName}</option>--%>
                            <%--</c:forEach>--%>
                        <%--</select>--%>
                        <%--<br>--%>
                        <%--<div id="selectPidCat"></div>--%>
                        <%--<div id="selectPidCategory"></div>--%>
                    <%--</div>--%>
                <%--</td>--%>
            <%--<tr>--%>
                <%--<td align="right"><input type="submit" value="Добавить"/></td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</fieldset>--%>
<%--</sf:form>--%>

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






<%--<security:authorize access="isAuthenticated() and principal.username=='${user.id}'">--%>
    <%--&lt;%&ndash;Це буде бачити користувач який є власником сторінки&ndash;%&gt;--%>
<%--</security:authorize>--%>

<%--<security:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">--%>
    <%--&lt;%&ndash;Це буде бачити тільки адмін&ndash;%&gt;--%>
<%--</security:authorize>--%>

<%--<security:authorize access="!isAuthenticated()">--%>
    <%--&lt;%&ndash;Це буде бачити користувач який не залогінився&ndash;%&gt;--%>
<%--</security:authorize>--%>




</body>

<script src="/resources/fileForMySyte/js/jquery.js"></script>
<script src="/resources/fileForMySyte/js/bootstrap.min.js"></script>
<script src="/resources/fileForMySyte/js/addProduct.js"></script>

</html>