<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>    
<%
String cpno = request.getParameter("cpno");

DBManager db = new DBManager();
db.DBOpen();

String sql = "";
sql += "select * from champion ";
sql += "where cpno = " +cpno;
db.OpenQuery(sql);
db.GetNext();
String cpkname = db.GetValue("cpkname");
String cpnickname = db.GetValue("cpnickname");
String cpename = db.GetValue("cpename");
String cpinfo = db.GetValue("cpinfo");
String cpstory = db.GetValue("cpstory");
String cpstdimg = db.GetValue("cpstdimg");
String cpbkimg = db.GetValue("cpbkimg");

db.CloseQuery();

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
		window.onload = function()
		{
			document.cpmodify.cpname.focus();
		}
		function DoClick()
		{
			cpstdimg = document.cpmodify.cpstdimg.value;
			if(cpstdimg == "")
			{
				alert("è�Ǿ� �⺻�̹����� �Է� ���ּ���");
				document.cpmodify.cpstdimg.focus();
				return false;
			}	
			cpbkimg = document.cpmodify.cpbkimg.value;
			if(cpbkimg == "")
			{
				alert("è�Ǿ� ����̹����� �Է� ���ּ���");
				document.cpmodify.cpbkimg.focus();
				return false;
			}
			
			if($("#cpinfo").val()=="")
			{
				alert("è�Ǿ� ������ �Է� ���ּ���");
				$("#cpinfo").focus();
				return false;	
			}
			
			if(document.cpmodify.cpstory.value == "")
			{
				alert("è�Ǿ� ���丮�� �Է� ���ּ���");
				document.cpmodify.cpstory.focus();
				return false;
			}
			//bolean <<
			//0�� false 1�� true
			if(confirm("����Ͻðڽ��ϱ�?") != 1)
			{
				return false;
			}	 
			
			$("#cpmodify").submit();
			return true;
		}
	</script>
		<form name="cpmodify" id="cpmodify" method="post" action="../admin/cpmodifyok.jsp" enctype="multipart/form-data">
		<input type="hidden" id="cpno" name="cpno" value="<%= cpno %>">
			<table  class="modify_name" border="1" align="center" width="500px">
				<tr>
					<td>è�Ǿ� �̸�:<input type="text" id="cpkname" name="cpkname" value="<%= cpkname %>"> </td>
				</tr>	
				<tr>
					<td>è�Ǿ� Īȣ:<input type="text" id="cpnickname" name="cpnickname" value="<%= cpnickname %>"> </td>
				</tr>
				<tr>
					<td>è�Ǿ� ���� �̸�:<input type="text" id="cpename" name="cpename" value="<%= cpename %>"> </td>
				</tr>
				<tr>
					<td>è�Ǿ� �⺻�̹���:<input type="file" id="cpstdimg" name="cpstdimg">
					<img src="../upload/<%= cpstdimg %>" width="120px" height="120px"></td>
				</tr>
				<tr>	
					<td>è�Ǿ� ��� �̹���:<input type="file" id="cpbkimg" name="cpbkimg">
					<img src="../upload/<%= cpbkimg %>" width="120px" height="120px"></td>
				</tr>
				<tr>		
					<td>è�Ǿ� ����:<textarea rows="5" style="width:95%" id="cpinfo" name="cpinfo"><%= cpinfo %></textarea></td>
				</tr>
				<tr>	
					<td>è�Ǿ� ���丮:<textarea rows="5" style="width:95%" id="cpstory" name="cpstory"><%= cpstory %></textarea></td>
				</tr>
				<tr>
				<%

				
				sql = "";
				sql += "select * from position ";
				sql += "where cpno = " +cpno;
				db.OpenQuery(sql);
				String pos[] = { "001:����", "002:������", "003:���Ÿ�" };
				%>
				<td align="center">
				<% 
				for(int i = 0; i < pos.length; i++)
				{
					String ary[] = pos[i].split(":");				
					%>
						<input type="checkbox" id="position" name="position" value="<%= pos[i] %>" <%= (db.GetNext() == true) ? "checked" : "" %>>&nbsp;&nbsp;<%= ary[1] %>&nbsp;&nbsp;
				 	<%
			}		
				%>
				</td>
				</tr>	
				<tr>
					<td align="center"><input type="button" value="���" onclick="DoClick();"></td>
				</tr>	
			</table>	
		</form>
	</body>
</html>
<%
db.DBClose();
%>