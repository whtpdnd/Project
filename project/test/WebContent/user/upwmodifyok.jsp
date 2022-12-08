<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>     
<%
String uno = request.getParameter("uno");
String curpw = request.getParameter("curpw");
String mpw = request.getParameter("mpw");
DBManager db = new DBManager();
db.DBOpen();

String sql ="";
sql += "select uno from user ";
sql += "where upw = md5('" +curpw +"') ";
sql += "and uno = " +uno;
db.OpenQuery(sql);
if(db.GetNext() == false) 
{
	//현재 비밀번호가 일치하지 않는 경우
	%>
	<script>
		alert("현재 비밀번호가 일치하지 않습니다.");
		document.location ="upwmodify.jsp?uno=<%= uno %>";
	</script>
	<% 
}

sql ="";
sql += "update user set ";
sql += "upw = md5('" +mpw +"') ";

db.RunSQL(sql);

db.DBClose();
%>    
<script>
	alert("비밀번호 변경이 완료 되었습니다");
	window.close();
</script>