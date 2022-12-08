<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>로그인</title>
		<script src="./js/jquery-3.6.0.js"></script>
		<script src="./js/common.js"></script>
	</head>
	<style>
	.login_input
	{
		width:300px;
		height:50px;
	}
	.btn_login 
	{
		width: 308px;
		height: 50px;
		font-family: 'Roboto', sans-serif;
		font-size: 11px;
		text-transform: uppercase;
		letter-spacing: 2.5px;
		font-weight: 500;
		color: #000;
		background-color: #2EE59D;
		border: none;
		box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
		transition: all 0.3s ease 0s;
		cursor: pointer;
		outline: none;
	}
	.btn_login:hover 
	{
		background-color: #00ff00;
		box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
		color: #000;
		transform: translateY(-3px);
	} 
	</style>
	<script>
	window.onload = function()
	{
		$("#btn_login").click(function(){
			if(DoCheckEmpty() == false) return;
			window.close();
		});
	}
	</script>
	<body>
		<table border="0" style="width:100%;">
			<tr>
				<td align="center">
					<img src="./img/melon.jpg">
				</td>
			</tr>
			<tr>
				<td align="center">
					<input class="login_input" id="userID" type="text" placeholder="아이디를 입력하세요." must="아이디를 입력하세요.">
				</td>
			</tr>
			<tr>
				<td align="center">
					<input class="login_input" id="userPW" type="password" placeholder="비밀번호를 입력하세요." must="비밀번호를 입력하세요.">
				</td>
			</tr>
			<tr>
				<td align="center">
					<br>
					<button class="btn_login" id="btn_login">로그인</button>
				</td>
			</tr>
		</table>
	</body>
</html>