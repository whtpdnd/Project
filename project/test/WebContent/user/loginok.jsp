<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>
<%@ page import="lol.vo.*"  %>
<%
String id = request.getParameter("userid");
String pw = request.getParameter("userpw");

DBManager db = new DBManager();
db.DBOpen();

String sql = "";
sql += "select * from user ";
sql += "where uid = '" +id +"' ";
sql += "and upw = md5('" +pw +"') ";
db.OpenQuery(sql);
if(db.GetNext() == true)
{
	UserVO vo = new UserVO();
	vo.setUid(db.GetValue("uid"));
	vo.setUno(db.GetValue("uno"));
	vo.setUname(db.GetValue("uname"));
	session.setAttribute("login", vo);
	
	response.sendRedirect("../main/index.jsp");
}else
{
	%>
	<script>
		alert("아이디 또는 비밀번호가 일치하지 않습니다.");
		document.location="../main/index.jsp";
	</script>
	<% 
}

db.DBClose();
%>    