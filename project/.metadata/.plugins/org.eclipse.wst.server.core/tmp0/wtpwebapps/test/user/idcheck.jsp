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
		alert("�ߺ��� ���̵� �ֽ��ϴ�.");
		window.close();
	</script>
	<% 
	db.DBClose();
}else
{
	%>
	��� ������ ���̵� �Դϴ�
	<br>
	<a href="javascript:window.close();">â �ݱ�</a>
	<script>
		opener.isCheckID = true;
	</script>
	<% 

}

db.DBClose();
%>    
<script>
	
</script>