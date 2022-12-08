<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>    
<%
String uno = request.getParameter("uno");
String nickname = request.getParameter("nickname");
String mail1 = request.getParameter("mail1");
String mail2 = request.getParameter("mail2");
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
String num3 = request.getParameter("num3");
String agree_mail = request.getParameter("agree_mail");
String agree_SMS = request.getParameter("agree_SMS");

String pnum = num1 +"-" +num2 +"-" +num3;
String mail = mail1 +"@" +mail2;

if(agree_mail == null) agree_mail = "N";
if(agree_SMS == null) agree_SMS = "N";

DBManager db = new DBManager();

db.DBOpen();
String sql = "";
sql += "update user set ";
sql += "unickname = '" +nickname +"', umail = '" +mail +"', upnum = '" +pnum +"', umcheck = '" +agree_mail +"', umscheck = '" +agree_SMS +"' ";
sql += "where uno= " +uno;
db.RunSQL(sql);
db.DBClose();
%>
<script>
	window.onload = function()
	{
		alert("수정 완료");
		
		window.close();
	}
</script>
