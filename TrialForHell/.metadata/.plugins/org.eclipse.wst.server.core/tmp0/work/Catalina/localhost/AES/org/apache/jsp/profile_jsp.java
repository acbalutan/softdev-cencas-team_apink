/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.67
 * Generated at: 2016-03-13 19:55:42 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import bean.Provider;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write('\n');
      out.write('\n');

String username, firstName, lastName, designation;

Class.forName("org.sqlite.JDBC");
Connection conn = DriverManager.getConnection("jdbc:sqlite:D:/Eclipse/db/aes.db");
Statement stat = conn.createStatement();

      out.write('\n');
      out.write('\n');

String un = (String)session.getAttribute("username");
ResultSet rs = stat.executeQuery("select * from user where username='" + un + "'");

username = rs.getString(1);
firstName = rs.getString(3);
lastName = rs.getString(4);
designation = rs.getString(5);


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" href=\"bootstrap/bootstrap.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"bootstrap/bootstrap-theme.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"bootstrap/bootstrap.min.css\">\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"bootstrap/js/docs.min.js\"></script>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>Profile</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("        <div class=\"col-sm-4\" style=\"position:absolute; top: 5%; left: 33%;\">\n");
      out.write("          <div class=\"panel panel-info\">\n");
      out.write("            <div class=\"panel-heading\">\n");
      out.write("              <h3 class=\"panel-title\"><b>User Information</b></h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"panel-body\">\n");
      out.write("              <b>USERNAME: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> ");
      out.print(username );
      out.write(" <br />\n");
      out.write("\t\t\t  <b>FIRST NAME: &nbsp;&nbsp;&nbsp;</b> ");
      out.print(firstName );
      out.write(" <br />\n");
      out.write("\t\t\t  <b>LAST NAME: &nbsp;&nbsp;&nbsp;&nbsp;</b> ");
      out.print(lastName );
      out.write(" <br />\n");
      out.write("\t\t\t  <b>DESIGNATION:&nbsp;</b> ");
      out.print(designation );
      out.write(" <br />\n");
      out.write("\t\t\t  <img src=\"\" style=\"border: .5px solid; width: 20%; height: 50%; position: absolute; top: 30%; left:73%;\"></img>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("         </div>\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<br />\n");
      out.write("<div class=\"well well-large\">\n");
      out.write("<h2 style=\"text-align:center;\">GUIDELINES</h2>\n");
      out.write("<h4 style=\"text-align:center;\"> The following points below are important guidelines for all BOC / BEI personnel. <br /> Kindly read these for optimal submission of data.</h4><br>\n");
      out.write("<center>\n");
      out.write("<p><b>1).</b> Only use checked and registered devices as their respective specifications will be needed.</p>\n");
      out.write("<p><b>2).</b> Ensure that you are at your assigned position as the GPS data of this area will be needed.</p>\n");
      out.write("<p><b>3).</b> Do not move your assigned unit drastically away from its assigned area as this would affect the validation process.</p>\n");
      out.write("<p><b>4).</b> Ensure that you have your respective Masters List with you. As BEI/BOC personnel, you will need this for validating incoming data.</p>\n");
      out.write("<p><b>5).</b> HONESTY IS THE BEST POLICY. As public servants, the integrity of the elections are affected by your actions. <b>BAWAL ANG CORRUPT</b>.</p>\n");
      out.write("</center>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<form action=\"logoutprocess.jsp\" style=\"position:absolute; top: 75%; left: 43%;\">\n");
      out.write("    <button type=\"submit\" class=\"btn btn-lg btn-info\">Logout</button>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("<form action=\"pile.jsp\" style=\"position:absolute; top: 75%; left: 51%;\">\n");
      out.write("    <button type=\"submit\" class=\"btn btn-lg btn-info\">Pending</button>\n");
      out.write("</form>\n");
      out.write("\n");
 
rs.close();
conn.close(); 
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
