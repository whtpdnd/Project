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
		<title>챔피언 수정</title>
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
				alert("챔피언 기본이미지를 입력 해주세요");
				document.cpmodify.cpstdimg.focus();
				return false;
			}	
			cpbkimg = document.cpmodify.cpbkimg.value;
			if(cpbkimg == "")
			{
				alert("챔피언 배경이미지를 입력 해주세요");
				document.cpmodify.cpbkimg.focus();
				return false;
			}
			
			if($("#cpinfo").val()=="")
			{
				alert("챔피언 설명을 입력 해주세요");
				$("#cpinfo").focus();
				return false;	
			}
			
			if(document.cpmodify.cpstory.value == "")
			{
				alert("챔피언 스토리를 입력 해주세요");
				document.cpmodify.cpstory.focus();
				return false;
			}
			//bolean <<
			//0은 false 1은 true
			if(confirm("등록하시겠습니까?") != 1)
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
					<td>챔피언 이름:<input type="text" id="cpkname" name="cpkname" value="<%= cpkname %>"> </td>
				</tr>	
				<tr>
					<td>챔피언 칭호:<input type="text" id="cpnickname" name="cpnickname" value="<%= cpnickname %>"> </td>
				</tr>
				<tr>
					<td>챔피언 영문 이름:<input type="text" id="cpename" name="cpename" value="<%= cpename %>"> </td>
				</tr>
				<tr>
					<td>챔피언 기본이미지:<input type="file" id="cpstdimg" name="cpstdimg">
					<img src="../upload/<%= cpstdimg %>" width="120px" height="120px"></td>
				</tr>
				<tr>	
					<td>챔피언 배경 이미지:<input type="file" id="cpbkimg" name="cpbkimg">
					<img src="../upload/<%= cpbkimg %>" width="120px" height="120px"></td>
				</tr>
				<tr>		
					<td>챔피언 설명:<textarea rows="5" style="width:95%" id="cpinfo" name="cpinfo"><%= cpinfo %></textarea></td>
				</tr>
				<tr>	
					<td>챔피언 스토리:<textarea rows="5" style="width:95%" id="cpstory" name="cpstory"><%= cpstory %></textarea></td>
				</tr>
				<tr>
				<%

				
				sql = "";
				sql += "select * from position ";
				sql += "where cpno = " +cpno;
				db.OpenQuery(sql);
				String pos[] = { "001:전사", "002:마법사", "003:원거리" };
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
					<td align="center"><input type="button" value="등록" onclick="DoClick();"></td>
				</tr>	
			</table>	
		</form>
	</body>
</html>
<%
db.DBClose();
%>