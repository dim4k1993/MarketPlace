<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="/resources/fileForMySyte/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/menuHeader-stile.css" rel="stylesheet">
    <link href="/resources/fileForMySyte/css/Search-style.css" rel="stylesheet">
</head>

<body>
<div class="container menu-nav">
    <form class="syteLogo">
        <a href="/"><img src="/resources/fileForMySyte/img/syteLogo/SyteLogo.png" height="90px" width=""></a>
    </form>
    <section class="marginOfHeader  hidden-sm hidden-xs">

        <form method="get" action="?">
            <input class="Search" type="text" placeholder="а чого шукаєш ти?" />
            <ul class="suggestions"></ul>
            <button class="buttonSkrech" type="submit">
                <i class="glyphicon glyphicon-search"></i>
            </button>
        </form>
    </section>
</div>





<div class="container">
    <nav class="navbar navbar-inverse navigation_menu">
        <div class="navbar-header">
            <button class="navbar-toggle battonmenu" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand  hidden-lg hidden-md hidden-sm colormenu" href="#">Категории</a>
        </div>
        <div class="collapse navbar-collapse js-navbar-collapse">

            <ul class="nav navbar-nav ">


                <li class="dropdown mega-dropdown">



                    <a href="###" class="dropdown-toggle colormenu" data-toggle="dropdown">Телефоны/смартфоны<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <a href="#"><li class="dropdown-header">Телефоны,смартфоны</li></a>
                                <li><a href="#">Apple iPhone</a></li>
                                <li><a href="#">Lenovo</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Nokia, Microsoft</a></li>
                                <li><a href="#">HTC</a></li>
                                <li><a href="#">Motorola</a></li>
                                <li><a href="#">LG</a></li>
                                <li><a href="#">Sony, Sony Ericsson</a></li>
                                <li><a href="#">Asus</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Аксессуары и комплектующие</li></a>
                                <li><a href="#">Чехлы, бампера</a></li>
                                <li><a href="#">Пленки для экранов</a></li>
                                <li class="divider"></li>
                                <li><a href="#">все категории в разделе</a></li>
                                <li class="divider"></li>
                                <c:forEach var="category" items="${categorys}">
                                <li><a href="${url}"><c:url value="pidCategory${category.categoryName}" var="url"/> ${category.getCategoryName()}</a></li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>
                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu1.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>
                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu2.jpg" class="img-responsive" alt="product 3"></a>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav ">


                <li class="dropdown mega-dropdown">



                    <a href="" class="dropdown-toggle colormenu" data-toggle="dropdown">Ноутбуки/ПК и планшеты<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <a href="#"><li class="dropdown-header">Ноутбуки</li></a>
                                <li><a href="#">HP</a></li>
                                <li><a href="#">Lenovo </a></li>
                                <li><a href="#">Asus</a></li>
                                <li><a href="#">Acer</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Apple</a></li>
                                <li><a href="#">Sony</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Планшеты</li></a>
                                <li><a href="#">iPad</a></li>
                                <li><a href="#">Lenovo</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Sony</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Аксессуары и комплектующие</li></a>
                                <li><a href="#">Чехлы, сумки</a></li>
                                <li><a href="#">Зарядные устройства, кабели</a></li>
                                <li><a href="#">Защитные пленки, наклейки</a></li>
                                <li><a href="#">Комплектующие</a></li>
                                <li class="divider"></li>
                                <li><a href="#">все категории в разделе</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu1.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu2.jpg" class="img-responsive" alt="product 3"></a>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav ">


                <li class="dropdown mega-dropdown">



                    <a href="" class="dropdown-toggle colormenu" data-toggle="dropdown">Техника<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <a href="#"><li class="dropdown-header">Бытовая техника</li></a>
                                <li><a href="#">Кондиционеры</a></li>
                                <li><a href="#">Техника для кухни</a></li>
                                <li><a href="#">Техника для дома</a></li>
                                <li><a href="#">Крупная бытовая техника</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">ТВ, Видео</li></a>
                                <li><a href="#">Телевизоры</a></li>
                                <li><a href="#">Спутниковое оборудование</a></li>
                                <li><a href="#">Проекторы</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Аудио, Радио</li></a>
                                <li><a href="#">Наушники</a></li>
                                <li><a href="#">Акустические системы, колонки</a></li>
                                <li class="divider"></li>
                                <li><a href="#">все категории в разделе</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div  class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu1.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu2.jpg" class="img-responsive" alt="product 3"></a>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav ">


                <li class="dropdown mega-dropdown">



                    <a href="" class="dropdown-toggle colormenu" data-toggle="dropdown">Спорт/здоровье<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <a href="#"><li class="dropdown-header">Велосипеды и аксессуары</li></a>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Всё для отдыха и туризма</li></a>
                                <li><a href="#">Фонари, фонарики</a></li>
                                <li><a href="#">Рюкзаки</a></li>
                                <li><a href="#">Палатки</a></li>
                                <li><a href="#">Ножи, мультитулы</a></li>
                                <li><a href="#">Металлоискатели</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Рыболовство</li></a>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Спортинвентарь</li></a>
                                <li><a href="#">Гантели, гири, штанги</a></li>
                                <li><a href="#">Ролики, скейты</a></li>
                                <li><a href="#">Фитнес и йога</a></li>
                                <li><a href="#">Тренажеры</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Спортивное питание</li></a>
                                <li class="divider"></li>
                                <li><a href="#">все категории в разделе</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div  class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu1.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu2.jpg" class="img-responsive" alt="product 3"></a>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav ">


                <li class="dropdown mega-dropdown">



                    <a href="" class="dropdown-toggle colormenu" data-toggle="dropdown">Мода/красота<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <a href="#"><li class="dropdown-header">Одежда, Обувь, Аксессуары</li></a>
                                <li><a href="#">Женская обувь</a></li>
                                <li><a href="#">Женская одежда</a></li>
                                <li><a href="#">Мужская обувь</a></li>
                                <li><a href="#">Мужская одежда</a></li>
                                <li><a href="#">Джинсы</a></li>
                                <li><a href="#">Кроссовки</a></li>
                                <li><a href="#">Рюкзаки</a></li>
                                <li><a href="#">Сумки</a></li>
                                <li><a href="#">Галантерея и аксессуары</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Косметика и Парфюмерия</li></a>
                                <li><a href="#">Парфюмерия</a></li>
                                <li><a href="#">Всё для ногтей</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Часы и аксессуары</li></a>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Ювелирные изделия, Бижутерия</li></a>
                                <li class="divider"></li>
                                <li><a href="#">все категории в разделе</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div  class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu1.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu2.jpg" class="img-responsive" alt="product 3"></a>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav ">


                <li class="dropdown mega-dropdown">



                    <a href="" class="dropdown-toggle colormenu" data-toggle="dropdown">Дом<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <a href="#"><li class="dropdown-header">Всё для ремонта, инструменты</li></a>
                                <li><a href="#">Электроинструменты</a></li>
                                <li><a href="#">Ручной инструмент</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Дом, интерьер</li></a>
                                <li><a href="#">Мебель</a></li>
                                <li><a href="#">Кресла</a></li>
                                <li><a href="#">Хозяйственные товары</a></li>
                                <li class="divider"></li>
                                <a href="#"><li class="dropdown-header">Дача, сад, огород</li></a>
                                <li><a href="#">Садовый инструмент</a></li>
                                <li><a href="#">Садовая мебель, шатры, беседки</a></li>
                                <li><a href="#">Котлы</a></li>
                                <li class="divider"></li>
                                <li><a href="#">все категории в разделе</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu1.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="/resources/fileForMySyte/img/carucelPhotoHeaderMenu/carucelPhotoHeaderMenu2.jpg" class="img-responsive" alt="product 3"></a>
                                        </div>
                                    </div>
                                </div>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</div>

</body>



</html>
