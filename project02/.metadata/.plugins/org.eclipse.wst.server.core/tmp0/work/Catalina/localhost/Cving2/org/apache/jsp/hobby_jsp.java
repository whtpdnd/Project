/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-11-16 12:55:04 UTC
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

public final class hobby_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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

//user vo를 가져와서 loginvo에 담아주는것!
UserVO LoginVO = (UserVO)session.getAttribute("login");
if(LoginVO == null)
{
	response.sendRedirect("login.jsp");
	return;
}


      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"EUC-KR\">\r\n");
      out.write("		<title>hobby</title>\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"css/cving.css\">\r\n");
      out.write("		<script src=\"./js/jquery-3.6.0.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<script>\r\n");
      out.write("	window.onload = function()\r\n");
      out.write("	{\r\n");
      out.write("		$(\"#btn_hobby\").click(function(){\r\n");
      out.write("			if($(\"input:checkbox[name=genre]:checked\").length != 3)\r\n");
      out.write("			{\r\n");
      out.write("				alert(\"장르를 3개만 선택하세요\");\r\n");
      out.write("				return;\r\n");
      out.write("			}\r\n");
      out.write("			else\r\n");
      out.write("			{\r\n");
      out.write("				if(confirm(\"장르선택을 완료하시겠습니까?\"))\r\n");
      out.write("				{\r\n");
      out.write("					$(\"#hobby\").submit();			\r\n");
      out.write("				}	\r\n");
      out.write("			}\r\n");
      out.write("			\r\n");
      out.write("		});\r\n");
      out.write("	}\r\n");
      out.write("	</script>\r\n");
      out.write("	<body>\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<section class=\"hobby_head\">\r\n");
      out.write("				<p> 나만을 위한 콘텐츠를 추천 받아보세요.</p>\r\n");
      out.write("				<h1> 관심 장르 3개를 선택 하세요.</h1>\r\n");
      out.write("			</section>\r\n");
      out.write("			<form id=\"hobby\" method=\"post\" action=\"hobbyok.jsp\">\r\n");
      out.write("				<div id=\"wrap\">\r\n");
      out.write("					<div class=\"m_imgin\">\r\n");
      out.write("						<img src=\"./img/documentary.jpg\">\r\n");
      out.write("						<img src=\"./img/drama.jpg\">\r\n");
      out.write("						<img src=\"./img/mellow.jpg\">\r\n");
      out.write("						<img src=\"./img/mystery.jpg\">\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"box\">\r\n");
      out.write("						<input type=\"checkbox\" class=\"chbx_1\" name=\"genre\" value=\"다큐멘터리\">다큐멘터리\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:170px;\" name=\"genre\" value=\"드라마\">드라마\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:200px;\" name=\"genre\" value=\"멜로/로맨스\">멜로/로맨스\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:190px;\" name=\"genre\" value=\"미스터리\">미스터리\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"m_imgin\">\r\n");
      out.write("						<img src=\"./img/liveperformance.jpg\">\r\n");
      out.write("						<img src=\"./img/fantasy.jpg\">\r\n");
      out.write("						<img src=\"./img/adventure.jpg\">\r\n");
      out.write("						<img src=\"./img/war.jpg\">\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"box\">\r\n");
      out.write("						<input type=\"checkbox\" class=\"chbx_1\" name=\"genre\" value=\"공연실황\">공연실황	\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:190px;\" name=\"genre\" value=\"판타지\">판타지\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:210px;\" name=\"genre\" value=\"모험\">모험\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:230px;\" name=\"genre\" value=\"전쟁\">전쟁\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"m_imgin\">\r\n");
      out.write("						<img src=\"./img/comedy.jpg\">\r\n");
      out.write("						<img src=\"./img/sf.jpg\">\r\n");
      out.write("						<img src=\"./img/suspense.jpg\">\r\n");
      out.write("						<img src=\"./img/west.jpg\">\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"box\">\r\n");
      out.write("						<input type=\"checkbox\" class=\"chbx_1\" name=\"genre\" value=\"코미디\">코미디\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:220px;\" name=\"genre\" value=\"SF\">SF\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:230px;\" name=\"genre\" value=\"서스펜스\">서스펜스\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:200px;\" name=\"genre\" value=\"서부\">서부\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"m_imgin\">\r\n");
      out.write("						<img src=\"./img/horror.jpg\">\r\n");
      out.write("						<img src=\"./img/thriller.jpg\">\r\n");
      out.write("						<img src=\"./img/animation.jpg\">\r\n");
      out.write("						<img src=\"./img/action.jpg\">\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"box\">\r\n");
      out.write("						<input type=\"checkbox\" class=\"chbx_1\" name=\"genre\" value=\"공포\">공포\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:230px;\" name=\"genre\" value=\"스릴러\">스릴러\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:180px;\" name=\"genre\" value=\"애니메이션\">애니메이션\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:190px;\" name=\"genre\" value=\"액션\">액션\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"m_imgin\">\r\n");
      out.write("						<img src=\"./img/martialarts.jpg\">\r\n");
      out.write("						<img src=\"./img/epic.jpg\">\r\n");
      out.write("						<img src=\"./img/noir.jpg\">\r\n");
      out.write("						<img src=\"./img/crime.jpg\">\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"box\">\r\n");
      out.write("						<input type=\"checkbox\" class=\"chbx_1\" name=\"genre\" value=\"무협\">무협\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:230px;\" name=\"genre\" value=\"서사\">서사\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:220px;\" name=\"genre\" value=\"느와르\">느와르\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:210px;\" name=\"genre\" value=\"범죄\">범죄\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"m_imgin\">\r\n");
      out.write("						<img src=\"./img/family.jpg\">\r\n");
      out.write("						<img src=\"./img/blackcomedy.jpg\">\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"box\">\r\n");
      out.write("						<input type=\"checkbox\" class=\"chbx_1\" name=\"genre\" value=\"가족\">가족\r\n");
      out.write("						<input type=\"checkbox\" style=\"margin-left:220px;\" name=\"genre\" value=\"블랙코미디\">블랙코미디\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"btn_hobby\">\r\n");
      out.write("					<input type=\"button\" name=\"btn_hobby\" id=\"btn_hobby\" value=\"완료\">\r\n");
      out.write("				</div>\r\n");
      out.write("			</form>\r\n");
      out.write("			<footer>\r\n");
      out.write("			<article class=\"foot_menu\">\r\n");
      out.write("				<hr style=\"background-color:white;\">\r\n");
      out.write("				명칭: 주식회사 이젠 | 등록번호: 전북 소4048 | 등록연월일: 2022. 10. 14 | 제호: CVING<br>\r\n");
      out.write("				발행: C team  | 발행소: 전라북도 전주시 덕진구 금암동 이젠컴퓨터학원 4층 407호<br>\r\n");
      out.write("				CVING의 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다.<br>\r\n");
      out.write("			</article>\r\n");
      out.write("			</footer>\r\n");
      out.write("		</div>\r\n");
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
