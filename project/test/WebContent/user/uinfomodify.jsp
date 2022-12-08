<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.vo.*"  %>  
<%@ page import="lol.dbms.*" %>  
<%
String uno = request.getParameter("uno");

DBManager db = new DBManager();

db.DBOpen();

String sql = "";
sql += "select * from user ";
sql += "where uno= " +uno;
db.OpenQuery(sql);
db.GetNext();

String uid = db.GetValue("uid");
String uname = db.GetValue("uname");
String unickname = db.GetValue("unickname");
String num[] = db.GetValue("upnum").split("-");
String mail[] = db.GetValue("umail").split("@");

String agmail = db.GetValue("umcheck");
String agsms = db.GetValue("umscheck");

db.DBClose();

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>ȸ������ ����</title>
		<link rel="stylesheet" href="../css/popupstyle.css"/>
		<script src="../js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		function DoSubMit()
		{
			$("#modify").submit();
		}
	</script>
		<form method="post" action="uinfomodifyok.jsp" id="modify" name="modify">
		<input type="hidden" value="<%= uno %>" name="uno">
			<table class="uinfo_a"  border="1">
				<tr>
					<th align="center" colspan="3">ȸ�� ���� ����</th>
				</tr>
				<tr>
					<td align="left">�̸�:
						<%= uname %></td>
				</tr>
				<tr>
					<td align="left">���̵�:
					<%= uid %></td>
				</tr>
				<tr>
					<td align="center"><a href="upwmodify.jsp?uno=<%= uno %>">��й�ȣ ����</a></td>
				</tr>
				<tr>
					<td align="left">�г���:
					<input type="text" value="<%= unickname %>" id="nickname" name="nickname">��������</td>
				</tr>
				<tr>
					<td align="left">�̸���:
					<input type="text" value="<%= mail[0] %>" id="mail1" name="mail1">@<input type="text" id="mail2" name="mail2" value="<%= mail[1] %>">��������</td>
				</tr>
				<tr>
					<td align="left">�޴���:
					<input type="text" size="3" value="<%= num[0] %>" id="num1" name="num1">-<input type="text" size="5" value="<%= num[1] %>" id="num2" name="num2">-<input type="text" size="5" value="<%= num[2] %>" id="num3" name="num3">��������</td>
				</tr>
				<tr>
					<td align="left">���ŵ���:
					<input type="checkbox" id="agree_mail" name="agree_mail" value="Y" <%= (agmail.equals("Y")) ? "checked" : ""  %> >���ϼ��ŵ���
					<input type="checkbox" id="agree_SMS" name="agree_SMS" value="Y" <%= (agsms.equals("Y")) ? "checked" : ""  %>>SMS����
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3"><a href="javascript:DoSubMit();">����</a></td>
				</tr>
			</table>
		</form>
	</body>
</html>