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
	//���� ��й�ȣ�� ��ġ���� �ʴ� ���
	%>
	<script>
		alert("���� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
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
	alert("��й�ȣ ������ �Ϸ� �Ǿ����ϴ�");
	window.close();
</script>