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
				if(confirm("������ �Ϸ� �Ͻðڽ��ϱ�?"))
				{
					alert("������ �Ϸ�Ǿ����ϴ�");
					//$('#join').submit();
				}
			}
			
		});
	}
	//��������
	function DoCheckJoinTerms()
	{
		if($("#userPW").val() != $("#PWCheck").val())
		{
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
			return false;
		}
		if(!$("input[name='gender']:checked").is(":checked"))
		{
			alert("������ �������ּ���");
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
					<input class="userID" id="userID" name="userID" type="text" placeholder="���̵� �Է��ϼ���." must="���̵� �Է��ϼ���.">
					<input type="button" class="btn_duplicate" id="btn_duplicate" name="btn_duplicate" value="�ߺ�Ȯ��">
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<input class="login_input" id="userPW" name="userPW" type="password" placeholder="��й�ȣ�� �Է��ϼ���."  must="��й�ȣ�� �Է��ϼ���.">
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<input class="login_input" id="PWCheck" name="PWCheck" type="password" placeholder="��й�ȣ�� �� �� �� �Է��ϼ���." must="��й�ȣ�� Ȯ�����ּ���.">
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<input class="login_input" id="userBirth" name="userBirth" type="text" maxlength="8" placeholder="�������(YYYYMMDD) ex:19931015" must="��������� �Է��ϼ���" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
				</td>
			</tr>
			<tr>
				<td style="padding-left:150px;">
					<br>
					<input type="radio" id="gender" name="gender" value="M">����
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" id="gender" name="gender" value="W">����
				</td>
			</tr>
			<tr>
				<td style="padding-left:80px;">
					<br>
					<input type="button" class="btn_join" id="btn_join" name="btn_join" value="ȸ������">
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>