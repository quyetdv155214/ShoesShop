<%-- 
    Document   : register
    Created on : Dec 6, 2016, 3:10:55 PM
    Author     : Jic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html lang="en">

    <% String passFail = request.getAttribute("passFail") + ""; %>
    <% String passShort = request.getAttribute("passShort") + ""; %>
    <% String invalidEmail = request.getAttribute("invalidEmail") + ""; %>
    <% String invalidMobile = request.getAttribute("invalidMobile") + ""; %>

    <% String firstName = (String) request.getAttribute("firstName"); %>
    <% firstName = (firstName != null) ? firstName : ""; %>

    <% String lastName = (String) request.getAttribute("lastName"); %>
    <% lastName = (lastName != null) ? lastName : ""; %>

    <% String email = (String) request.getAttribute("email"); %>
    <% email = (email != null) ? email : ""; %>

    <% String password = (String) request.getAttribute("password"); %>
    <% password = (password != null) ? password : ""; %>

    <% String rePassword = (String) request.getAttribute("rePassword"); %>
    <% rePassword = (rePassword != null) ? rePassword : ""; %>

    <% String mobile = (String) request.getAttribute("mobile"); %>
    <% mobile = (mobile != null) ? mobile : "";%>

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
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="register.jsp">LOGIN</a></li>
                    <li class="active">REGISTER</li>
                </ol>
            </div>
        </div>
        <!-- reg-form -->
        <div class="reg-form">
            <div class="container">
                <div class="reg">
                    <h3>Register Now</h3>
                    <p>Welcome, please enter the following details to continue.</p>
                    <p>If you have previously registered with us, <a href="#">click here</a></p>
                    <form action="register" method="Post">
                        <ul>
                            <li class="text-info">First Name: </li>
                            <li><input type="text" name="firstname" required="" value="<%= firstName%>"></li>
                        </ul>
                        <ul>
                            <li class="text-info">Last Name: </li>
                            <li><input type="text" name="lastname" required="" value="<%= lastName%>"></li>
                        </ul>				 
                        <ul>
                            <li class="text-info">Email: </li>
                            <li><input type="text" name="mail" required="" value="<%= email%>"></li>
                                <%if (invalidEmail.equals("invalidEmail")) {%>
                            <li style="color: red">
                                Your email invalid
                            </li>
                            <% request.setAttribute("invalidEmail", null); %>
                            <%}%>
                        </ul>
                        <ul>
                            <li class="text-info">Password: </li>
                            <li><input type="password" name="password" required="" value="<%= password%>"></li>
                                <%if (passShort.equals("passShort")) {%>
                            <li style="color: red">
                                Must contain at least 6 more characters
                            </li>
                            <% request.setAttribute("passShort", null); %>
                            <%}%>
                        </ul>
                        <ul>
                            <li class="text-info">Re-enter Password:</li>
                            <li><input type="password" name="repassword" required="" value="<%= rePassword%>"></li>
                                <%if (passFail.equals("passFail")) {%>
                            <li style="color: red">
                                Re-Enter Password must same password
                            </li>
                            <% request.setAttribute("passFail", null); %>
                            <%}%>                           
                        </ul>
                        <ul>
                            <li class="text-info">Mobile Number:</li>
                            <li><input type="text" name="mobile" value="<%= mobile%>"></li>
                                <%if (invalidMobile.equals("invalidMobile")) {%>
                            <li style="color: red">
                                Your mobile number invalid
                            </li>
                            <% request.setAttribute("invalidMobile", null); %>
                            <%}%> 
                        </ul>						
                        <input type="submit" value="Register Now">
                        <p class="click">By clicking this button, you are agree to my  <a href="#">Policy Terms and Conditions.</a></p> 
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
                            <a href="index.jsp" class="ft-log">N-AIR</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="copy-rt">
                <div class="container">
                    <p>&copy;   2015 N-AIR All Rights Reserved. Design by <a href="http://www.w3layouts.com">w3layouts</a></p>
                </div>
            </div>
        </div>
    </body>
</html>
