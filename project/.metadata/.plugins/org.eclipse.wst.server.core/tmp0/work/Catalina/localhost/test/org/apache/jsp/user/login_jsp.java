/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-10-12 05:26:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import lol.vo.*;
import lol.dbms.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/user/../include/maintail.jsp", Long.valueOf(1664262340236L));
    _jspx_dependants.put("/user/../include/mainhead.jsp", Long.valueOf(1664866248836L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("lol.vo");
    _jspx_imports_packages.add("lol.dbms");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
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

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");

UserVO loginvo = (UserVO)session.getAttribute("login");


      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"EUC-KR\">\r\n");
      out.write("		<title>League of Legend Inven</title>\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"../css/style.css\"/>	\r\n");
      out.write("		<script src=\"../js/jquery-3.6.0.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("	<script>\r\n");
      out.write("		");

		if(loginvo != null)
		{
			
      out.write("\r\n");
      out.write("			function DoModify()\r\n");
      out.write("			{\r\n");
      out.write("				window.open(\"../user/uinfomodify.jsp?uno=\" +'");
      out.print( loginvo.getUno()  );
      out.write("' , \"_uinfomodify\",\r\n");
      out.write("				\"width=538,height=360,left=700,top=400\");	\r\n");
      out.write("			}\r\n");
      out.write("			");

		}
		
      out.write("\r\n");
      out.write("		");

		if(loginvo != null)
		{
			
      out.write("\r\n");
      out.write("			function DoQuit()\r\n");
      out.write("			{\r\n");
      out.write("				window.open(\"../user/uquitcheck.jsp?uno=\"+");
      out.print( loginvo.getUno() );
      out.write(", \"_uquitcheck\",\r\n");
      out.write("				\"width=500,height=200,left=800,top=500\");	\r\n");
      out.write("			}\r\n");
      out.write("			");

		}
		
      out.write("\r\n");
      out.write("	</script>\r\n");
      out.write("		<table  width=\"900px\" align=\"center\" style=\"border-collapse :collapse;\" >\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td align=\"center\">\r\n");
      out.write("					<a href=\"../main/index.jsp\">\r\n");
      out.write("					<div style=\"display:block;\">\r\n");
      out.write("					<img src=\"../img/lol1.png\" width=\"800\" height=\"200\" align=\"middle\" style=\"\">\r\n");
      out.write("					</div>\r\n");
      out.write("					</a>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("		<table  border=\"0\" width=\"1200px\" align=\"center\" style=\"border-collapse :collapse;\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td colspan=\"3\" style=\"text-align:right;\">\r\n");
      out.write("				<div class=\"topmenu\" style=\"height:32px;padding-top:10px;\">\r\n");
      out.write("					");

					if(loginvo == null)
					{
						
      out.write("\r\n");
      out.write("						<a href=\"../user/join.jsp\">????????????</a>\r\n");
      out.write("						<a href=\"../user/login.jsp\">?????????</a>\r\n");
      out.write("						");
 
					}else
					{
						
      out.write("\r\n");
      out.write("						<span>");
      out.print( loginvo.getUname() );
      out.write("</span>??? ???????????????!\r\n");
      out.write("						<a href=\"../user/logout.jsp\">????????????</a>\r\n");
      out.write("						<a href=\"javascript:DoModify();\">??????????????????</a>\r\n");
      out.write("						<a href=\"javascript:DoQuit();\">????????????</a>	\r\n");
      out.write("						&nbsp;&nbsp;\r\n");
      out.write("						");
 
					}
					
      out.write("\r\n");
      out.write("				</div>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td class=\"leftmenu\" style=\"width:200px;\" valign=\"top\">\r\n");
      out.write("						<a href=\"../main/index.jsp\">???</a>\r\n");
      out.write("						<br>\r\n");
      out.write("						<a href=\"../champion/cplist.jsp\">????????? ??????</a>\r\n");
      out.write("						<br>\r\n");
      out.write("						<a href=\"../champion/cpreview.jsp\">????????? ??????</a>		\r\n");
      out.write("						<br>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td valign=\"top\">");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("window.onload = function()\r\n");
      out.write("{\r\n");
      out.write("	$(\"#userid\").focus();\r\n");
      out.write("	\r\n");
      out.write("	$(\"#onlogin\").click(function(){\r\n");
      out.write("		if($(\"#userid\").val() == \"\")\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"???????????? ???????????????\");\r\n");
      out.write("			$(\"#userid\").focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if($(\"#userpw\").val() == \"\")\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"??????????????? ???????????????\");\r\n");
      out.write("			$(\"#userpw\").focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		$(\"#login\").submit();\r\n");
      out.write("	});\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<!-- ????????? ?????? ????????? -------------------------- -->\r\n");
      out.write("<table border=\"1\" style=\"background-color:white; width:100%; height:500px\">\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td align=\"center\" valign=\"middle\">\r\n");
      out.write("			<div class=\"loginborder\">\r\n");
      out.write("				<form id=\"login\" name=\"login\" method=\"post\" action=\"loginok.jsp\">\r\n");
      out.write("				&nbsp;&nbsp;?????????&nbsp;&nbsp;<input type=\"text\" id=\"userid\" name=\"userid\">\r\n");
      out.write("				<br>\r\n");
      out.write("				????????????&nbsp;<input type=\"password\" id=\"userpw\" name=\"userpw\">\r\n");
      out.write("				<br>\r\n");
      out.write("				<br>\r\n");
      out.write("				&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\" id=\"onlogin\">???????????????</a>\r\n");
      out.write("				&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"../main/index.jsp\">??????</a>\r\n");
      out.write("				</form>\r\n");
      out.write("			</div>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<!-- ????????? ?????? ????????? -------------------------- -->\r\n");
      out.write("\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>		\r\n");
      out.write("	</body>\r\n");
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
