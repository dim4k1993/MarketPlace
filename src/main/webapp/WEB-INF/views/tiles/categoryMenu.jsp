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

    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/menuHeader-stile.css" rel="stylesheet">
    <link href="/resources/css/Search-style.css" rel="stylesheet">
</head>

<body>
<div class="container menu-nav">
    <form class="syteLogo">
        <a href="#"><img src="/resources/img/syteLogo/SyteLogo.png" height="90px" width=""></a>
    </form>
    <section class="marginOfHeader  hidden-sm hidden-xs">

        <form method="get" action="?">
            <input type="text" placeholder="
а чого шукаєш ти?
" />
            <ul class="suggestions"></ul>
            <button type="submit">
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
                                <li class="dropdown-header">категории раздела</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70089/mQ7HxLocaro.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>
                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70092/ynn4MQOq0Ok.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>
                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/7009b/qQ6wtV1Weyk.jpg" class="img-responsive" alt="product 3"></a>
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



                    <a href="###" class="dropdown-toggle colormenu" data-toggle="dropdown">Ноутбуки/ПК и планшеты<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <li class="dropdown-header">категории раздела</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70089/mQ7HxLocaro.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70092/ynn4MQOq0Ok.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/7009b/qQ6wtV1Weyk.jpg" class="img-responsive" alt="product 3"></a>
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



                    <a href="###" class="dropdown-toggle colormenu" data-toggle="dropdown">Техника<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <li class="dropdown-header">категории раздела</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70089/mQ7HxLocaro.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70092/ynn4MQOq0Ok.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/7009b/qQ6wtV1Weyk.jpg" class="img-responsive" alt="product 3"></a>
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



                    <a href="###" class="dropdown-toggle colormenu" data-toggle="dropdown">Спорт/здоровье<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <li class="dropdown-header">категории раздела</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70089/mQ7HxLocaro.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70092/ynn4MQOq0Ok.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/7009b/qQ6wtV1Weyk.jpg" class="img-responsive" alt="product 3"></a>
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



                    <a href="###" class="dropdown-toggle colormenu" data-toggle="dropdown">Мода/красота<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <li class="dropdown-header">категории раздела</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70089/mQ7HxLocaro.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70092/ynn4MQOq0Ok.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/7009b/qQ6wtV1Weyk.jpg" class="img-responsive" alt="product 3"></a>
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



                    <a href="###" class="dropdown-toggle colormenu" data-toggle="dropdown">Дом<span class="caret"></span></a>
                    <ul class="dropdown-menu mega-dropdown-menu">
                        <li class="col-sm-3 categoruPid">
                            <ul>
                                <li class="dropdown-header">категории раздела</li>
                                <li><a href="#">Auto Carousel</a></li>
                                <li><a href="#">Carousel Control</a></li>
                                <li><a href="#">Left & Right Navigation</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li><a href="#">Four Columns Grid</a></li>
                                <li><a href="#">Navbar Inverse</a></li>
                                <li><a href="#">Pull Right Elements</a></li>
                                <li><a href="#">Coloured Headers</a></li>
                                <li><a href="#">Primary Buttons & Default</a></li>
                                <li class="divider"></li>

                            </ul>
                        </li>

                        <li class="col-sm-3 ">
                            <ul>
                                <li class="dropdown-header caruselWight hidden-xs">Навинки в породаже</li>
                                <div id="womenCollection" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner caruselqq hidden-xs">
                                        <div class="item active">


                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70089/mQ7HxLocaro.jpg" class="img-responsive" alt="product 1"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/70092/ynn4MQOq0Ok.jpg" class="img-responsive" alt="product 2"></a>
                                        </div>

                                        <!-- End Item -->
                                        <div class="item">
                                            <a href="#"><img src="https://pp.vk.me/c628731/v628731700/7009b/qQ6wtV1Weyk.jpg" class="img-responsive" alt="product 3"></a>
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


<%--<script src="/resources/js/menuHeader.js"></script>--%>
<%--<script src="/resources/js/jquery.js"></script>--%>
<%--<script src="/resources/js/bootstrap.min.js"></script>--%>
</html>
