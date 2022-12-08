<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.vo.*"  %>

<%
UserVO loginVO = (UserVO)session.getAttribute("logon");
if(loginVO == null || !loginVO.getUadmin().equals("A"))
{
	response.sendRedirect("../main/index.jsp");
	return;
}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>è�Ǿ� ���</title>
		<link rel="stylesheet" href="../css/popupstyle.css"/>
		<script src="../js/jquery-3.6.0.js"></script>
	</head>
	
	<body>
	<script>
		var iscpnamecheck = false;
		
		window.onload = function()
		{
			$("#cpname").focus();
			//btn_add�� Ŭ�������� DoClick�� �����Ѵ�.
			$("#btn_add").click(function(){
				DoClick();
			});
		}
		
		function DoClick()
		{
			//è�Ǿ� �̸��� �����϶�
			if($("#cpname").val() == "")
			{
				alert("è�Ǿ� �̸��� �Է� ���ּ���");
				$("#cpname").focus();
				return;
			}
			
			//è�Ǿ� �г����� �����϶�
			if($("#cpnickname").val() == "")
			{
				alert("è�Ǿ� Īȣ�� �Է� ���ּ���");
				$("#cpnickname").focus();
				return;
			}
			
			//è�Ǿ� �����̸��� �����϶�
			if($("#cpename").val() == "")
			{
				alert("è�Ǿ� �����̸��� �Է� ���ּ���");
				$("#cpename").focus();
				return;
			}	
			
			//è�Ǿ� �⺻�̹����� ������
			if($("#cpstdimg").val() == "")
			{
				alert("è�Ǿ� �⺻�̹����� �Է� ���ּ���");
				$("#cpstdimg").focus();
				return;
			}	
			
			//è�Ǿ����̹����� ������
			if($("#cpbkimg").val() == "")
			{
				alert("è�Ǿ� ����̹����� �Է� ���ּ���");
				$("#cpbkimg").focus();
				return;
			}	
			
			//è�Ǿ� ���丮�� �����϶�
			if($("#cpstory").val() == "")
			{
				alert("è�Ǿ� ���丮�� �Է� ���ּ���");
				$("#cpstory").focus();
				return;
			}
			
			//bolean <<
			//0�� false 1�� true
			if(confirm("����Ͻðڽ��ϱ�?") != 1) //��Ͼ��Ҷ�
			{
				return;
			}
			$("#cpadd").submit();
		}
	</script>
		<form id="cpadd" name="cpadd" method="post" action="../admin/cpaddok.jsp" enctype="multipart/form-data">
			<table class="cpaddlist"  border="1" align="center" width="500px">
				<tr>
					<td>è�Ǿ� �̸�:<input type="text" id="cpname" name="cpname" value=""></td>
				</tr>
				<tr>
					<td>è�Ǿ� Īȣ:<input type="text" id="cpnickname" name="cpnickname"></td>		
				</tr>	
				<tr>
					<td>è�Ǿ� ���� �̸�:<input type="text" id="cpename" name="cpename"></td>		
				</tr>
				<tr>
					<td>è�Ǿ� �⺻�̹���:<input type="file" id="cpstdimg" name="cpstdimg"></td>		
				</tr>
				<tr>	
					<td>è�Ǿ� ��� �̹���:<input type="file" id="cpbkimg" name="cpbkimg"></td>	
				</tr>
				<tr>		
					<td>è�Ǿ� ����:<textarea rows="5" style="width:95%" id="cpinfo" name="cpinfo"></textarea></td>
				</tr>
				<tr>	
					<td>è�Ǿ� ���丮:<textarea rows="5" style="width:95%" id="cpstory" name="cpstory"></textarea></td>
				</tr>
				<tr>
					<td align="center">
					<%
						String pos[] = { "001:����", "002:������", "003:���Ÿ�" };
						for(int i=0; i < pos.length; i++)
						{
							String ary[] = pos[i].split(":");
							if(i == pos.length-1)
							{
								%>
								<input type="checkbox" id="position" name="position" value="<%= pos[i] %>" >&nbsp;&nbsp;<%=ary[1] %>
								<%
							}
							else
							{
								%>
								<input type="checkbox" id="position" name="position" value="<%= pos[i] %>" >&nbsp;&nbsp;<%=ary[1] %>&nbsp;&nbsp;&nbsp;&nbsp;
								<%
							}
						}
					%>
					</td>
				</tr>	
				<tr>
					<td align="center"><input type="button" value="���" id="btn_add" name="btn_add"></td>
				</tr>	
			</table>	
			</form>
		</body>
</html>