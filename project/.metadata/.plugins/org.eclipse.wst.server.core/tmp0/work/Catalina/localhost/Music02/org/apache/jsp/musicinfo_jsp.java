/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-12-05 13:44:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class musicinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/../include/head.jsp", Long.valueOf(1670203172926L));
  }

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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"EUC-KR\">\r\n");
      out.write("		<title>????????????</title>\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("		<script src=\"./js/jquery-3.6.0.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("	<script>\r\n");
      out.write("	window.onload = function()\r\n");
      out.write("	{\r\n");
      out.write("		$(\"#btn_login\").click(function(){\r\n");
      out.write("			OpenWindow(500, 400, \"login.jsp\", \"?????????\");\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("		$(\"#btn_join\").click(function(){\r\n");
      out.write("			OpenWindow(500, 550, \"join.jsp\", \"????????????\");\r\n");
      out.write("		});\r\n");
      out.write("	}\r\n");
      out.write("	//????????? ????????? ????????? ?????? ????????? ???????????? ??????.\r\n");
      out.write("	function OpenWindow(width, height, url, pop_name)\r\n");
      out.write("	{\r\n");
      out.write("		var _width = width;\r\n");
      out.write("		var _height = height;\r\n");
      out.write("		 \r\n");
      out.write("		// ????????? ????????? ??????????????? ?????? ????????? ?????? ??? ?????????\r\n");
      out.write("		var _left = Math.ceil(( window.screen.width - _width )/2);\r\n");
      out.write("		var _top = Math.ceil(( window.screen.height - _height )/2);\r\n");
      out.write("		window.open(url, pop_name, 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );\r\n");
      out.write("	}\r\n");
      out.write("	</script>\r\n");
      out.write("		<div class=\"header\">\r\n");
      out.write("			<div class=\"logo\">\r\n");
      out.write("				<a href=\"index.jsp\"><img src=\"./img/melon.jpg\"></a>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"search-box\">\r\n");
      out.write("				<form action=\"search.jsp\" method=\"post\">\r\n");
      out.write("				  <input class=\"search-txt\" type=\"text\" placeholder=\"???????????? ????????? ?????????.\">\r\n");
      out.write("				  <a href=\"search.jsp\" class=\"search-btn\">\r\n");
      out.write("				  	 <i class=\"fas fa-search\"></i>\r\n");
      out.write("				  </a>\r\n");
      out.write("				</form>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"login\">\r\n");
      out.write("				<button id=\"btn_login\">?????????</button>	\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"join\">\r\n");
      out.write("				<button id=\"btn_join\">????????????</button>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"category\"> \r\n");
      out.write("				<div style=\"float:left;\"><h2><a href=\"musiclist.jsp\" class=\"cate1\">?????? ?????? </a></h2></div>\r\n");
      out.write("				<div style=\"float:left; padding-left:20px; padding-right:20px;\"><h2><a href=\"playlist.jsp\" class=\"cate1\">&nbsp;????????? ????????? </a></h2></div>\r\n");
      out.write("				<div style=\"float:left;\"><h2><a href=\"mytaste.jsp\" class=\"cate1\">&nbsp;??? ?????? ??????</a></h2></div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>");
      out.write("\r\n");
      out.write("		<div class=\"musicbody\">\r\n");
      out.write("			<hr>\r\n");
      out.write("			<h2>??? ??????</h2>\r\n");
      out.write("			<div class=\"info_body\">\r\n");
      out.write("				<div class=\"music_img\">\r\n");
      out.write("					<img width=\"282\" height=\"282\" src=\"./img/mellomas.jpg\">\r\n");
      out.write("				</div>\r\n");
      out.write("				<h2>???????????????</h2><br>\r\n");
      out.write("					<b style=\"color:#00cd3c;\">????????????</b><br>\r\n");
      out.write("				<table class=\"music_info\" style=\"border-spacing: 0 10px;\">\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>??????</td>\r\n");
      out.write("						<td>???????????? ??? (???????????? OST ????????? ??????)</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>?????????</td>\r\n");
      out.write("						<td>&nbsp;2022.02.18</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>??????</td>\r\n");
      out.write("						<td>?????????</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("				</table>\r\n");
      out.write("				<div class=\"play\">\r\n");
      out.write("					<audio src=\"Song/????????????-01-???????????? ???-???????????? ??? (???????????? OST ????????? ???-192.mp3\" controls >\r\n");
      out.write("						\r\n");
      out.write("					</audio>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"similar_div\">\r\n");
      out.write("					<h2 style=\"\">????????? ??????</h2>\r\n");
      out.write("					<a href=\"musicinfo.jsp\"><img width=\"72\" height=\"72\" src=\"./img/10cm-grdes.jpg\"></a>\r\n");
      out.write("					<div class=\"song_info\">\r\n");
      out.write("						<b><a href=\"musicinfo.jsp\">??? ????????? ?????? ?????? ????????? ???</a></b>\r\n");
      out.write("						<br>\r\n");
      out.write("						<font size=\"2px\">?????? : ?????????</font>\r\n");
      out.write("						<br>\r\n");
      out.write("						<font size=\"2px\">?????? : ?????????</font>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"similar_border\"></div>\r\n");
      out.write("					<a href=\"musicinfo.jsp\"><img width=\"72\" height=\"72\" src=\"./img/10cm-grdes.jpg\"></a>\r\n");
      out.write("					<div class=\"song_info\">\r\n");
      out.write("						<b><a href=\"musicinfo.jsp\">??? ????????? ?????? ?????? ????????? ???</a></b>\r\n");
      out.write("						<br>\r\n");
      out.write("						<font size=\"2px\">?????? : ?????????</font>\r\n");
      out.write("						<br>\r\n");
      out.write("						<font size=\"2px\">?????? : ?????????</font>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div class=\"similar_border\"></div>\r\n");
      out.write("					<a href=\"musicinfo.jsp\"><img width=\"72\" height=\"72\" src=\"./img/10cm-grdes.jpg\"></a>\r\n");
      out.write("					<div class=\"song_info\">\r\n");
      out.write("						<b><a href=\"musicinfo.jsp\">??? ????????? ?????? ?????? ????????? ???</a></b>\r\n");
      out.write("						<br>\r\n");
      out.write("						<font size=\"2px\">?????? : ?????????</font>\r\n");
      out.write("						<br>\r\n");
      out.write("						<font size=\"2px\">?????? : ?????????</font>\r\n");
      out.write("					</div>\r\n");
      out.write("					<div></div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("				<a href=\"#\" class=\"hover\"><b>????????????????????? ??????</b></a>\r\n");
      out.write("			<div class=\"lyricsbox\">\r\n");
      out.write("				<h2 style=\"position: relative; left: 25%;\">??????</h2>\r\n");
      out.write("				<hr class=\"lyricsline\">\r\n");
      out.write("				<div class=\"lyrics\">\r\n");
      out.write("					?????? ?????? ?????? ?????? ?????????<br>\r\n");
      out.write("					???????????? ???<br>\r\n");
      out.write("					?????? ??? ????????? ??????<br>\r\n");
      out.write("					?????? ??????????????? ????????? ?????? ?????????<br>\r\n");
      out.write("					???????????? ?????? ?????? ?????? ???<br>\r\n");
      out.write("					?????? ????????? ??????????????? ???????????????<br>\r\n");
      out.write("					????????? ?????? ???????????????<br>\r\n");
      out.write("					?????? ?????? ?????? ????????? ??????<br>\r\n");
      out.write("					?????? ????????? ?????? ??????<br>\r\n");
      out.write("					??? ???????????? ?????? ?????? ???<br>\r\n");
      out.write("					???????????? ???????????? ???<br>\r\n");
      out.write("					?????? ?????? ?????? ?????? ?????? ???????????????<br>\r\n");
      out.write("					?????? ?????? ?????? ???????????????<br>\r\n");
      out.write("					?????? ?????? ?????? ????????? ??????<br>\r\n");
      out.write("					?????? ????????? ?????? ??????<br>\r\n");
      out.write("					??? ???????????? ?????? ?????? ???<br>\r\n");
      out.write("					???????????? ???????????? ???<br>\r\n");
      out.write("					?????? ??????????????? ????????? ?????? ?????????<br>\r\n");
      out.write("					?????? ????????? ?????? ?????????<br>\r\n");
      out.write("					??? ????????? ????????? ????????????<br>\r\n");
      out.write("					?????? ?????? ?????? ?????????<br>\r\n");
      out.write("					?????? ?????? ??? ????????????<br>\r\n");
      out.write("					?????? ????????? ????????????<br>\r\n");
      out.write("					???????????? ???????????? ???<br>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"footer1\">\r\n");
      out.write("	<hr>\r\n");
      out.write("		??????: ???????????? ?????? | ????????????: ?????? ???4048 | ???????????????: 2022. 11. 24 | ??????: Music<br>\r\n");
      out.write("			??????: C team | ?????????: ???????????? ????????? ????????? ????????? ????????????????????? 4??? 407???<br> Music???\r\n");
      out.write("			???????????? ??????????????? ????????? ????????????, ?????? ??????, ??????, ?????? ?????? ????????????.<br>\r\n");
      out.write("</div>\r\n");
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
