<%-- 
    Document   : header
    Created on : Dec 6, 2016, 8:53:44 PM
    Author     : q
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>N-Air a E-commerce category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <meta charset utf="8">
        <!--fonts-->
        <link href='//fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>

        <!--fonts-->
        <!--bootstrap-->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!--coustom css-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--shop-kart-js-->
        <script src="js/simpleCart.min.js"></script>
        <!--default-js-->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!--bootstrap-js-->
        <script src="js/bootstrap.min.js"></script>
        <!--script-->
        <!-- FlexSlider -->
        <script src="js/imagezoom.js"></script>
        <script defer src="js/jquery.flexslider.js"></script>
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

        <script>
            // Can also be used with $(document).ready()
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    controlNav: "thumbnails"
                });
            });
        </script>
        <!-- //FlexSlider-->
    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="header-top">
                    <div class="logo">
                        <a href="index.jsp">Jw-Shop</a>
                    </div>
                    <div class="login-bars">
                        <a class="btn btn-default log-bar" href="register.jsp" role="button">Sign up</a>
                        <a class="btn btn-default log-bar" href="signup.jsp" role="button">Login</a>
                        <div class="cart box_1">
                            <a href="checkout.jsp">
                                <h3>
                                    <div class="total">
                                        <span class="simpleCart_total"></span>(<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div></h3>
                            </a>
                            <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                            <div class="clearfix"> </div>
                        </div>	
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!---menu-----bar--->
                <div class="header-botom">
                    <div class="content white">
                        <nav class="navbar navbar-default nav-menu" role="navigation">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <!--/.navbar-header-->

                            <div class="collapse navbar-collapse collapse-pdng" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav nav-font">
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shop<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="products.jsp">Shoes</a></li>
                                            <li><a href="products.jsp">Tees</a></li>
                                            <li><a href="products.jsp">Tops</a></li>
                                            <li class="divider"></li>
                                            <li><a href="products.jsp">Tracks</a></li>
                                            <li class="divider"></li>
                                            <li><a href="products.jsp">Gear</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men<b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="col-sm-4 menu-img-pad">
                                                    <ul class="multi-column-dropdown">
                                                        <li><a href="products.jsp">Joggers</a></li>
                                                        <li><a href="products.jsp">Foot Ball</a></li>
                                                        <li><a href="products.jsp">Cricket</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="products.jsp">Tennis</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="products.jsp">Casual</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-4 menu-img-pad">
                                                    <a href="#"><img src="images/menu1.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                                                </div>
                                                <div class="col-sm-4 menu-img-pad">
                                                    <a href="#"><img src="images/menu2.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Women<b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-2">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <ul class="multi-column-dropdown">
                                                        <li><a href="products.jsp">Tops</a></li>
                                                        <li><a href="products.jsp">Bottoms</a></li>
                                                        <li><a href="products.jsp">Yoga Pants</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="products.jsp">Sports</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="products.jsp">Gym</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-6">
                                                    <a href="#"><img src="images/menu3.jpg" alt="/" class="img-rsponsive men-img-wid" /></a>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">kids<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="products.jsp">Tees</a></li>
                                            <li><a href="products.jsp">Shorts</a></li>
                                            <li><a href="products.jsp">Gear</a></li>
                                            <li class="divider"></li>
                                            <li><a href="products.jsp">Watches</a></li>
                                            <li class="divider"></li>
                                            <li><a href="products.jsp">Shoes</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.jsp">Catch</a></li>
                                    <div class="clearfix"></div>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <!--/.navbar-collapse-->
                            <div class="clearfix"></div>
                        </nav>
                        <!--/.navbar-->   
                        <div class="clearfix"></div>
                    </div>
                    <!--/.content--->
                </div>
                <!--header-bottom-->
            </div>
        </div>
        
    </body>
</html>
