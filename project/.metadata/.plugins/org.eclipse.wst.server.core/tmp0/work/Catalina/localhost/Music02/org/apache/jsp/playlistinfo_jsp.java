/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-12-05 13:42:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class playlistinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"EUC-KR\">\r\n");
      out.write("		<title>플레이 리스트 정보</title>\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("		<script src=\"./js/jquery-3.6.0.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("	<script>\r\n");
      out.write("	window.onload = function()\r\n");
      out.write("	{\r\n");
      out.write("		$(\"#btn_login\").click(function(){\r\n");
      out.write("			OpenWindow(500, 400, \"login.jsp\", \"로그인\");\r\n");
      out.write("		});\r\n");
      out.write("		\r\n");
      out.write("		$(\"#btn_join\").click(function(){\r\n");
      out.write("			OpenWindow(500, 550, \"join.jsp\", \"회원가입\");\r\n");
      out.write("		});\r\n");
      out.write("	}\r\n");
      out.write("	//팝업창 원하는 크기로 화면 중앙에 띄워주는 함수.\r\n");
      out.write("	function OpenWindow(width, height, url, pop_name)\r\n");
      out.write("	{\r\n");
      out.write("		var _width = width;\r\n");
      out.write("		var _height = height;\r\n");
      out.write("		 \r\n");
      out.write("		// 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기\r\n");
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
      out.write("				  <input class=\"search-txt\" type=\"text\" placeholder=\"검색어를 입력해 주세요.\">\r\n");
      out.write("				  <a href=\"search.jsp\" class=\"search-btn\">\r\n");
      out.write("				  	 <i class=\"fas fa-search\"></i>\r\n");
      out.write("				  </a>\r\n");
      out.write("				</form>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"login\">\r\n");
      out.write("				<button id=\"btn_login\">로그인</button>	\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"join\">\r\n");
      out.write("				<button id=\"btn_join\">회원가입</button>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"category\"> \r\n");
      out.write("				<div style=\"float:left;\"><h2><a href=\"musiclist.jsp\" class=\"cate1\">노래 목록 </a></h2></div>\r\n");
      out.write("				<div style=\"float:left; padding-left:20px; padding-right:20px;\"><h2><a href=\"playlist.jsp\" class=\"cate_on\">&nbsp;플레이 리스트 </a></h2></div>\r\n");
      out.write("				<div style=\"float:left;\"><h2><a href=\"mytaste.jsp\" class=\"cate1\">&nbsp;내 취향 분석</a></h2></div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"playlist_body\">\r\n");
      out.write("			<hr>\r\n");
      out.write("			<div class=\"playlist_img\">\r\n");
      out.write("				<img src=\"./img/imsi_img.jpg\" style=\"width: 262px; height: 262px;\">\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"platlist_info\">\r\n");
      out.write("				<h2>오늘같이 싱그러운 날엔?</h2>\r\n");
      out.write("				<table class=\"music_info\" style=\"border-spacing: 0 10px;\">\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>작성자</td>\r\n");
      out.write("						<td>&nbsp;user</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>작성일</td>\r\n");
      out.write("						<td>&nbsp;2022.10.18</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>장르</td>\r\n");
      out.write("						<td>인디/어쿠스틱,발라드</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td>수록곡</td>\r\n");
      out.write("						<td>25곡</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("				</table>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		\r\n");
      out.write("		<div class=\"playlist_body2\">\r\n");
      out.write("		<h2>수록곡</h2>\r\n");
      out.write("			<hr>	\r\n");
      out.write("			<table border=\"0\" class=\"playlist_page\">\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th class=\"tbl\" width=\"80px\" colspan=\"2\" align=\"center\">NO</th>\r\n");
      out.write("					<th class=\"tbl\" width=\"350px\" align=\"left\">제목</th>\r\n");
      out.write("					<th class=\"tbl\" width=\"450px\" align=\"left\">앨범명</th>\r\n");
      out.write("					<th class=\"tbl\" width=\"80px\" align=\"center\">가수</th>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">1</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/music_img.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">내가 저지른 사랑</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">I'M</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">임창정</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">2</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/ive.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">After LIKE</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">After LIKE</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">IVE (아이브)</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">3</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/zico.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">새삥 (Prod. ZICO) (Feat. 호미들)</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">스트릿 맨 파이터(SMF) Original Vol.3 (계급미션)</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">지코 (ZICO)</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">4</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/lovedive.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">LOVE DIVE</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">LOVE DIVE</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">IVE (아이브)</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">5</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/10cm.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">딱 10CM만</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">딱 10CM만</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">10CM, BIG Naughty (서동현)</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">6</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/tomboy.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">TOMBOY</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">I NEVER DIE</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">(여자)아이들</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">7</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/wsg.jpg\"></a></td>\r\n");
      out.write("		 			<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">그때 그 순간 그대로 (그그그)</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">WSG워너비 1집</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">WSG워너비 (가야G)</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">8</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/mellomas.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">사랑인가 봐</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">사랑인가 봐 (사내맞선 OST 스페셜 트랙)</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">멜로망스</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">9</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/myx.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">나의 X에게</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">나의 X에게</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">경서</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\">10</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"center\"><a href=\"#\"><img width=\"60\" height=\"60\" src=\"./img/10cm-grdes.jpg\"></a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"350px\" align=\"justify\"><a href=\"#\" class=\"title\">그라데이션</a></td>\r\n");
      out.write("					<td class=\"tbl\" width=\"450px\" align=\"justify\">5.3</td>\r\n");
      out.write("					<td class=\"tbl\" width=\"80px\" align=\"justify\"><div class=\"div_singer\">10CM</div></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</table>\r\n");
      out.write("		</div>\r\n");
      out.write("		<br>\r\n");
      out.write("		<div class=platlist_page>\r\n");
      out.write("			<a href=\"#\" class=\"pageno\">이전 페이지</a> | \r\n");
      out.write("			<a href=\"#\" class=\"pageno\">1</a> | \r\n");
      out.write("			<a href=\"#\" class=\"pageno\">2</a> | \r\n");
      out.write("			<a href=\"#\" class=\"pageno\">3</a> | \r\n");
      out.write("			<a href=\"#\" class=\"pageno\">다음 페이지</a>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"footer\">\r\n");
      out.write("		<hr>\r\n");
      out.write("			명칭: 주식회사 이젠 | 등록번호: 전북 소4048 | 등록연월일: 2022. 11. 24 | 제호: Music<br>\r\n");
      out.write("				발행: C team | 발행소: 전라북도 전주시 덕진구 금암동 이젠컴퓨터학원 4층 407호<br> Music의\r\n");
      out.write("				콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다.<br>\r\n");
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