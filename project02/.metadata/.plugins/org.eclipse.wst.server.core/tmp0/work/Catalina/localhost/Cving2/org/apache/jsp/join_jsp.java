/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-11-16 12:53:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class join_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"EUC-KR\">\r\n");
      out.write("		<title>join</title>\r\n");
      out.write("		<script src=\"./js/jquery-3.6.0.js\"></script>\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"css/cving.css\">\r\n");
      out.write("	</head>\r\n");
      out.write("	<script>\r\n");
      out.write("	var isCheckID = false;\r\n");
      out.write("	var isCheckPW = false;\r\n");
      out.write("	window.onload = function()\r\n");
      out.write("	{\r\n");
      out.write("		$(\"#user_ID\").focus();\r\n");
      out.write("		// 아이디 중복체크 버튼\r\n");
      out.write("		$(\"#btn_IDcheck\").click(function(){//  실시간하는것!\r\n");
      out.write("			alert(\"아이디 중복체크 완료!\");\r\n");
      out.write("			isCheckID = true;\r\n");
      out.write("		});\r\n");
      out.write("		//비밀번호 확인 버튼\r\n");
      out.write("		$(\"#btn_PWcheck\").click(function(){\r\n");
      out.write("			if($(\"#user_PW1\").val() == $(\"#user_PW2\").val())\r\n");
      out.write("			{\r\n");
      out.write("				isCheckPW = true; \r\n");
      out.write("				alert(\"비밀번호가 일치합니다.\");\r\n");
      out.write("			}\r\n");
      out.write("			else\r\n");
      out.write("			{\r\n");
      out.write("				alert(\"비밀번호가 일치하지 않습니다.\");\r\n");
      out.write("			}\r\n");
      out.write("		});\r\n");
      out.write("		//회원가입 버튼\r\n");
      out.write("		$(\"#btn_join\").click(function(){\r\n");
      out.write("			DoCheckJoin();\r\n");
      out.write("		});\r\n");
      out.write("	}\r\n");
      out.write("	function DoCheckJoin()\r\n");
      out.write("	{\r\n");
      out.write("		if($(\"#user_ID\").val() == \"\")\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"아이디를 입력하세요\");	\r\n");
      out.write("			$(\"#user_ID\").focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}			\r\n");
      out.write("		if($(\"#user_PW1\").val() == \"\")\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"비밀번호 입력하세요\");	\r\n");
      out.write("			$(\"#user_PW1\").focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}			\r\n");
      out.write("		if($(\"#user_PW2\").val() == \"\")\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"비밀번호 입력하세요\");	\r\n");
      out.write("			$(\"#user_PW2\").focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}			\r\n");
      out.write("		if($(\"#user_name\").val() == \"\")\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"이름을 입력하세요\");	\r\n");
      out.write("			$(\"#user_name\").focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}			\r\n");
      out.write("		if($(\"#birth\").val() == \"\")\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"생년월일을 입력하세요\");	\r\n");
      out.write("			$(\"#birth\").focus();\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if(isCheckID == false)\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"아이디 중복검사를 해주세요!\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if(isCheckPW == false)\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"비밀번호 중복검사를 해주세요!\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if(!$('input[name=gender]').is(\":checked\"))\r\n");
      out.write("		{\r\n");
      out.write("			alert(\"성별을 선택해주세요!\");\r\n");
      out.write("			return;\r\n");
      out.write("		}\r\n");
      out.write("		if(confirm(\"회원가입을 하시겠습니까?\") == 1)\r\n");
      out.write("		{\r\n");
      out.write("			if(isCheckID == true && isCheckPW == true )\r\n");
      out.write("			{\r\n");
      out.write("				$(\"#join\").submit();\r\n");
      out.write("			}\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("	</script>\r\n");
      out.write("	<body>\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<section class=\"join_title\">\r\n");
      out.write("				<h1>회원가입</h1>\r\n");
      out.write("			</section>\r\n");
      out.write("			<section class=\"join_section\">\r\n");
      out.write("				<form name=\"join\" method=\"post\" id=\"join\" action=\"joinok.jsp\">\r\n");
      out.write("					<div class=\"join_list\">\r\n");
      out.write("						<input type=\"text\" class=\"join_textbox1\" id=\"user_ID\" name=\"user_ID\" placeholder=\"아이디 입력\">\r\n");
      out.write("						<input type=\"button\" class=\"btn_joinbox\" id=\"btn_IDcheck\" name=\"btn_IDcheck\" value=\"아이디 확인\">\r\n");
      out.write("						<br><br>\r\n");
      out.write("						<input type=\"password\" class=\"join_textbox2\" id=\"user_PW1\" name=\"user_PW1\"\r\n");
      out.write("							 placeholder=\"비밀번호 입력\">\r\n");
      out.write("						<br><br>\r\n");
      out.write("						<input type=\"password\" class=\"join_textbox1\" id=\"user_PW2\" name=\"user_PW2\"\r\n");
      out.write("						 	placeholder=\"비밀번호 재입력\">\r\n");
      out.write("						<input type=\"button\" class=\"btn_joinbox\" id=\"btn_PWcheck\" name=\"btn_PWcheck\" value=\"비밀번호 확인\">\r\n");
      out.write("						<br><br>\r\n");
      out.write("						<input type=\"text\" class=\"join_textbox2\" id=\"user_name\" name=\"user_name\" placeholder=\"이름\">\r\n");
      out.write("						<br><br>\r\n");
      out.write("						<input type=\"text\" class=\"join_textbox2\" id=\"birth\" name=\"birth\"placeholder=\"생년월일 (YYYYMMDD)\" \r\n");
      out.write("							oninput=\"this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\\..*)\\./g, '$1');\" />\r\n");
      out.write("						<br><br>\r\n");
      out.write("						<!-- 라디오 박스 div 묶어놓음 -->\r\n");
      out.write("						<div class=\"join_radio\">\r\n");
      out.write("							<input type=\"radio\" name=\"gender\" value=\"M\" id=\"gender\">\r\n");
      out.write("							<label for=\"man\">남자</label>\r\n");
      out.write("							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("							<input type=\"radio\" name=\"gender\" value=\"W\" id=\"gender\">\r\n");
      out.write("							<label for=\"woman\">여자</label>\r\n");
      out.write("						</div>\r\n");
      out.write("						<br><br>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"btn_join\">\r\n");
      out.write("						<input type=\"button\" id=\"btn_join\" name=\"btn_join\" value=\"회원가입\">\r\n");
      out.write("					</div>\r\n");
      out.write("				</form>\r\n");
      out.write("			</section>\r\n");
      out.write("		<footer>\r\n");
      out.write("			<article class=\"foot_menu\">\r\n");
      out.write("				<hr style=\"background-color:white;\">\r\n");
      out.write("				명칭: 주식회사 이젠 | 등록번호: 전북 소4048 | 등록연월일: 2022. 10. 14 | 제호: CVING<br>\r\n");
      out.write("				발행: C team  | 발행소: 전라북도 전주시 덕진구 금암동 이젠컴퓨터학원 4층 407호<br>\r\n");
      out.write("				CVING의 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다.<br>\r\n");
      out.write("			</article>\r\n");
      out.write("		</footer>\r\n");
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