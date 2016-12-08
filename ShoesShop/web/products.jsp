<%-- 
    Document   : products
    Created on : Dec 6, 2016, 3:10:33 PM
    Author     : Jic
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<%@taglib prefix="pager" uri="/tlds/customtags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">



    <head>
        <title>N-Air a E-commerce category Flat Bootstrap Responsive Website Template | Products :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <meta charset utf="8">
        <!--fonts-->
        <link href='//fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>

        <!--fonts-->
        <!--form-css-->
        <link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
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

        <div class="head-bread">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index">Home</a></li>
                    <li class="active">PRODUCTS</li>
                </ol>
            </div>
        </div>
        <div class="products-gallery">
            <div class="container">
                <div class="col-md-9 grid-gallery">
                    <c:forEach items="${requestScope.products}" var="product" varStatus="loop">
                        <div class="col-md-4 grid-stn simpleCart_shelfItem"> 
                            <div class="ih-item square effect3 bottom_to_top">
                                <div class="bottom-2-top">
                                    <div class="img"><img src="${product.url}" alt="/" class="img-responsive gri-wid"></div>
                                    <div class="info">
                                        <div>
                                            ${product.productName}
                                        </div>
                                        <br/>
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
                <div class="col-md-3 grid-details">                   
                    <form action="testsv">
                        <input type="hidden" value="${requestScope.kindID}" name="test"/>
                        <div class="grid-addon">
                            <section  class="sky-form">
                                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Type</h4>
                                <div class="row row1 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Air Max (30)</label>
                                    </div>
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Armagadon   (30)</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Helium (30)</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kyron     (30)</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Napolean  (30)</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Foot Rock   (30)</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Radiated  (30)</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Spiked  (30)</label>
                                    </div>
                                </div>
                            </section>
                            <section  class="sky-form">
                                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Brand</h4>
                                <div class="row row1 scroll-pane">
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Roadstar</label>
                                    </div>
                                    <div class="col col-4">
                                        <label class="checkbox"><input type="checkbox" name="checkbox" value="tornado"><i></i>Tornado</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" value="Kissan"><i></i>Kissan</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" value="Oakley"><i></i>Oakley</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" value="Manga"><i></i>Manga</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" value="Wega"><i></i>Wega</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" value="Kings"><i></i>Kings</label>
                                        <label class="checkbox"><input type="checkbox" name="checkbox" value="Zumba"><i></i>Zumba</label>
                                    </div>
                                </div>
                            </section>	
                            <div class="text-center">
                                <input type="submit" class="btn btn-success" value="Search"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="clearfix"></div>
            </div> 
        </div>
        <div class="text-center">
            <pager:Pagger totalPage="${requestScope.pageCount}" 
                          pageIndex="${requestScope.pageIndex}" 
                          step="2" 
                          href="kind?page="
                          kind="&kind=${requestScope.kindID}"/>
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