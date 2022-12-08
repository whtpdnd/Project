<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>
<%@ page import="lol.vo.*"  %>
<%
request.setCharacterEncoding("euc-kr");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String nickname = request.getParameter("nickname");
String name = request.getParameter("name");
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
String num3 = request.getParameter("num3");
String mail1 = request.getParameter("mail1");
String mail2 = request.getParameter("mail2");
String agree_MAIL = request.getParameter("agree_MAIL");
String agree_SMS = request.getParameter("agree_SMS");

if(agree_MAIL == null)
{
	agree_MAIL = "N";
}
if(agree_SMS == null)
{
	agree_SMS = "N";
}

String pnum =  num1 + "-" + num2 + "-" + num3;
String mail = mail1 +"@" +mail2;

DBManager db = new DBManager();
db.DBOpen();

String sql = "";
sql += "insert into user ";
sql += "(uid,upw,unickname,uname,upnum,umail,umcheck,umscheck) ";
sql += "values('" +id +"',md5('" +pw +"'),'" +nickname +"','" +name +"','" +pnum +"','" +mail +"','" +agree_MAIL +"','" +agree_SMS +"') ";
db.RunSQL(sql);

db.DBClose();
%>

<script>
	alert("회원가입이 완료 되었습니다.");
	document.location = "login.jsp";
</script>