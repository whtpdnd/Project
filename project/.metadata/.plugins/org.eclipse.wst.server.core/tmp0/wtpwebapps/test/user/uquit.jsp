<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>         
<%
String uno = request.getParameter("uno");
String pw = request.getParameter("pwcheck");

DBManager db = new DBManager();

db.DBOpen();

String sql ="";
sql += "select uno from user ";
sql += "where upw = md5('" +pw +"') ";
sql += "and uno = " +uno;
db.OpenQuery(sql);
if(db.GetNext() == false) 
{
	//현재 비밀번호가 일치하지 않는 경우
	%>
	<script>
		alert("현재 비밀번호가 일치하지 않습니다.");
		document.location ="uquitcheck.jsp?uno=<%= uno %>";
	</script>
	<% 
}else
{
	sql ="";
	sql += "delete from user where uno= " +uno;
	db.RunSQL(sql);	
}
db.DBClose();
session.removeAttribute("login");
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>회원탈퇴</title>	
	</head>
	<body>
	<script>
		window.onload = function()
		{
			opener.location.reload();
			alert("탈퇴가 완료되었습니다.");
			window.close();
		}
	</script>
	</body>
</html>