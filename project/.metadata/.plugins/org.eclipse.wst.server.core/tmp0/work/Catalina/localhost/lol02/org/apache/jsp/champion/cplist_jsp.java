/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-11-28 13:51:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.champion;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import lol.vo.*;
import lol.dbms.*;

public final class cplist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/champion/../include/maintail.jsp", Long.valueOf(1665130417880L));
    _jspx_dependants.put("/champion/../include/mainhead.jsp", Long.valueOf(1665130417879L));
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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");

UserVO loginVO = (UserVO)session.getAttribute("logon");


      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"EUC-KR\">\r\n");
      out.write("		<title>League of Legend Inven</title>\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"../css/style.css\"/>	\r\n");
      out.write("		<script src=\"../js/jquery-3.6.0.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body style=\"padding:0 0 0 0; margin: 0 0 0 0;\">\r\n");
      out.write("	<script>\r\n");
      out.write("		function DoModify()\r\n");
      out.write("		{\r\n");
      out.write("			");

			if(loginVO != null)
			{
				
      out.write("	\r\n");
      out.write("				window.open(\"../user/uinfomodify.jsp?uno=");
      out.print( loginVO.getUno() );
      out.write("\", \"_uinfomodify\",\r\n");
      out.write("				\"width=538,height=360,left=700,top=400\");		\r\n");
      out.write("				");

			}
			
      out.write("\r\n");
      out.write("		}\r\n");
      out.write("		function DoQuit()\r\n");
      out.write("		{\r\n");
      out.write("			");

			if(loginVO != null)
			{
				
      out.write("\r\n");
      out.write("				window.open(\"../user/uquitcheck.jsp?uno=");
      out.print( loginVO.getUno() );
      out.write("\", \"_uquitcheck\",\r\n");
      out.write("				\"width=500,height=200,left=800,top=500\");\r\n");
      out.write("				");

			}
			
      out.write("\r\n");
      out.write("				\r\n");
      out.write("		}\r\n");
      out.write("		function DoLogout()\r\n");
      out.write("		{\r\n");
      out.write("			document.location = \"../user/logout.jsp\";\r\n");
      out.write("		}\r\n");
      out.write("	</script>\r\n");
      out.write("		<!-- 상단 리그오브레전드 이미지부분 -->\r\n");
      out.write("		<table width=\"900px\" align=\"center\" style=\"border-collapse :collapse;\" >\r\n");
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
      out.write("		<table border=\"1\" border-collapse=collapse border-spacing=0px width=\"1200px\" height=\"800px\" align=\"center\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td colspan=\"3\" style=\"text-align:right; height:30px;\">\r\n");
      out.write("				<div class=\"topmenu\" style=\"height:32px; padding-top:10px;\">\r\n");
      out.write("					");

					if(loginVO != null)
					{
						//로그인이 되어 있을 때!!!
						
      out.write("\r\n");
      out.write("						<span style=\"color:darkred;\">");
      out.print( loginVO.getUname() );
      out.write("</span> <span style=\"color:lightgray;\">님 반갑습니다!</span>\r\n");
      out.write("						<a href=\"javascript:DoLogout();\">로그아웃</a>\r\n");
      out.write("						<a href=\"javascript:DoModify();\">회원정보수정</a>\r\n");
      out.write("						<a href=\"javascript:DoQuit();\">회원탈퇴</a>&nbsp;&nbsp;&nbsp;\r\n");
      out.write("						");

					}else
					{
						//로그인이 안되어 있을 때 
						
      out.write("\r\n");
      out.write("						<a href=\"../user/join.jsp\">회원가입</a>\r\n");
      out.write("						<a href=\"../user/login.jsp\">로그인</a>\r\n");
      out.write("						&nbsp;&nbsp;\r\n");
      out.write("						");

					}
					
      out.write("\r\n");
      out.write("				</div>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td class=\"leftmenu\" style=\"width:200px;\" valign=\"top\">\r\n");
      out.write("						<a href=\"../main/index.jsp\">홈</a>\r\n");
      out.write("						<br>\r\n");
      out.write("						<a href=\"../champion/cplist.jsp\">챔피언 목록</a>\r\n");
      out.write("						<br>\r\n");
      out.write("						<a href=\"../champion/cpreview.jsp\">챔피언 평가</a>		\r\n");
      out.write("						<br>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td valign=\"top\">");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("	var ageArr = new Array();\r\n");
      out.write("	window.onload = function()\r\n");
      out.write("	{\r\n");
      out.write("		PrintList();\r\n");
      out.write("		\r\n");
      out.write("		$(\"#btn_delete\").click(function(){\r\n");
      out.write("		\r\n");
      out.write("			//삭제 버튼을 누르면 체크박스를 배열로 얻어와서 그 크기만큼 반복문을 실행한다.\r\n");
      out.write("			var checked_value = \"\";\r\n");
      out.write("		\r\n");
      out.write("			$(\"input:checkbox[name='check_cpno']\").each(function()\r\n");
      out.write("			{				\r\n");
      out.write("				if(this.checked == true)\r\n");
      out.write("				{\r\n");
      out.write("					if(checked_value != \"\") checked_value += \",\";\r\n");
      out.write("					checked_value += this.value;\r\n");
      out.write("					//checked_value = checked_value + this.value;\r\n");
      out.write("				}\r\n");
      out.write("			});\r\n");
      out.write("			\r\n");
      out.write("			if(confirm(\"정말 삭제 하시겠습니까?\"))\r\n");
      out.write("			{\r\n");
      out.write("				window.open(\"../admin/cpdelete.jsp?cpno=\" + checked_value, \"_cpdelete\",\r\n");
      out.write("				\"width=600,height=550\");	\r\n");
      out.write("			}\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("		$(\"#key\").keyup(function(){\r\n");
      out.write("			PrintList();\r\n");
      out.write("		});\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	function DoCpAdd()\r\n");
      out.write("	{\r\n");
      out.write("		window.open(\"../admin/cpadd.jsp\", \"_cpadd\",\r\n");
      out.write("		\"width=600,height=550\");	\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	function DoCpDelete()\r\n");
      out.write("	{\r\n");
      out.write("		window.open(\"../admin/cpdelete.jsp\", \"_cpadd\",\r\n");
      out.write("		\"width=600,height=550\");\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	//매개변수 받아오는 값 순cpno, cpstdimg, cpkname, cpename, cpinfo\r\n");
      out.write("	//마우스 over시 발동되는 메소드\r\n");
      out.write("	\r\n");
      out.write("	function DoDetail(cpno, img, name, ename, info)\r\n");
      out.write("	{\r\n");
      out.write("		//메소드가 실행되면 div가 보여지게함\r\n");
      out.write("		$.ajax({\r\n");
      out.write("				type : \"get\",\r\n");
      out.write("				url: \"../champion/position.jsp?cpno=\" + cpno,\r\n");
      out.write("				dataType: \"html\",\r\n");
      out.write("				success : function(data)\r\n");
      out.write("				{	\r\n");
      out.write("					// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.	\r\n");
      out.write("					data = data.trim();\r\n");
      out.write("					$(\"#cpdetail\").css(\"display\",\"\");\r\n");
      out.write("					$(\"#td_name\").html(name);\r\n");
      out.write("					$(\"#td_ename\").html(ename);\r\n");
      out.write("					$(\"#td_info\").html(info);\r\n");
      out.write("			\r\n");
      out.write("					$(\"#td_position\").html(data);\r\n");
      out.write("					$(\"#td_position\").css(\"color\",\"lightgray\");\r\n");
      out.write("					$(\"#td_img\").attr(\"src\",\"../upload/\"+img);\r\n");
      out.write("					//마우스가 움직일때 따라다니는 코드\r\n");
      out.write("				},\r\n");
      out.write("				error : function(xhr, status, error) \r\n");
      out.write("				{\r\n");
      out.write("					// 통신 오류 발생시\r\n");
      out.write("				}\r\n");
      out.write("			});\r\n");
      out.write("		\r\n");
      out.write("		$(document).mousemove(\r\n");
      out.write("				function(e) {\r\n");
      out.write("			      mouseX = e.pageX;\r\n");
      out.write("			      mouseY = e.pageY;\r\n");
      out.write("			      $('#cpdetail').css(\"left\", mouseX+15).css(\"top\", mouseY+15);\r\n");
      out.write("			 });\r\n");
      out.write("			\r\n");
      out.write("			//마우스가 떠나면 보이지 않게함.\r\n");
      out.write("			$(this).mouseleave(\r\n");
      out.write("				function()\r\n");
      out.write("				{\r\n");
      out.write("					$(\"#cpdetail\").css(\"display\",\"none\");\r\n");
      out.write("				}		\r\n");
      out.write("			);\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	//챔피언 목록 테이블을 출력한다.\r\n");
      out.write("	function PrintList()\r\n");
      out.write("	{\r\n");
      out.write("		checked_value = \"\";\r\n");
      out.write("		$(\"input:checkbox[name='search_pos']\").each(function()\r\n");
      out.write("		{				\r\n");
      out.write("			if(this.checked == true)\r\n");
      out.write("			{\r\n");
      out.write("				if(checked_value != \"\") checked_value += \",\";\r\n");
      out.write("				checked_value += this.value;\r\n");
      out.write("			}\r\n");
      out.write("		});\r\n");
      out.write("		//alert(checked_value);\r\n");
      out.write("		\r\n");
      out.write("		var key = $(\"#key\").val();\r\n");
      out.write("		\r\n");
      out.write("		\r\n");
      out.write("		$.ajax({\r\n");
      out.write("			type : \"get\",\r\n");
      out.write("			url: \"sublist.jsp?key=\" + key + \"&pos=\" + checked_value,\r\n");
      out.write("			dataType: \"html\",\r\n");
      out.write("			success : function(data)\r\n");
      out.write("			{	\r\n");
      out.write("				// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.	\r\n");
      out.write("				data = data.trim();\r\n");
      out.write("				$(\"#cpList\").html(data);\r\n");
      out.write("			},\r\n");
      out.write("			error : function(xhr, status, error) \r\n");
      out.write("			{\r\n");
      out.write("				// 통신 오류 발생시\r\n");
      out.write("			}\r\n");
      out.write("		});		\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("<table  class=\"inner\" border=\"0\" style=\"width:100%;\">\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td>챔피언 목록입니다.</td>\r\n");
      out.write("		");

		if(loginVO != null && loginVO.getUadmin().equals("A"))
		{
			
      out.write("\r\n");
      out.write("			<td align=\"center\"><a href=\"javascript:DoCpAdd();\">챔피언 추가</a></td>\r\n");
      out.write("			<td align=\"center\"><a href=\"#\" id=\"btn_delete\">챔피언 삭제</a></td>\r\n");
      out.write("			");
		
		}
		
      out.write("\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<div class= \"inner_a\">\r\n");
      out.write("	<table border=\"0\" style=\"width:100%;\">\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td><a>역할필터</a></td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td align=\"center\" >\r\n");
      out.write("			<input type=\"checkbox\" id=\"search_pos\" name=\"search_pos\" value=\"전사\" onchange=\"PrintList();\">&nbsp;&nbsp;전사&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("			<input type=\"checkbox\" id=\"search_pos\" name=\"search_pos\" value=\"마법사\" onchange=\"PrintList();\">&nbsp;&nbsp;마법사&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("			<input type=\"checkbox\" id=\"search_pos\" name=\"search_pos\" value=\"원거리\" onchange=\"PrintList();\">&nbsp;&nbsp;원거리\r\n");
      out.write("			</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td  class=\"search\" align=\"right\">			\r\n");
      out.write("			<input type=\"text\" id=\"key\" name=\"key\" size=\"10\" value=\"\"> <a href=\"../champion/cplist.jsp\">초기화</a>\r\n");
      out.write("			</td>\r\n");
      out.write("		</tr>	\r\n");
      out.write("	</table>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"divnull\">\r\n");
      out.write("	<br>\r\n");
      out.write("</div>\r\n");
      out.write("<form id=\"frmDelete\" name=\"frmDelete\" method=\"post\" action=\"../admin/cpdelete.jsp\">\r\n");
      out.write("</form>\r\n");
      out.write("<table border=\"0\" style=\"width:100%;height:600px;\">\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td valign=\"top\" style=\"background-color:#fafafa;\"><div id=\"cpList\"></div></td>\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<div id=\"cpdetail\" style=\"display:none; width:500px;\">\r\n");
      out.write("<table border=\"0\" style=\"background-color:black;\">\r\n");
      out.write(" 	<tr>\r\n");
      out.write(" 		<td rowspan=\"3\" style=\"width:30px;\"><img id=\"td_img\" src=\"\"></td>\r\n");
      out.write(" 		<td id=\"td_name\" style=\"color:#F6700E;\"></td>\r\n");
      out.write(" 	</tr>\r\n");
      out.write(" 	<tr>\r\n");
      out.write(" 		<td id=\"td_ename\" style=\"color:#8eb3b8;\"></td>\r\n");
      out.write(" 	</tr>\r\n");
      out.write(" 	<tr>\r\n");
      out.write(" 		<td id=\"td_position\" style=\"color:#white;\"></td>\r\n");
      out.write(" 	</tr>\r\n");
      out.write(" 	<tr>\r\n");
      out.write(" 		<td colspan=\"2\" id=\"td_info\" style=\"color:#a0acbd;\"></td>\r\n");
      out.write(" 	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("		<footer>\r\n");
      out.write("			명칭: 주식회사 이젠 | 등록번호: 전북 소4048 | 등록연월일: 2022. 10. 14 | 제호: 롤 인벤(LOL INVEN)<br>\r\n");
      out.write("			발행: C team  | 발행소: 전라북도 전주시 덕진구 금암동 이젠컴퓨터학원 4층 407호<br>\r\n");
      out.write("			롤 인벤의 콘텐츠 및 기사는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다.<br>\r\n");
      out.write("		</footer>	\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
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
