<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<script src="./js/jquery-3.6.0.js"></script>
		<script src="./js/common.js"></script>
	</head>
	<style>
	.login_input
	{
		width:300px;
		height:50px;
	}
	.userID
	{
		width:225px;
		height:50px;
	}
	.btn_join 
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
	.btn_join:hover 
	{
		background-color: #00ff00;
		box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
		color: #000;
		transform: translateY(-3px);
	}
	.btn_duplicate 
	{
		width: 70px;
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
	.btn_duplicate:hover 
	{
		background-color: #00ff00;
		box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
		color: #000;
		transform: translateY(-1px);
	}  
	</style>
	<script>
	window.onload = function()
	{
		$("#userID").focus();
		$("#btn_join").click(function(){
			if(DoCheckEmpty() == true && DoCheckJoinTerms() == true)
			{
				if(confirm("가입을 완료 하시겠습니까?"))
				{
					alert("가입이 완료되었습니다");
					//$('#join').submit();
				}
			}
			
		});
	}
	//가입조건
	function DoCheckJoinTerms()
	{
		if($("#userPW").val() != $("#PWCheck").val())
		{
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}
		if(!$("input[name='gender']:checked").is(":checked"))
		{
			alert("성별을 선택해주세요");
			return false;
		}
		return true;
	}
	</script>
	<body>
	<form id="join" name="join" method="post" action="joinok.jsp" onsubmit="return false";>
		<table border="0" style="width:100%;">
			<tr>
				<td align="center">
					<img src="./img/melon.jpg">
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<input class="userID" id="userID" name="userID" type="text" placeholder="아이디를 입력하세요." must="아이디를 입력하세요.">
					<input type="button" class="btn_duplicate" id="btn_duplicate" name="btn_duplicate" value="중복확인">
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<input class="login_input" id="userPW" name="userPW" type="password" placeholder="비밀번호를 입력하세요."  must="비밀번호를 입력하세요.">
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<input class="login_input" id="PWCheck" name="PWCheck" type="password" placeholder="비밀번호를 한 번 더 입력하세요." must="비밀번호를 확인해주세요.">
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<input class="login_input" id="userBirth" name="userBirth" type="text" maxlength="8" placeholder="생년월일(YYYYMMDD) ex:19931015" must="생년월일을 입력하세요" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
				</td>
			</tr>
			<tr>
				<td style="padding-left:150px;">
					<br>
					<input type="radio" id="gender" name="gender" value="M">남자
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" id="gender" name="gender" value="W">여자
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<br>
					<input type="button" class="btn_join" id="btn_join" name="btn_join" value="회원가입">
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>