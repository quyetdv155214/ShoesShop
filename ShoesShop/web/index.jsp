<jsp:include page="header.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pager" uri="/tlds/customtags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Product"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>N-Air a E-commerce category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
    </head>
    <body>
        <div class="header-end">
            <div class="container">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    Indicators 
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    Wrapper for slides 
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="./images/shoe3.jpg" alt="...">
                            <div class="carousel-caption car-re-posn">
                                <h3>AirMax</h3>
                                <h4>You feel to fall</h4>
                                <span class="color-bar"></span>
                            </div>
                        </div>
                        <div class="item">
                            <img src="./images/shoe1.jpg" alt="...">
                            <div class="carousel-caption car-re-posn">
                                <h3>AirMax</h3>
                                <h4>You feel to fall</h4>
                                <span class="color-bar"></span>
                            </div>
                        </div>
                        <div class="item">
                            <img src="./images/shoe2.jpg" alt="...">
                            <div class="carousel-caption car-re-posn">
                                <h3>AirMax</h3>
                                <h4>You feel to fall</h4>
                                <span class="color-bar"></span>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left car-icn" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right car-icn" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="feel-fall">
            <div class="container">
                <div class="pull-left fal-box">
                    <div class=" fall-left">
                        <h3>Fall</h3>
                        <img src="images/f-l.png" alt="/" class="img-responsive fl-img-wid">
                        <p>Inspiration and innovation<br> for every athlete in the world</p>
                        <span class="fel-fal-bar"></span>
                    </div>
                </div>
                <div class="pull-right fel-box">
                    <div class="feel-right">
                        <h3>Feel</h3>
                        <img src="images/f-r.png" alt="/" class="img-responsive fl-img-wid">
                        <p>Inspiration and innovation<br> for every athlete in the world</p>
                        <span class="fel-fal-bar2"></span>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="shop-grid">
            <div class="container">
                <c:forEach items="${requestScope.products}" var="product" varStatus="loop">
                    <div class="col-md-4 grid-stn simpleCart_shelfItem">
                        <!-- normal -->
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                                <div class="img"><img src="${product.url}" alt="/" class="img-responsive gri-wid"></div>
                                <div class="info">
                                    <div>
                                        ${product.productName}
                                    </div>
                                    <div>
                                        <p>
                                            <a href="#" class="item_add">
                                                <span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> 
                                                <span class=" item_price">${product.price}</span>
                                            </a>
                                        </p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>                                    
                            </div>
                        </div>
                        <!-- end normal -->
                        <div class="quick-view">
                            <form action="singleView" method="post" id="single${product.productID}">
                                <input type="hidden" name="productId" value="${product.productID}">
                            </form>
                            <a href="javascript:{}" onclick="document.getElementById('single${product.productID}').submit(); return false;">Quick view</a>
                        </div>
                    </div>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="text-center">
            <pager:Pagger totalPage="${requestScope.pageCount}" 
                          pageIndex="${requestScope.pageIndex}" 
                          step="2" 
                          href="index?page="
                          kind=""/>
        </div>
        <div class="sub-news">
            <div class="container">
                <form>
                    <h3>NewsLetter</h3>
                    <input type="text" class="sub-email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                this.value = 'Email';
                            }">
                    <a class="btn btn-default subs-btn" href="#" role="button">SUBSCRIBE</a>
                </form>
            </div>
        </div>
        <div class="footer-grid">
            <div class="container">
                <div class="col-md-2 re-ft-grd">
                    <h3>Categories</h3>
                    <ul class="categories">
                        <li><a href="#">Men</a></li>
                        <li><a href="#">Women</a></li>
                        <li><a href="#">Kids</a></li>
                        <li><a href="#">Formal</a></li>
                        <li><a href="#">Casuals</a></li>
                        <li><a href="#">Sports</a></li>
                    </ul>
                </div>
                <div class="col-md-2 re-ft-grd">
                    <h3>Short links</h3>
                    <ul class="shot-links">
                        <li><a href="#">Contact us</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Delivery</a></li>
                        <li><a href="#">Return Policy</a></li>
                        <li><a href="#">Terms & conditions</a></li>
                        <li><a href="contact.jsp">Sitemap</a></li>
                    </ul>
                </div>
                <div class="col-md-6 re-ft-grd">
                    <h3>Social</h3>
                    <ul class="social">
                        <li><a href="#" class="fb">facebook</a></li>
                        <li><a href="#" class="twt">twitter</a></li>
                        <li><a href="#" class="gpls">g+ plus</a></li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
                <div class="col-md-2 re-ft-grd">
                    <div class="bt-logo">
                        <div class="logo">
                            <a href="index" class="ft-log">JShop</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="copy-rt">
                <div class="container">
                    <p>&copy;   Project Java Web - SE1007</p>
                </div>
            </div>
        </div>
    </body>
</html>