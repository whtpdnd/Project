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
	//���� ��й�ȣ�� ��ġ���� �ʴ� ���
	%>
	<script>
		alert("���� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
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
		<title>ȸ��Ż��</title>	
	</head>
	<body>
	<script>
		window.onload = function()
		{
			opener.location.reload();
			alert("Ż�� �Ϸ�Ǿ����ϴ�.");
			window.close();
		}
	</script>
	</body>
</html>