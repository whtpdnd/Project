<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>
<%@ page import="lol.vo.*" %>
<%
request.setCharacterEncoding("euc-kr");
//�Ѿ�� input Ÿ�� �����͸� ���ڿ��� �޴´�.
String cpno = request.getParameter("cpno");
UserVO loginVO = (UserVO)session.getAttribute("logon");
if(loginVO == null || !loginVO.getUadmin().equals("A") || cpno == null )
{
	response.sendRedirect("../main/index.jsp");
	return;
}

//�Ѿ�� è�Ǿ� ��ȣ�� �ִ� ������ DB���� �����´�.
DBManager dbms = new DBManager();
dbms.DBOpen();
String sql = "";
sql +="select cpkname, cpnickname, cpename, cpbkimg, cpstdimg, cpinfo, cpstory ";
sql += "from champion where cpno= " + cpno;
dbms.OpenQuery(sql);
dbms.GetNext();
String cpkname = dbms.GetValue("cpkname"); 
String cpnickname = dbms.GetValue("cpnickname");
String cpename = dbms.GetValue("cpename");
String cpbkimg = dbms.GetValue("cpbkimg");
String cpstdimg = dbms.GetValue("cpstdimg");
String cpinfo = dbms.GetValue("cpinfo");
String cpstory = dbms.GetValue("cpstory");
dbms.CloseQuery();
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
			$("#btn_cpmodify").click(function(){
				DoChampionModify();
			});
		}
		function DoChampionModify()
		{
			/*
			if($("#cpstdimg").val() == "")
			{
				alert("è�Ǿ� �⺻�̹����� �Է� ���ּ���");
				$("#cpstdimg").focus();
				return;
			}	
			cpbkimg = document.cpmodify.cpbkimg.value;
			if($("#cpbkimg").val() == "")
			{
				alert("è�Ǿ� ����̹����� �Է� ���ּ���");
				$("#cpbkimg").focus();
				return;
			}
			*/
			
			if($("#cpinfo").val() == "")
			{
				alert("è�Ǿ� ������ �Է� ���ּ���");
				$("#cpinfo").focus();
				return;	
			}
			
			if($("#cpstory").val() == "")
			{
				alert("è�Ǿ� ���丮�� �Է� ���ּ���");
				$("#cpstory").focus();
				return;
			}
			
			if(confirm("�����Ͻðڽ��ϱ�?"))
			{
				$("#cpmodify").submit();
			}	 
		}
		function DoDownload(kind)
		{
			document.location = "../admin/down.jsp?cpno=<%=cpno%>&kind=" + kind;
		}
	</script>
		<form id="cpmodify" name="cpmodify" method="post" action="../admin/cpmodifyok.jsp" enctype="multipart/form-data">
			<input type="hidden" id="cpno" name="cpno" value="<%= cpno %>"> 
			<table  class="modify_name" border="1" align="center" width="500px" >
				<tr>
					<td>è�Ǿ� �̸�: <%= cpkname %></td>
				</tr>	
				<tr>
					<td>è�Ǿ� Īȣ: <%= cpnickname %></td>		
				</tr>
				<tr>
					<td>è�Ǿ� ���� �̸�: <%= cpename %></td>		
				</tr>
				<tr>
					<td>è�Ǿ� �⺻�̹���:<input type="file" id="cpstdimg" name="cpstdimg" ></td>		
				</tr>
				<tr>
					<td>
					<a href="#" onclick="DoDownload('cpstdimg');"><%= cpstdimg %></a><br>
					<img src="../upload/<%=cpstdimg %>" style="width:100px; height:100px;">
					</td>		
				</tr>
				<tr>	
					<td>è�Ǿ� ��� �̹���:<input type="file" id="cpbkimg" name="cpbkimg"></td>	
				</tr>
				<tr>
					<td>
					<a href="#" onclick="DoDownload('cpbkimg');"><%= cpbkimg %></a><br>
					<img src="../upload/<%=cpbkimg %>" style="width:100px; height:100px;">					
					</td> 		
				</tr>
				<tr>		
					<td>è�Ǿ� ����:<textarea rows="5" style="width:95%" id="cpinfo" name="cpinfo"><%= cpinfo %></textarea></td>
				</tr>
				<tr>	
					<td>è�Ǿ� ���丮:<textarea rows="15" style="width:95%" id="cpstory" name="cpstory"><%= cpstory %></textarea></td>
				</tr>
				<tr>
					<td align="center">
					<%
					
					String pos[] = { "001:����", "002:������", "003:���Ÿ�" };
					for(int i=0; i < pos.length; i++)
					{
						String ary[] = pos[i].split(":");
					
						sql ="select pname from position where cpno= " + cpno + " and pcode = '" + ary[0] + "'";
						dbms.OpenQuery(sql);
						%>
						<input type="checkbox" id="position" name="position" value="<%= pos[i] %>" <%= (dbms.GetNext()) ? "checked" : "" %>>&nbsp;&nbsp;<%= ary[1] %>&nbsp;&nbsp;&nbsp;&nbsp;
						<%
						dbms.CloseQuery();	
					}
					%>
					</td>
				</tr>	
				<tr>
					<td align="center"><input type="button" id="btn_cpmodify" value="����"></td>
				</tr>	
			</table>	
		</form>
	</body>
</html>
<%
dbms.DBClose();
%>