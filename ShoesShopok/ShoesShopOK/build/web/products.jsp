<%-- 
    Document   : products
    Created on : Dec 6, 2016, 3:10:33 PM
    Author     : Jic
--%>

<%@page import="model.Brand"%>
<%@page import="model.Discount"%>
<%@page import="model.Categori"%>
<%@page import="model.Type"%>
<%@page import="dal.DatabaseContext"%>
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
        <%
            DatabaseContext db = new DatabaseContext();
            ArrayList<Brand> brand = db.getBrand();
            ArrayList<Type> type = db.getType();

        %>
    </head>
    <body background="./resource/image/36852456-shoes-wallpaper.jpg">

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
                    <form action="search" method="post">
                        <input type="hidden" name="kindID" value="${requestScope.kindID}" />
                        <input type="hidden" name="pageIndex" value="${requestScope.pageIndex} "/>
                        <div class="grid-addon">
                            <section  class="sky-form">
                                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Type</h4>
                                <div class="row row1 scroll-pane">
                                    <div class="col col-4">
                                        <%for (Type t : type) {%>
                                        <label class="checkbox"><input type="checkbox" name="typeID" value="<%=t.getId()%>"><i></i><%=t.getName()%></label>
                                                <%}%>
                                    </div>
                                </div>
                            </section>
                            <section  class="sky-form">
                                <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Brand</h4>
                                <div class="row row1 scroll-pane">
                                    <div class="col col-4">
                                        <%for (Brand b : brand) {%>
                                        <label class="checkbox"><input type="checkbox" name="brandID" value="<%=b.getId()%>"><i></i><%=b.getName()%></label>
                                                <%}%>
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
          <jsp:include page="footer.jsp" />
    </body>
</html>