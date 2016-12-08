<%-- 
    Document   : register
    Created on : Dec 6, 2016, 3:10:55 PM
    Author     : Jic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <% String userMail = (String) request.getAttribute("userMail");%>

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
                    <li><a href="signup.jsp">Change Password</a></li>
                </ol>
            </div>
        </div>
        <!-- reg-form -->
        <div class="reg-form">
            <div class="container">
                <div class="reg">
                    <form action="change" method="Post">
                        <input type="hidden" value="<%= userMail%>" name="userMail" />
                        <ul>
                            <li class="text-info">Old Password: </li>
                            <li><input type="password" name="oldPassword" required=""></li>
                                <c:if test="${requestScope.oldPassFail == 'oldPassFail'}" >
                                <li style="color: red">
                                    Wrong password
                                </li>
                            </c:if>
                        </ul>
                        <ul>
                            <li class="text-info">New Password: </li>
                            <li><input type="password" name="newPassword" required=""></li>
                                <c:if test="${requestScope.newPassShort == 'newPassShort'}" >
                                <li style="color: red">
                                    Must contain at least 6 more characters
                                </li>
                            </c:if>
                        </ul>
                        <ul>
                            <li class="text-info">Re-Enter New Password: </li>
                            <li><input type="password" name="reNewPassword" required=""></li>
                                <c:if test="${requestScope.newPassFail == 'newPassFail'}" >
                                <li style="color: red">
                                    Password must same
                                </li>
                            </c:if>
                        </ul>	
                        <input type="submit" value="Confirm">
                    </form>
                </div>
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
