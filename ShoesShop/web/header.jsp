<%-- 
    Document   : header
    Created on : Dec 6, 2016, 8:53:44 PM
    Author     : q
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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


    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="header-top">
                    <div class="logo">
                        <a href="index">JShop</a>
                    </div>
                    <div class="login-bars">
                        <% User user = (User) request.getSession().getAttribute("user"); %>
                        <% if (user == null) {%>
                        <a class="btn btn-default log-bar" href="register.jsp" role="button">Sign up</a>
                        <a class="btn btn-default log-bar" href="signup.jsp" role="button">Login</a>
                        <%} else {%>

                        <a data-toggle="modal" data-target="#myModal"><h3><%=user.getFirstName() + " " + user.getLastName()%></h3></a>
                        <!-- Trigger the modal with a button -->
                        <!-- Modal -->
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">
                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Information</h4>
                                    </div>
                                    <div class="form-group container text-center" style="margin: auto">
                                        <div class="panel panel-info col-xs-6" > <br/>
                                            <div class="form-group">
                                                <label  class="col-sm-2 control-label">Name</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="name" class="form-control" value="<%= user.getFirstName() + " " + user.getLastName()%>" disabled="">
                                                </div>
                                            </div>
                                            <br/><br/>
                                            <div class="form-group">
                                                <label  class="col-sm-2 control-label">Email</label>
                                                <div class="col-sm-8">
                                                    <input type="email" name="joinDate" class="form-control" value="<%= user.getEmail()%>" disabled="">
                                                </div>
                                            </div>
                                            <br/><br/>
                                            <div class="form-group"> 
                                                <label  class="col-sm-2 control-label">Password</label>
                                                <div class="col-sm-8">
                                                    <input type="password" name="outDate" class="form-control" value="password" disabled="">
                                                </div>
                                                <div class="col-sm-2"> 
                                                    <form action="change" method="get">
                                                        <input type="submit" class="btn btn-link text-center" value="Change">
                                                        <input type="hidden" value="<%= user.getEmail() %>" name="userMail"/>
                                                    </form>
                                                </div>
                                            </div>
                                            <br/><br/>
                                        </div>         
                                    </div>
                                    <form action="logout" method="post" id="logout">
                                        <a class="btn btn-warning" href="javascript:{}" onclick="document.getElementById('logout').submit(); return false;" role="button">Log out</a>
                                    </form>
                                    <br/>
                                </div>
                            </div>
                        </div>

                        <%}%>

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
                                <div class="text-center">
                                    <ul class="nav navbar-nav nav-font">
                                        <li><a href="index">Home</a></li>
                                        <li>
                                            <a href="javascript:{}" onclick="document.getElementById('men').submit(); return false;">Men</a>
                                            <form action="kind" method="post" id ="men">
                                                <input type="hidden" value="1" name="kind">
                                            </form>
                                        </li>
                                        <li>
                                            <form action="kind" method="post" id="women">
                                                <input type="hidden" value="2" name="kind">
                                            </form>
                                            <a href="javascript:{}" onclick="document.getElementById('women').submit(); return false;">Women</a>
                                        </li>
                                        <li>
                                            <form action="kind" method="post" id="kids">
                                                <input type="hidden" value="3" name="kind">
                                            </form>
                                            <a href="javascript:{}" onclick="document.getElementById('kids').submit(); return false;">Kid</a>
                                        </li>
                                        <li><a href="contact.jsp">Catch</a></li>
                                    </ul>
                                </div>
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
