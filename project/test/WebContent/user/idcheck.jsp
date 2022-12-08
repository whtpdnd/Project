<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>    
<script src="../js/jquery-3.6.0.js"></script>
<%
String id = request.getParameter("id");
DBManager db = new DBManager();

db.DBOpen();

String sql ="";
sql += "select uid from user ";
sql += "where uid = '" +id +"' ";
db.OpenQuery(sql);
if(db.GetNext() == true)
{
	%>
	<script>
		alert("중복된 아이디가 있습니다.");
		window.close();
	</script>
	<% 
	db.DBClose();
}else
{
	%>
	사용 가능한 아이디 입니다
	<br>
	<a href="javascript:window.close();">창 닫기</a>
	<script>
		opener.isCheckID = true;
	</script>
	<% 

}

db.DBClose();
%>    
<script>
	
</script>