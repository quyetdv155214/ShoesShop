<%-- 
    Document   : checkout
    Created on : Dec 6, 2016, 3:09:39 PM
    Author     : Jic
--%>

<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html lang="en">
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

        <div class="head-bread">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index">Home</a></li>
                    <li><a href="products.jsp">Products</a></li>
                    <li class="active">CART</li>
                </ol>
            </div>
        </div>
        <!-- check-out -->
        <div class="check">
            <div class="container">	 
                <div class="col-md-3 cart-total">
                    <a class="continue" href="#">Continue to basket</a>
                    <div class="price-details">
                        <h3>Price Details</h3>
                        <span>Total</span>
                        <span class="total1">6200.00</span>
                        <span>Discount</span>
                        <span class="total1">10%(Festival Offer)</span>
                        <span>Delivery Charges</span>
                        <span class="total1">150.00</span>
                        <div class="clearfix"></div>				 
                    </div>
                    <hr class="featurette-divider">
                    <ul class="total_price">
                        <li class="last_price"> <h4>TOTAL</h4></li>	
                        <li class="last_price"><span>6150.00</span></li>
                        <div class="clearfix"> </div>
                    </ul> 
                    <div class="clearfix"></div>
                    <a class="order" href="placeorder">Place Order</a>
                </div>
                <div class="col-md-9 cart-items">
                    <% ArrayList<Cart> cart = (ArrayList<Cart>) request.getSession().getAttribute("cart");%>
                    <% if (cart == null) {
                            cart = new ArrayList<Cart>();
                        } %>
                    <h1>My Shopping Bag (2)</h1>
                    <% for (Cart c : cart) {%>
                    <script>$(document).ready(function (c) {
                            $('.close<%= c.getProduct().getProductID()%>').on('click', function (c) {
                                $('.cart-header<%= c.getProduct().getProductID()%>').fadeOut('slow', function (c) {
                                    $('.cart-header<%= c.getProduct().getProductID()%>').remove();
                                });
                            });
                        });
                    </script>
                    <div class="cart-header<%= c.getProduct().getProductID()%>">
                        <div class="close<%= c.getProduct().getProductID()%>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></div>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="<%= c.getProduct().getUrl()%>" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">

                                <ul class="qty">
                                    <li><p>Name : <%= c.getProduct().getProductName()%></p></li>
                                </ul>
                                <ul class="qty">
                                    <li><p>Qty : <%= c.getQuantity()%></p></li>
                                </ul>
                                <ul class="qty">
                                    <li><p>Price each : $<%= c.getProduct().getPrice()%></p></li>
                                </ul>
                                </ul>
                                <ul class="qty">
                                    <form action="dele" method="post" id="<%= c.getProduct().getProductID()%>">
                                        <input type="hidden" value="<%= c.getProduct().getProductID()%>" name="id">
                                    </form>
                                    <li><p><a class="btn btn-warning " href="javascript:{}" onclick="document.getElementById('<%= c.getProduct().getProductID() %>').submit(); return false;" role="button">Delete</a></p></li>
                                </ul>
                                <div class="delivery">
                                    <p>Service Charges : Rs.190.00</p>
                                    <span></span>
                                    <div class="clearfix"></div>
                                </div>	
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>


                    <%}%>
                    //////////////////////////////////
                    <script>$(document).ready(function (c) {
                            $('.close2').on('click', function (c) {
                                $('.cart-header2').fadeOut('slow', function (c) {
                                    $('.cart-header2').remove();
                                });
                            });
                        });
                    </script>

                    <div class="cart-header2">
                        <div class="close2"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></div>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="images/grid7.jpg" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <ul class="qty">
                                    <li><p>Size : 8 US</p></li>
                                    <li><p>Qty : 2</p></li>
                                    <li><p>Price each : $190</p></li>
                                </ul>
                                <div class="delivery">
                                    <p>Service Charges : Rs.360.00</p>
                                    <span>Delivered in 2-3 bussiness days</span>
                                    <div class="clearfix"></div>
                                </div>	
                            </div>
                            <div class="clearfix"></div>					
                        </div>
                    </div>			
                </div>
                <div class="clearfix"> </div>
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
