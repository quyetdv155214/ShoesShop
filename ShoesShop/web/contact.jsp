<%-- 
    Document   : contact
    Created on : Dec 6, 2016, 3:10:06 PM
    Author     : Jic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>JShop</title>
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
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
        <!-- contact -->
        <div class="contact">
            <div class="container">
                <h3>Catch us</h3>
                <div class="contact-content">
                    <form>
                        <input type="text" class="textbox" value=" Your Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Your Name';
                                }"><br>
                        <input type="text" class="textbox" value="Your E-Mail" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Your E-Mail';
                                }"><br>
                        <div class="clear"> </div>
                        <div>
                            <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Your Message ';
                                    }">Your Message</textarea><br>
                        </div>	
                        <div class="submit"> 
                            <input class="btn btn-default cont-btn" type="submit" value="SEND " />
                        </div>
                    </form>
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4814943885444!2d105.52427821443679!3d21.013411786006706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b32ca5086d%3A0xa3c62e29d8ab37e4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQsIEjDsmEgTOG6oWM!5e0!3m2!1svi!2s!4v1481072494118" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!--contact-->
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
