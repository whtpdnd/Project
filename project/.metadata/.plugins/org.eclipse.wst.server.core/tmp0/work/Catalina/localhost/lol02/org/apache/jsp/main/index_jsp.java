/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-11-28 13:51:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import lol.vo.*;
import lol.dbms.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/main/../include/maintail.jsp", Long.valueOf(1665130417880L));
    _jspx_dependants.put("/main/../include/mainhead.jsp", Long.valueOf(1665130417879L));
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
      out.write(" \r\n");
      out.write("<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("<div class=\"homediv\">\r\n");
      out.write("	<table class=\"mother_frame_tbl\">\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td>\r\n");
      out.write("			<table class=\"picture_frame_tbl\" border=\"0\" > \r\n");
      out.write("				<tr>\r\n");
      out.write("					<td colspan=\"5\" align=\"right\" style=\"height:35px; border-bottom: 1px solid #444444;\"><a class=\"iconthe\" href=../champion/cplist.jsp>더보기 +</a></td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("	");

	DBManager dbms = new DBManager();
	dbms.DBOpen();
	String sql = "select cpno, cpkname, cpstdimg from champion ";
	sql += "order by cpdate desc ";
	sql += "limit 0, 10 ";
	dbms.OpenQuery(sql);
	int rowno = 0;
	
      out.write("\r\n");
      out.write("	<tr class=\"index_cpnamecolor\">\r\n");
      out.write("	");

	while(dbms.GetNext())
	{
		
		String cpno = dbms.GetValue("cpno"); 
		String cpkname = dbms.GetValue("cpkname");
		String cpstdimg = dbms.GetValue("cpstdimg");
		if(rowno % 5 == 0)
		{
			
      out.write("\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr class=\"index_cpnamecolor\">\r\n");
      out.write("			");

		}
		
      out.write("\r\n");
      out.write("			<td align=\"center\">\r\n");
      out.write("			<a href=\"../champion/cpinfo.jsp?cpno=");
      out.print( cpno );
      out.write("\">\r\n");
      out.write("			<img src=\"../upload/");
      out.print( cpstdimg );
      out.write("\">\r\n");
      out.write("			</a>\r\n");
      out.write("			<a href=\"../champion/cpinfo.jsp?cpno=");
      out.print( cpno );
      out.write("\"><br>");
      out.print( cpkname );
      out.write("</a>\r\n");
      out.write("			</td>\r\n");
      out.write("		");

		rowno++;
	}
	if(rowno == 0)
	{
		
      out.write("\r\n");
      out.write("		<td align=\"center\">조회된 챔피언이 없습니다</td>\r\n");
      out.write("		");

	}
	dbms.CloseQuery();
	
      out.write("	\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table border=\"0\" style=\"width:100%; height:20px; background-color: white;\">\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td colspan=\"5\" align=\"right\" style=\"height:35px; border-bottom: 1px solid #444444;\">\r\n");
      out.write("		<a class=\"iconthe\" href=../champion/cpreview.jsp>\r\n");
      out.write("		더보기 +\r\n");
      out.write("		</a></td>\r\n");
      out.write("	</tr>\r\n");
      out.write("</table> \r\n");
      out.write("<table border=\"0\" style=\"width:100%; height:350px; background-color: white; \" >\r\n");
      out.write("			");

				sql = "";
				sql += "select rnote, ";
				sql += "(select cpno from champion where cpno = review.cpno) as cpno, ";
				sql += "(select cpkname from champion where cpno = review.cpno) as cpkname, ";
				sql += "(select cpstdimg from champion where cpno = review.cpno) as cpstdimg, ";
				sql += "(select uname from user where uno = review.uno) as uname ";
				sql += "from review ";
				sql += "order by rdate desc ";
				sql += "limit 0,3 ";
				dbms.OpenQuery(sql);
				boolean check_data = false;
				while(dbms.GetNext())
				{
					check_data = true;
					String rnote = dbms.GetValue("rnote");
					String cpno = dbms.GetValue("cpno");
					String cpkname = dbms.GetValue("cpkname");
					String cpstdimg = dbms.GetValue("cpstdimg");
					String uname = dbms.GetValue("uname");
					
      out.write("\r\n");
      out.write("					<tr class=\"index_cp_view\">\r\n");
      out.write("						<td align=\"center\" width=\"200px\" height=\"100px\"><a href=\"../champion/cpinfo.jsp?cpno=");
      out.print( cpno );
      out.write("\">\r\n");
      out.write("						<img src=\"../upload/");
      out.print( cpstdimg );
      out.write("\"></a>\r\n");
      out.write("						<br>\r\n");
      out.write("						<a href=\"../champion/cpinfo.jsp?cpno=");
      out.print( cpno );
      out.write('"');
      out.write('>');
      out.print( cpkname );
      out.write("</a>\r\n");
      out.write("						</td>\r\n");
      out.write("						<td><div style=\"width:98%; height:98%;\"><a href=\"../champion/cpinfo.jsp?cpno=");
      out.print( cpno );
      out.write('"');
      out.write('>');
      out.print( rnote );
      out.write("</a></div></td>\r\n");
      out.write("						<td width=\"150px\" align=\"center\">");
      out.print( uname );
      out.write("</td>\r\n");
      out.write("					</tr>			\r\n");
      out.write("					");
	
				}	
				if(check_data == false)
				{
					
      out.write("\r\n");
      out.write("					<tr>\r\n");
      out.write("					<td align=\"center\">챔피언 댓글 정보가 없습니다</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					");

				}
				
      out.write("\r\n");
      out.write("				</table>	\r\n");
      out.write("			</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("	</table>\r\n");
      out.write("</div>	\r\n");
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
