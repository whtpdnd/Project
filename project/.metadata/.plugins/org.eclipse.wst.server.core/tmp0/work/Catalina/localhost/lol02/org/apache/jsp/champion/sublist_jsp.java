/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-11-28 13:41:20 UTC
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

public final class sublist_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

UserVO loginVO = (UserVO)session.getAttribute("logon");
 
String key = request.getParameter("key");
if(key == null) key = "";
String pos = request.getParameter("pos");
if(pos == null) pos = "";
System.out.println("pos:" + pos);

      out.write("\r\n");
      out.write("<table class=\"list_image\" border=\"0\" style=\"width:100%;\">\r\n");
      out.write("	");

	DBManager dbms = new DBManager();
	dbms.DBOpen();
	String sql = "select cpno, cpkname, cpnickname, cpename, cpstdimg, cpinfo from champion ";
	
	sql +="where 1=1 ";
	if(!key.equals(""))
	{
		sql +="and cpkname like '%" + key + "%' ";
	}
	
	String[] posList = pos.split(",");
	if(!pos.equals("") && posList != null)
	{
		for(int i=0; i < posList.length; i++)
		{
			sql +="and cpno in (select cpno from position where pname = '" + posList[i] + "' ) ";
		}
	}
	sql += "order by cpkname ";
	dbms.OpenQuery(sql);
	int rowno = 0;
	
      out.write("\r\n");
      out.write("	<tr>\r\n");
      out.write("	");

	while(dbms.GetNext())
	{
		String cpno = dbms.GetValue("cpno"); 
		String cpkname = dbms.GetValue("cpkname");
		String cpnickname = dbms.GetValue("cpnickname");
		String cpename = dbms.GetValue("cpename");
		String cpstdimg = dbms.GetValue("cpstdimg");
		String cpinfo = dbms.GetValue("cpinfo");
		if(rowno % 5 == 0)
		{
			
      out.write("\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("			");

		}
		
      out.write("			\r\n");
      out.write("		<td align=\"center\" style=\"padding-top:20px; padding-bottom:10px;\">\r\n");
      out.write("		");

		if(loginVO != null && loginVO.getUadmin().equals("A"))
		{
			
      out.write("\r\n");
      out.write("			<input type=\"checkbox\" id=\"check_cpno\" name=\"check_cpno\" value=\"");
      out.print(cpno);
      out.write("\">\r\n");
      out.write("			<br>\r\n");
      out.write("			");
 
		}
		
      out.write("\r\n");
      out.write("		<a href=\"../champion/cpinfo.jsp?cpno=");
      out.print(cpno);
      out.write("\" id=\"cpimg\" onmouseenter=\"DoDetail('");
      out.print( cpno );
      out.write('\'');
      out.write(',');
      out.write('\'');
      out.print( cpstdimg );
      out.write("', '");
      out.print( cpkname );
      out.write("', '");
      out.print(cpename );
      out.write("', '");
      out.print( dbms.ts_form(cpinfo) );
      out.write("');\" >\r\n");
      out.write("		<img src=\"../upload/");
      out.print( cpstdimg );
      out.write("\">\r\n");
      out.write("		</a>\r\n");
      out.write("		<br>\r\n");
      out.write("		<a href=\"cpinfo.jsp?cpno=");
      out.print( cpno );
      out.write('"');
      out.write('>');
      out.print( cpkname );
      out.write("</a>\r\n");
      out.write("		</td>\r\n");
      out.write("		");

		rowno++;
	}
	if(rowno == 0)
	{
		
      out.write("\r\n");
      out.write("		<td height=\"120px\" style=\"text-align:center;\">조회된 챔피언이 없습니다.</td>\r\n");
      out.write("		");
	
	}	
	dbms.CloseQuery();
	
      out.write("\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");

dbms.DBClose();

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
