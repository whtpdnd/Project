<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.vo.*"  %>    
<%@ page import="lol.dbms.*" %>
<%
UserVO loginvo = (UserVO)session.getAttribute("login");

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>League of Legend Inven</title>
		<link rel="stylesheet" href="../css/style.css"/>	
		<script src="../js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		<%
		if(loginvo != null)
		{
			%>
			function DoModify()
			{
				window.open("../user/uinfomodify.jsp?uno=" +'<%= loginvo.getUno()  %>' , "_uinfomodify",
				"width=538,height=360,left=700,top=400");	
			}
			<%
		}
		%>
		<%
		if(loginvo != null)
		{
			%>
			function DoQuit()
			{
				window.open("../user/uquitcheck.jsp?uno="+<%= loginvo.getUno() %>, "_uquitcheck",
				"width=500,height=200,left=800,top=500");	
			}
			<%
		}
		%>
	</script>
		<table  width="900px" align="center" style="border-collapse :collapse;" >
			<tr>
				<td align="center">
					<a href="../main/index.jsp">
					<div style="display:block;">
					<img src="../img/lol1.png" width="800" height="200" align="middle" style="">
					</div>
					</a>
				</td>
			</tr>
		</table>
		<table  border="0" width="1200px" align="center" style="border-collapse :collapse;">
			<tr>
				<td colspan="3" style="text-align:right;">
				<div class="topmenu" style="height:32px;padding-top:10px;">
					<%
					if(loginvo == null)
					{
						%>
						<a href="../user/join.jsp">회원가입</a>
						<a href="../user/login.jsp">로그인</a>
						<% 
					}else
					{
						%>
						<span><%= loginvo.getUname() %></span>님 반갑습니다!
						<a href="../user/logout.jsp">로그아웃</a>
						<a href="javascript:DoModify();">회원정보수정</a>
						<a href="javascript:DoQuit();">회원탈퇴</a>	
						&nbsp;&nbsp;
						<% 
					}
					%>
				</div>
				</td>
			</tr>
			<tr>
				<td class="leftmenu" style="width:200px;" valign="top">
						<a href="../main/index.jsp">홈</a>
						<br>
						<a href="../champion/cplist.jsp">챔피언 목록</a>
						<br>
						<a href="../champion/cpreview.jsp">챔피언 평가</a>		
						<br>
				</td>
				<td valign="top">