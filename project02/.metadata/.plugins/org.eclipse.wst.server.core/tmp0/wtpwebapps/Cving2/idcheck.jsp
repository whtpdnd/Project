<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cving.dbms.*" %>
<%
String id = request.getParameter("id");

DBManager db = new DBManager();
db.DBOpen();

String sql = "";
sql += "select uid from user ";
sql += "where uid = '" +id + "' ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	%>
	<script>
		alert("사용하실수 있는 아이디입니다");
		opener.UseID = true;
		window.close();
	</script>
	<% 	
}else
{
	%>
	<script>
		alert("사용하실수 없는 아이디입니다");
		opener.UseID = false;
	</script>
	<% 
}
db.CloseQuery();
db.DBClose();
%>
