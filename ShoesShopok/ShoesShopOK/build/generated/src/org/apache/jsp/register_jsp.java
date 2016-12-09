package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    ");
 String passFail = request.getAttribute("passFail") + ""; 
      out.write("\r\n");
      out.write("    ");
 String passShort = request.getAttribute("passShort") + ""; 
      out.write("\r\n");
      out.write("    ");
 String invalidEmail = request.getAttribute("invalidEmail") + ""; 
      out.write("\r\n");
      out.write("    ");
 String invalidMobile = request.getAttribute("invalidMobile") + ""; 
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
 String firstName = (String) request.getAttribute("firstName"); 
      out.write("\r\n");
      out.write("    ");
 firstName = (firstName != null) ? firstName : ""; 
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
 String lastName = (String) request.getAttribute("lastName"); 
      out.write("\r\n");
      out.write("    ");
 lastName = (lastName != null) ? lastName : ""; 
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
 String email = (String) request.getAttribute("email"); 
      out.write("\r\n");
      out.write("    ");
 email = (email != null) ? email : ""; 
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
 String password = (String) request.getAttribute("password"); 
      out.write("\r\n");
      out.write("    ");
 password = (password != null) ? password : ""; 
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
 String rePassword = (String) request.getAttribute("rePassword"); 
      out.write("\r\n");
      out.write("    ");
 rePassword = (rePassword != null) ? rePassword : ""; 
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");
 String mobile = (String) request.getAttribute("mobile"); 
      out.write("\r\n");
      out.write("    ");
 mobile = (mobile != null) ? mobile : ""; 
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>N-Air a E-commerce category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("        <meta name=\"keywords\" content=\"N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\r\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\r\n");
      out.write("        <meta charset utf=\"8\">\r\n");
      out.write("        <!--fonts-->\r\n");
      out.write("        <link href='//fonts.googleapis.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>\r\n");
      out.write("\r\n");
      out.write("        <!--fonts-->\r\n");
      out.write("        <!--bootstrap-->\r\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <!--coustom css-->\r\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("        <!--shop-kart-js-->\r\n");
      out.write("        <script src=\"js/simpleCart.min.js\"></script>\r\n");
      out.write("        <!--default-js-->\r\n");
      out.write("        <script src=\"js/jquery-2.1.4.min.js\"></script>\r\n");
      out.write("        <!--bootstrap-js-->\r\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("        <!--script-->\r\n");
      out.write("        <!-- FlexSlider -->\r\n");
      out.write("        <script src=\"js/imagezoom.js\"></script>\r\n");
      out.write("        <script defer src=\"js/jquery.flexslider.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flexslider.css\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            // Can also be used with $(document).ready()\r\n");
      out.write("            $(window).load(function () {\r\n");
      out.write("                $('.flexslider').flexslider({\r\n");
      out.write("                    animation: \"slide\",\r\n");
      out.write("                    controlNav: \"thumbnails\"\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("        <!-- //FlexSlider-->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body background=\"./resource/image/nike_clash_collection_shoes_assorted_colors_42640_2560x1600.jpg\">\r\n");
      out.write("      \r\n");
      out.write("        <div class=\"head-bread\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <ol class=\"breadcrumb\">\r\n");
      out.write("                    <li><a href=\"index\">Home</a></li>\r\n");
      out.write("                    <li><a href=\"signup.jsp\">LOGIN</a></li>\r\n");
      out.write("                    <li class=\"active\">REGISTER</li>\r\n");
      out.write("                </ol>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- reg-form -->\r\n");
      out.write("        <div class=\"reg-form\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <div class=\"reg\">\r\n");
      out.write("                    <h3>Register Now</h3>\r\n");
      out.write("                    <p>Welcome, please enter the following details to continue.</p>\r\n");
      out.write("                    <p>If you have previously registered with us, <a href=\"signup.jsp\">click here</a></p>\r\n");
      out.write("                    <form action=\"register\" method=\"Post\">\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"text-info\">First Name: </li>\r\n");
      out.write("                            <li><input type=\"text\" name=\"firstname\" required=\"\" value=\"");
      out.print( firstName );
      out.write("\"></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"text-info\">Last Name: </li>\r\n");
      out.write("                            <li><input type=\"text\" name=\"lastname\" required=\"\" value=\"");
      out.print( lastName );
      out.write("\"></li>\r\n");
      out.write("                        </ul>\t\t\t\t \r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"text-info\">Email: </li>\r\n");
      out.write("                            <li><input type=\"text\" name=\"mail\" required=\"\" value=\"");
      out.print( email );
      out.write("\"></li>\r\n");
      out.write("                            ");
if (invalidEmail.equals("invalidEmail")) {
      out.write("\r\n");
      out.write("                            <li style=\"color: red\">\r\n");
      out.write("                                Your email invalid\r\n");
      out.write("                            </li>\r\n");
      out.write("                            ");
 request.setAttribute("invalidEmail", null); 
      out.write("\r\n");
      out.write("                            ");
}
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"text-info\">Password: </li>\r\n");
      out.write("                            <li><input type=\"password\" name=\"password\" required=\"\" value=\"");
      out.print( password );
      out.write("\"></li>\r\n");
      out.write("                            ");
if (passShort.equals("passShort")) {
      out.write("\r\n");
      out.write("                            <li style=\"color: red\">\r\n");
      out.write("                                Must contain at least 6 more characters\r\n");
      out.write("                            </li>\r\n");
      out.write("                            ");
 request.setAttribute("passShort", null); 
      out.write("\r\n");
      out.write("                            ");
}
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"text-info\">Re-enter Password:</li>\r\n");
      out.write("                            <li><input type=\"password\" name=\"repassword\" required=\"\" value=\"");
      out.print( rePassword );
      out.write("\"></li>\r\n");
      out.write("                                ");
if (passFail.equals("passFail")) {
      out.write("\r\n");
      out.write("                            <li style=\"color: red\">\r\n");
      out.write("                                Re-Enter Password must same password\r\n");
      out.write("                            </li>\r\n");
      out.write("                            ");
 request.setAttribute("passFail", null); 
      out.write("\r\n");
      out.write("                            ");
}
      out.write("                           \r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <ul>\r\n");
      out.write("                            <li class=\"text-info\">Mobile Number:</li>\r\n");
      out.write("                            <li><input type=\"text\" name=\"mobile\" value=\"");
      out.print( mobile );
      out.write("\"></li>\r\n");
      out.write("                            ");
if (invalidMobile.equals("invalidMobile")) {
      out.write("\r\n");
      out.write("                            <li style=\"color: red\">\r\n");
      out.write("                                Your mobile number invalid\r\n");
      out.write("                            </li>\r\n");
      out.write("                            ");
 request.setAttribute("invalidMobile", null); 
      out.write("\r\n");
      out.write("                            ");
}
      out.write(" \r\n");
      out.write("                        </ul>\t\t\t\t\t\t\r\n");
      out.write("                        <input type=\"submit\" value=\"Register Now\">\r\n");
      out.write("                        <p class=\"click\">By clicking this button, you are agree to my  <a href=\"#\">Policy Terms and Conditions.</a></p> \r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
