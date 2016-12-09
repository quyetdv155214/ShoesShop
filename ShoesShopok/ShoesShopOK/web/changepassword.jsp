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
    <body background="./resource/image/36852456-shoes-wallpaper.jpg">   
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
       <jsp:include page="footer.jsp" />
    </body>
</html>
