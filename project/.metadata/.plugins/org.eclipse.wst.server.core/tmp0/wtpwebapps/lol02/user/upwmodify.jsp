<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>
<%@ page import="lol.vo.*" %>
<%
request.setCharacterEncoding("euc-kr");
UserVO loginVO = (UserVO)session.getAttribute("logon");


String uno = request.getParameter("uno");// ������ �̸��� �÷����̸����ζȰ��� �ּ��̸� !

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>��й�ȣ ����</title>
		<link rel="stylesheet" href="../css/popupstyle.css"/>
		<script src="../js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		window.onload = function()
		{
			$("#curpw").focus();
			
			$("#btn_modify").click(function(){
				if($("#curpw").val() == "")
				{
					alert("���� ��й�ȣ�� �Է��ϼ���.");
					$("#curpw").focus();
					return;
				}
				if($("#mpw").val() == "")
				{
					alert("������ ��й�ȣ�� �Է��ϼ���");
					$("#mpw").focus();
					return;
				}
				if($("#mpw").val() != $("#mpwckeck").val())
				{
					alert("������ ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
					$("#mpw").focus();
					return;
				}
				$("#upwpassword").submit(); // ������������ upwmodifyok�� �Ѿ
			});
			return;
		}
	</script>
		<form id="upwpassword" method="post" action="../user/upwmodifyok.jsp">
			<input type="hidden" id="uno" name="uno" value="<%= uno %>">
			<table id="upm_tbl">
				<tr>
					<th colspan="2">��й�ȣ ����</th>
				</tr>
				<tr>
					<td colspan="2">���� ��й�ȣ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" id="curpw" name="curpw"></td>
				</tr>
				<tr>
					<td colspan="2"> ���ο� ��й�ȣ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="password" id="mpw" name="mpw"></td> <!--  �Ѱ��ٶ��� name -->
				</tr>
				<tr>
					<td colspan="2"> ���ο� ��й�ȣ Ȯ��: <input type="password" id="mpwckeck" name="mpwckeck"></td>
				</tr>
				<tr>
					<td id="upm_button" align="right"><a id="btn_modify" href="#">����</a>&nbsp;&nbsp;</td>
					<td id="upm_button" align="left"><a href="../user/uinfomodify.jsp?uno=<%= uno %>">���</a>&nbsp;&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>
</html>