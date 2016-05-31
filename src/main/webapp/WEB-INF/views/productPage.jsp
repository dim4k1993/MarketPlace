<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <link href="/resources/fileForMySyte/css/cssProduct/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/cssProduct/productPege-style.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/cssProduct/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/cssProduct/price-range.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/cssProduct/animate.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/cssProduct/main.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/cssProduct/responsive.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/cssProduct/comments.css" rel="stylesheet">

    <script src="/resources/fileForMySyte/js/jsProduct/jquery.js"></script>



</head>
<body>
<%--<security:authorize--%>
        <%--access="isAuthenticated() and hasRole('ROLE_ADMIN')">--%>
    <%--<h1>Це буде бачити тільки адмін</h1>--%>
    <%--&lt;%&ndash;Це буде бачити тільки адмін&ndash;%&gt;--%>
<%--</security:authorize>--%>
<%--<security:authorize access="!isAuthenticated()">--%>
    <%--&lt;%&ndash;Це буде бачити користувач який не залогінився&ndash;%&gt;--%>
    <%--<h1>Це буде бачити користувач який не залогінився</h1>--%>
<%--</security:authorize>--%>
<%--<security:authorize--%>
        <%--access="isAuthenticated() and principal.username!='${product.user.id}' and !hasRole('ROLE_ADMIN')">--%>
    <%--&lt;%&ndash;Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін&ndash;%&gt;--%>
    <%--<h1>Це буде бачити користувач який залогінився він не являється власником сторінки і він не адмін</h1>--%>
<%--</security:authorize>--%>
<%--<security:authorize--%>
        <%--access="isAuthenticated() and principal.username=='${product.user.id}'">--%>
    <%--&lt;%&ndash;Це буде бачити користувач який є власником сторінки&ndash;%&gt;--%>
    <%--<h1>Це буде бачити користувач який є власником сторінки</h1>--%>

<%--</security:authorize>--%>


<hr>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Категории</h2>
                    <div class="panel-group category-products" id="accordian">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#phone">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-plus"></i></span>-->
                                        Телефоны/смартфоны</a>
                                </h4>
                            </div>
                            <div id="phone" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Apple iPhone </a></li>
                                        <li><a href="">Lenovo </a></li>
                                        <li><a href="">Samsung </a></li>
                                        <li><a href="">Nokia, Microsoft</a></li>
                                        <li><a href="">HTC </a></li>
                                        <li><a href="">Motorola </a></li>
                                        <li><a href="">LG </a></li>
                                        <li><a href="">Sony, Sony Ericsson </a></li>
                                        <li><a href="">Asus </a></li>
                                        <li><a href="">Чехлы, бампера </a></li>
                                        <li><a href="">Пленки для экранов </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#leptop">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-plus"></i></span>-->
                                        Ноутбуки
                                    </a>
                                </h4>
                            </div>
                            <div id="leptop" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">HP</a></li>
                                        <li><a href="">Lenovo</a></li>
                                        <li><a href="">Asus</a></li>
                                        <li><a href="">Acer</a></li>
                                        <li><a href="">Samsung</a></li>
                                        <li><a href="">Apple</a></li>
                                        <li><a href="">Sony</a></li>
                                        <li><a href="">Чехлы, сумки</a></li>
                                        <li><a href="">Зарядные устройства, кабели</a></li>
                                        <li><a href="">Защитные пленки, наклейки</a></li>
                                        <li><a href="">Комплектующие</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#planshet">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Планшеты
                                    </a>
                                </h4>
                            </div>
                            <div id="planshet" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">iPad</a></li>
                                        <li><a href="">Lenovo</a></li>
                                        <li><a href="">Samsung</a></li>
                                        <li><a href="">Sony</a></li>
                                        <li><a href="">Чехлы</a></li>
                                        <li><a href="">Защитные пленки, наклейки</a></li>
                                        <li><a href="">Комплектующие</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#texnika">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Бытовая техника
                                    </a>
                                </h4>
                            </div>
                            <div id="texnika" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Кондиционеры</a></li>
                                        <li><a href="">Техника для кухни</a></li>
                                        <li><a href="">Техника для дома</a></li>
                                        <li><a href="">Крупная бытовая техника</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#tvVideo">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        ТВ, Видео
                                    </a>
                                </h4>
                            </div>
                            <div id="tvVideo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Телевизоры</a></li>
                                        <li><a href="">Спутниковое оборудование</a></li>
                                        <li><a href="">Проекторы</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#audio">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Аудио, Радио
                                    </a>
                                </h4>
                            </div>
                            <div id="audio" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Наушники</a></li>
                                        <li><a href="">Акустические системы, колонки</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#turizm">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Всё для отдыха и туризма
                                    </a>
                                </h4>
                            </div>
                            <div id="turizm" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Фонари, фонарики</a></li>
                                        <li><a href="">Рюкзаки</a></li>
                                        <li><a href="">Палатки</a></li>
                                        <li><a href="">Ножи, мультитулы</a></li>
                                        <li><a href="">Металлоискатели</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#sport">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Спортинвентарь
                                    </a>
                                </h4>
                            </div>
                            <div id="sport" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Гантели, гири, штанги</a></li>
                                        <li><a href="">Ролики, скейты</a></li>
                                        <li><a href="">Фитнес и йога</a></li>
                                        <li><a href="">Тренажеры</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>



                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#moda">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Одежда, Обувь, Аксессуары
                                    </a>
                                </h4>
                            </div>
                            <div id="moda" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Женская обувь</a></li>
                                        <li><a href="">Женская одежда</a></li>
                                        <li><a href="">Мужская обувь</a></li>
                                        <li><a href="">Мужская одежда</a></li>
                                        <li><a href="">Джинсы</a></li>
                                        <li><a href="">Кроссовки</a></li>
                                        <li><a href="">Рюкзаки</a></li>
                                        <li><a href="">Сумки</a></li>
                                        <li><a href="">Галантерея и аксессуары</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>



                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#parfum">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Косметика и Парфюмерия
                                    </a>
                                </h4>
                            </div>
                            <div id="parfum" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Парфюмерия</a></li>
                                        <li><a href="">Всё для ногтей</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#dom">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Всё для ремонта
                                    </a>
                                </h4>
                            </div>
                            <div id="dom" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Электроинструменты</a></li>
                                        <li><a href="">Ручной инструмент</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#interer">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Дом, интерьер
                                    </a>
                                </h4>
                            </div>
                            <div id="interer" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Мебель</a></li>
                                        <li><a href="">Кресла</a></li>
                                        <li><a href="">Хозяйственные товары</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>



                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#dacha">
                                        <!--											<span class="badge pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span>-->
                                        Дача, сад, огород
                                    </a>
                                </h4>
                            </div>
                            <div id="dacha" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="">Садовый инструмент</a></li>
                                        <li><a href="">Садовая мебель, шатры, </a></li>
                                        <li><a href="">Беседки</a></li>
                                        <li><a href="">Котлы</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Велосипеды и аксессуары</a></h4>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Рыболовство</a></h4>
                            </div>
                        </div>



                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Спортивное питание</a></h4>
                            </div>
                        </div>

                    </div><!--/category-products-->

                    <!--
                                            <div class="brands_products">
                                                <h2>Brands</h2>
                                                <div class="brands-name">
                                                    <ul class="nav nav-pills nav-stacked">
                                                        <li><a href=""> <span class="pull-right">(50)</span>Acne</a></li>
                                                        <li><a href=""> <span class="pull-right">(56)</span>Grüne Erde</a></li>
                                                        <li><a href=""> <span class="pull-right">(27)</span>Albiro</a></li>
                                                        <li><a href=""> <span class="pull-right">(32)</span>Ronhill</a></li>
                                                        <li><a href=""> <span class="pull-right">(5)</span>Oddmolly</a></li>
                                                        <li><a href=""> <span class="pull-right">(9)</span>Boudestijn</a></li>
                                                        <li><a href=""> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                    -->

                    <div class="price-range">
                        <h2>ЦЕНОВОЙ ДИАПАЗОН</h2>
                        <div class="well">
                            <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="5000" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                            <b>0 грн</b> <b class="pull-right">5000 грн</b>
                        </div>
                    </div>

                    <div class="shipping text-center">
                        <img src="/resources/fileForMySyte/img/Reklama/zheReklama.jpg" width="260" alt="" />
                    </div>

                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="product-details"><!--product-details-->
                    <div class="col-sm-5">



                        <div class="wrapper">

                            <!-- Product Images & Alternates -->
                            <div class="product-images">
                                <!-- Begin Product Images Slider -->
                                <div class="main-img-slider photo-barder">
                                    <c:forEach var="productPhoto" varStatus="vs" items="${product.productPhotos}">
                                    <figure>
                                            <a href="${product.productPhotos.get(vs.index).fotoName}" class="testA " data-size="1000x800">
                                                <img class="testImg" id="imgId" src="${product.productPhotos.get(vs.index).fotoName}"/>
                                            </a>
                                    </figure>
                                    </c:forEach>
                                </div>

                                <ul class="thumb-nav ">
                                <c:forEach var="productPhoto" varStatus="vsPid" items="${product.productPhotos}">
                                        <li><img src="${product.productPhotos.get(vsPid.index).fotoName}" /></li>
                                </c:forEach>
                                </ul>
                            </div>


                            <!-- Begin Product Image Zoom -->
                            <!--
                            This should live at bottom of page before closing body tag
                            So that it renders on top of all page elements.
                            -->

                            <!-- Root element of PhotoSwipe. Must have class pswp. -->
                            <div class="pswp " tabindex="-1" role="dialog" aria-hidden="true">

                                <!-- Background of PhotoSwipe.
                                     It's a separate element, as animating opacity is faster than rgba(). -->
                                <div class="pswp__bg"></div>

                                <!-- Slides wrapper with overflow:hidden. -->
                                <div class="pswp__scroll-wrap">

                                    <!-- Container that holds slides. PhotoSwipe keeps only 3 slides in DOM to save memory. -->
                                    <div class="pswp__container">
                                        <!-- don't modify these 3 pswp__item elements, data is added later on -->
                                        <div class="pswp__item"></div>
                                        <div class="pswp__item"></div>
                                        <div class="pswp__item"></div>
                                    </div>

                                    <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
                                    <div class="pswp__ui pswp__ui--hidden">

                                        <div class="pswp__top-bar">

                                            <!--  Controls are self-explanatory. Order can be changed. -->

                                            <div class="pswp__counter"></div>

                                            <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                                            <button class="pswp__button pswp__button--share" title="Share"></button>

                                            <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                                            <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                                            <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                                            <!-- element will get class pswp__preloader--active when preloader is running -->
                                            <div class="pswp__preloader">
                                                <div class="pswp__preloader__icn">
                                                    <div class="pswp__preloader__cut">
                                                        <div class="pswp__preloader__donut"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                                            <div class="pswp__share-tooltip"></div>
                                        </div>

                                        <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                                        </button>

                                        <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                                        </button>
                                        <div class="pswp__caption">
                                            <div class="pswp__caption__center"></div>
                                        </div>
                                    </div>
                                </div>

                            </div>


                        </div>



                    </div>
                    <div class="col-sm-7">
                        <div class="product-information"><!--/product-information-->
                            <h2>${product.name} </h2>
                            <p>Web ID: ${product.id}</p>
								<span>
									<span class="priceColor">${product.price} ГРН</span>
									<button type="button" class="btn btn-fefault cart writeColor">
								    <i class="glyphicon glyphicon-pencil"></i> Написать автору
									</button>
								</span>
                            <p><b>Тип товару:</b> ${product.pidCategory.category.categoryName} ${product.pidCategory.name}</p>
                            <p><b>Стан:</b> ${product.stanProducta}</p>
                            <hr>
                            <p><i class="glyphicon glyphicon-user"></i><b> Автор:</b>${product.user.name} </p>
                            <p><i class="glyphicon glyphicon-globe"></i><b> Местоположение:</b>${product.city.name}</p>
                            <p><i class="glyphicon glyphicon-earphone"></i><b> Телефон:</b> ${product.telephonNamber}</p>
                            <p><b> Skype:</b> ${product.skype}</p>



                        </div><!--/product-information-->
                    </div>
                </div><!--/product-details-->

                <div class="category-tab shop-details-tab "><!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs ">
                            <li class="active "><a href="#details" data-toggle="tab">O Продукте</a></li>
                            <li> <a href="#reviews" data-toggle="tab">Оставить комментарий</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in" id="details" >
                            <div class="col-sm-12">

                                <p>${product.text}</p>

                            </div>
                        </div>
                        <div class="tab-pane fade " id="reviews" >
                            <div class="col-sm-12">
                        <div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">
                            <!-- From -->
                            <div class="comment-form">

                                <form class="form" name="form" ng-submit="form.$valid && cmntCtrl.addComment()" novalidate>
                                    <div class="form-row">
                                        <textarea class="input-Comments"
                                            ng-model="cmntCtrl.comment.text"
                                            placeholder="Добавить коментарий..."
                                            required>
                                        </textarea>
                                    </div>

                                    <div class="form-row">
                                        <input
                                                class="input-Comments"
                                                ng-class="{ disabled: cmntCtrl.comment.anonymous }"
                                                ng-disabled="cmntCtrl.comment.anonymous"
                                                ng-model="cmntCtrl.comment.author"
                                                ng-required="!cmntCtrl.comment.anonymous"
                                                placeholder="Введите Email"
                                                type="email">
                                    </div>

                                    <div class="form-row text-right">
                                        <input
                                                id="comment-anonymous"
                                                ng-change="cmntCtrl.anonymousChanged()"
                                                ng-model="cmntCtrl.comment.anonymous"
                                                type="checkbox">
                                        <label for="comment-anonymous">Аноним</label>
                                    </div>

                                    <div class="form-row">
                                        <input class="addcomments" type="submit" value="Добавить">
                                    </div>
                                </form>
                            </div>

                            <!-- Comments List -->
                            <div class="comments">
                                <!-- Comment -->
                                <div class="comment" ng-repeat="comment in cmntCtrl.comments | orderBy: '-date'">
                                    <!-- Comment Avatar -->
                                    <div class="comment-avatar">
                                        <img ng-src="{{ comment.avatarSrc }}">
                                    </div>

                                    <!-- Comment Box -->
                                    <div class="comment-box">
                                        <div class="comment-text">{{ comment.text }}</div>
                                        <div class="comment-footer">
                                            <div class="comment-info">
            <span class="comment-author">
              <em ng-if="comment.anonymous">Аноним</em>
              <a ng-if="!comment.anonymous" href="{{ comment.author }}">{{ comment.author }}</a>
            </span>
                                                <span class="comment-date">{{ comment.date | date: 'medium' }}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            </div>
                        </div>

                    </div>
                </div><!--/category-tab-->

                <div class="recommended_items"><!--recommended_items-->
                    <h2 class="title text-center">Рекомендуемые </h2>

                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="http://s.appleinsider.ru/2016/03/maxresdefault-7.jpg" alt="" />
                                                <h2>56грн</h2>
                                                <p>Имя продукта</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Открыть</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="https://akket.com/wp-content/uploads/2015/12/iPhone-4s-iPhone-5-iPhone-5s-iOS-9.2-iOS-9-iOS-9.2.1-beta-2.jpg" alt="" />
                                                <h2>56грн</h2>
                                                <p>Имя продукта</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Открыть</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="http://www.mforum.ru/cmsbin/2012/39/iz-ip5/box2_full640x480.jpg" alt="" />
                                                <h2>56грн</h2>
                                                <p>Имя продукта</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Открыть</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR_vtiXlNgNuPeGDGcVzPGtUM1W9mdFpA_auD1BgC8Qz53RF9Bp" alt="" />
                                                <h2>56грн</h2>
                                                <p>Имя продукта</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Открыть</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQMBnKljcFdI5zyiPfiHbiqtnKsJDO4GTkyimjLLTeI03VRUCvw" alt="" />
                                                <h2>56грн</h2>
                                                <p>Имя продукта</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Открыть</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ8XULz_aMulfMwSH2LpwOrbJQ1XjS3om6xHX2-7WIBMyrursEN" alt="" />
                                                <h2>56грн</h2>
                                                <p>Имя продукта</p>
                                                <button type="button" class="btn btn-default add-to-cart"><i class="glyphicon glyphicon-shopping-cart"></i>Открыть</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                            <i class="glyphicon glyphicon-chevron-left"></i>
                        </a>
                        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                            <i class="glyphicon glyphicon-chevron-right"></i>
                        </a>
                    </div>
                </div><!--/recommended_items-->

            </div>
        </div>
    </div>
</section>






</body>

<%--<script>--%>
    <%--$(document).ready(function () {--%>
        <%--$('.testImg').click(function () {--%>
            <%--var img = document.getElementById('imgId').getAttribute('src');--%>
            <%--var imgO = new Image();--%>
            <%--imgO.src = "http://localhost:8080/resources/fileForMySyte/default/no-image.png";--%>
            <%--var size = imgO.width+"x"+imgO.height;--%>
            <%--alert(size);--%>
            <%--$('.testA').attr('data-size',size);--%>
        <%--})--%>
    <%--});--%>
<%--</script>--%>


<script src='http://kenwheeler.github.io/slick/slick/slick.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.14/angular.min.js'></script>

<script src="/resources/fileForMySyte/js/jsProduct/index.js"></script>
<script src="/resources/fileForMySyte/js/jsProduct/bootstrap.min.js"></script>
<script src="/resources/fileForMySyte/js/jsProduct/price-range.js"></script>
<script src="/resources/fileForMySyte/js/jsProduct/jquery.prettyPhoto.js"></script>
<script src="/resources/fileForMySyte/js/jsProduct/main.js"></script>
<script src="/resources/fileForMySyte/js/jsProduct/comments.js"></script>


</html>