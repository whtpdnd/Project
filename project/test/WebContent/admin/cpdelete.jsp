<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>     
<%
DBManager db = new DBManager();
db.DBOpen();

String cpno[] = request.getParameter("cpno").split(",");
String sql = "";
for(int i = 0; i < cpno.length; i++)
{
	sql = "delete from position where cpno = " +cpno[i];
	System.out.print(sql);
	db.RunSQL(sql);
	sql = "delete from champion where cpno = " +cpno[i];
	System.out.print(sql);
	db.RunSQL(sql);
}
db.DBClose();
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>è�Ǿ� ����</title>
		<link rel="stylesheet" href="../css/popupstyle.css"/>
		<script src="../js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		alert("������ �Ϸ� �Ǿ����ϴ�.");
		opener.parent.location.reload();
		window.close();
	</script>
	</body>
</html>