/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-12-05 13:49:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import cving.dbms.*;
import util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("util");
    _jspx_imports_packages.add("cving.dbms");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

UserVO LoginVO = (UserVO)session.getAttribute("login");
if(LoginVO == null)
{
	//???????????? ?????? ????????? login???????????? ????????????.
	response.sendRedirect("login.jsp");
	return;
}
DBManager db = new DBManager();
db.DBOpen();


System.out.println(LoginVO.getUgender());
String sql = "";
sql = "select hobby from hobby where uno = " + LoginVO.getUno(); //hobby ???????????? ???????????? ?????? vo??? ????????? uno??? ????????? hobby????????? ????????? ??????.
db.OpenQuery(sql);
String hobby = "";
while(db.GetNext())
{
	if(!hobby.equals("")) hobby += ","; 
	hobby += db.GetValue("hobby");
}
System.out.println(hobby);
String realhobby[] = hobby.split(","); //????????? ???????????? ???????????? ????????? ????????? ???????????????.
db.CloseQuery();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<title>CVING</title>\r\n");
      out.write("<link rel=\"stylesheet\"href=\"https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/cving.css\">\r\n");
      out.write("<script src=\"./js/jquery-3.6.0.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("		$(document).ready(function(){\r\n");
      out.write("			$('.slider').bxSlider({\r\n");
      out.write("		        mode: 'horizontal', // ???????????? ?????? ('fade', 'horizontal', 'vertical' ??? ??????)\r\n");
      out.write("		        pager: false, // ????????? ?????? ?????????\r\n");
      out.write("		        minSlides : 5,\r\n");
      out.write("		        maxSlides : 5,\r\n");
      out.write("		        slideMargin : 1,\r\n");
      out.write("		        slideWidth : 1200,\r\n");
      out.write("		        moveSlides : 1,\r\n");
      out.write("		        infiniteLoop : true,\r\n");
      out.write("		        hideControlOnEnd: true,\r\n");
      out.write("		        caption: true,\r\n");
      out.write("		        touchEnabled : (navigator.maxTouchPoints > 0),\r\n");
      out.write("			});\r\n");
      out.write("			\r\n");
      out.write("			$(\"input\").keyup(function(e){\r\n");
      out.write("				if(e.keyCode == 13)\r\n");
      out.write("				{\r\n");
      out.write("					DoSearch();\r\n");
      out.write("				}\r\n");
      out.write("			});\r\n");
      out.write("			\r\n");
      out.write("			$(\"#btn_search\").click(function(){\r\n");
      out.write("				DoSearch();\r\n");
      out.write("			});\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("		function DoSearch()\r\n");
      out.write("		{\r\n");
      out.write("			if($(\"#search\").val() == \"\")\r\n");
      out.write("			{\r\n");
      out.write("				alert(\"???????????? ???????????????!\");\r\n");
      out.write("				$(\"#search\").foucus();\r\n");
      out.write("				return;\r\n");
      out.write("			}\r\n");
      out.write("			\r\n");
      out.write("			\r\n");
      out.write("			document.location = \"search.jsp?key=\" + $(\"#search\").val();\r\n");
      out.write("		}\r\n");
      out.write("	</script>\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("		<header id=\"header\">\r\n");
      out.write("			<div class=\"logo\">\r\n");
      out.write("				<a href=\"#\"> <img src=\"./img/logoback.png\" style=\"width: 100%; height: 100%;\">\r\n");
      out.write("				</a>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"logout\">\r\n");
      out.write("				<a href=\"./logout.jsp\">????????????</a>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"search\">\r\n");
      out.write("				<input type=\"text\" id=\"search\" name=\"search\" placeholder=\" ?????? ?????? ?????? ???????????? \">\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"b_search\">\r\n");
      out.write("				<img src=\"./img/search.png\">\r\n");
      out.write("			</div>\r\n");
      out.write("		</header>\r\n");
      out.write("		<div class=\"top\">\r\n");
      out.write("			<article class=\"movie_1\">\r\n");
      out.write("				????????? ?????? ??????\r\n");
      out.write("				<ul class=\"slider\">\r\n");
      out.write("					");

					sql = "select mcode, mhobby, mscore, mimg from ( ";
					sql += "select mcode, mhobby, mscore, mimg from movie ";
					sql += "where 1=1 "; //????????? ??? 
					sql += "and mscore < 9.50 "; //??????9.50?????? ?????????
					sql += "and mscore > 8.30 ";
					sql += "and used = 'Y' "; //????????? ???????????? ???????????? ..
					String sub_sql = "";
					for(int i = 0 ; i < realhobby.length ; i++)
					{
						if( !sub_sql.equals("") )//sub_sql ??? ?????? ?????? ????????? 
							sub_sql += " or ";  //or??? ?????? ????????? !
								
						sub_sql += " mhobby in (select mhobby from genre where mhobby like '%"+ realhobby[i] +"%') ";						
					}
					if( !sub_sql.equals("") )
					{
						sql += " and ( " + sub_sql + ") ";
					}
					sql += "order by rand() limit 0, 100 ) x ";
					sql += "limit 0, 20 ";//???????????? ?????? ?????????????????? 
					db.OpenQuery(sql);
					System.out.println("=========================================");
					System.out.println(sql);
					System.out.println("=========================================");
					while(db.GetNext())
					{
						String mcode = db.GetValue("mcode");
						String mhobby = db.GetValue("mhobby");
						String mscore = db.GetValue("mscore");
						String mimg = db.GetValue("mimg");
						mimg = mimg.replace("https://movie-phinf.pstatic.net","");
						mimg = "./img/" + mimg.replace("/","_");
						
						if(mimg.equals("??????"))
						{
		
							
      out.write("\r\n");
      out.write("							<li><a href=\"./info.jsp?code=");
      out.print( mcode );
      out.write("\"><img src=\"./img/img_null.png\"></a></li>\r\n");
      out.write("							");

						}
						else
						{
							
      out.write("\r\n");
      out.write("							<li><a href=\"./info.jsp?code=");
      out.print( mcode );
      out.write("\"><img src=\"");
      out.print( mimg );
      out.write("\"></a></li>\r\n");
      out.write("							");

						}
						
					}
					db.CloseQuery();
					
      out.write("\r\n");
      out.write("				</ul>\r\n");
      out.write("			</article>\r\n");
      out.write("			<article class=\"movie_2\">\r\n");
      out.write("				");

				sub_sql = "";
				if(LoginVO != null && LoginVO.getUgender().equals("M")) 
				{
					//????????? ????????????..
					
      out.write("\r\n");
      out.write("					???????????? ???????????? ??????\r\n");
      out.write("					");

					sub_sql = "and male > female "; //????????? ?????? ?????? ????????? ??????????????? ??? ?????? ??? ??????.
					sub_sql += "order by rand() limit 0, 100 ";
					
					
				}else
				{
					
      out.write("\r\n");
      out.write("					???????????? ???????????? ??????\r\n");
      out.write("					");

					sub_sql = "and male < female "; //????????? ?????? ?????? ????????? ??????????????? ??? ?????? ??? ??????.
					sub_sql += "order by rand() limit 0, 100 ";
				}
				sql = "select mcode, male, female, mscore, mimg from ( ";
				sql += "select mcode, male, female, mscore, mimg from movie ";
				sql += "where 1=1 "; //?????????
				sql += "and mscore < 9.50 ";
				sql += "and mscore > 8.30 ";
				sql += "and used = 'Y' ";
				sql += sub_sql;
				sql += ") x ";
				sql += "limit 0, 20";
				db.OpenQuery(sql);
				
      out.write("\r\n");
      out.write("				<ul class=\"slider\">\r\n");
      out.write("				");
 
				while(db.GetNext())
				{
					String mcode  = db.GetValue("mcode");
					String male   = db.GetValue("male");
					String female = db.GetValue("female");
					String mscore = db.GetValue("mscore");
					String mimg   = db.GetValue("mimg");
					mimg = mimg.replace("https://movie-phinf.pstatic.net","");
					mimg = "./img/" + mimg.replace("/","_");
					
					if(mimg.equals("??????"))
					{
						
      out.write("\r\n");
      out.write("						<li><a href=\"./info.jsp?code=");
      out.print( mcode );
      out.write("\"><img src=\"./img/img_null.png\"></a></li>\r\n");
      out.write("						");

					}
					else
					{
						
      out.write("\r\n");
      out.write("						<li><a href=\"./info.jsp?code=");
      out.print( mcode );
      out.write("\"><img src=\"");
      out.print( mimg );
      out.write("\"></a></li>\r\n");
      out.write("						");

					}
				}
				db.CloseQuery();
				
      out.write("\r\n");
      out.write("				</ul>				\r\n");
      out.write("			</article>\r\n");
      out.write("			<article class=\"movie_3\">\r\n");
      out.write("				?????? ??????\r\n");
      out.write("				<ul class=\"slider\">\r\n");
      out.write("				");

					sql = "";
					sql += "select mcode, mhobby, mscore, mimg from ( ";
					sql += "select mcode, mhobby, mscore, mimg from movie ";
					sql += "where 1=1 "; //????????? ??? 
					sql += "and mscore < 9.50 "; //??????9.50?????? ?????????
					sql += "and mscore > 8.30 ";
					sql += "and used = 'Y' ";
					sql += "order by rand() limit 0, 100 ) x limit 0, 20 "; //???????????? ?????? ?????????????????? 
					db.OpenQuery(sql);
					while(db.GetNext())
					{
						String mcode = db.GetValue("mcode");
						String mhobby = db.GetValue("mhobby");
						String mscore = db.GetValue("mscore");
						String mimg = db.GetValue("mimg");
						mimg = mimg.replace("https://movie-phinf.pstatic.net","");
						mimg = "./img/" + mimg.replace("/","_");
						
						if(mimg.equals("??????"))
						{
							
      out.write("\r\n");
      out.write("							<li><a href=\"./info.jsp?code=");
      out.print( mcode );
      out.write("\"><img src=\"./img/img_null.png\"></a></li>\r\n");
      out.write("							");

						}
						else
						{
							
      out.write("\r\n");
      out.write("							<li><a href=\"./info.jsp?code=");
      out.print( mcode );
      out.write("\"><img src=\"");
      out.print( mimg );
      out.write("\"></a></li>\r\n");
      out.write("							");

						}
					}
					db.CloseQuery();
				
      out.write("\r\n");
      out.write("				</ul>\r\n");
      out.write("			</article>\r\n");
      out.write("		</div>\r\n");
      out.write("		<footer>\r\n");
      out.write("			<article class=\"foot_menu\">\r\n");
      out.write("				<hr style=\"background-color: white;\">\r\n");
      out.write("				??????: ???????????? ?????? | ????????????: ?????? ???4048 | ???????????????: 2022. 10. 14 | ??????: CVING<br>\r\n");
      out.write("				??????: C team | ?????????: ???????????? ????????? ????????? ????????? ????????????????????? 4??? 407???<br> CVING???\r\n");
      out.write("				???????????? ??????????????? ????????? ????????????, ?????? ??????, ??????, ?????? ?????? ????????????.<br>\r\n");
      out.write("			</article>\r\n");
      out.write("		</footer>\r\n");
      out.write("	</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");

db.DBClose();

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
