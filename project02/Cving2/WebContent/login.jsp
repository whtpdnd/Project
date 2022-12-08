<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>CVING</title>
	<link rel="stylesheet" href="css/cving.css">
	<script src="./js/jquery-3.6.0.js"></script>
	</head>
	
	<script>
	window.onload = function()
	{
		$("#btn_login").click(function(){
			DoLogin();
		});
		
		$("#btn_join").click(function(){
			document.location = "./join.jsp";
		});
		
		$("input").keyup(function(e){
			if(e.keyCode == 13) //13����Ű
			{
				DoLogin();	
			}
		});
	}
	function DoLogin()
	{
		if($("#id").val()== "")
		{
			alert("���̵� �Է��ϼ���");
			$("#id").focus();
			return;		
		}
		if($("#pw").val() == "")
		{
			alert("��й�ȣ�� �Է��ϼ���");
			$("#pw").focus();
			return;
		}
		$("#login").submit();
	}
	</script>
	<body>
		<div class="container">
			<div class="login_box">
				<div class="login_in">
					<img src="./img/logoback.png" style="width:250px; height:100px; margin-left:120px;">
					<form id="login" name="login" method="post" action="./loginok.jsp">
						<div align="center" style="margin-top:20px;">
							<input type="text" id="id" name="id" placeholder="���̵�"
								maxlength="15" value="" style="height:35px; width:350px;">
						</div>
						<br>
						<div align="center">
							<input type="password" id="pw" name="pw" placeholder="��й�ȣ"
								maxlength="16" style="height:35px; width:350px;" >
					    </div>
					    <br><br><br>
						<div align="center">
							<input type="button" id="btn_login" name="btn_login" value="�α��� �ϱ�"
								style="height:30px; width:360px;" >
					    </div>
					</form>
					    <br>
						<div align="center">
							<input type="button" id="btn_join" name="btn_login" id="btn_login" value="ȸ������ �ϱ�"
								style="height:30px; width:360px;">
					    </div>
				</div>
			</div> 
			<footer>
				<article class="foot_menu">
				 	<hr style="background-color:white;">
					��Ī: �ֽ�ȸ�� ���� | ��Ϲ�ȣ: ���� ��4048 | ��Ͽ�����: 2022. 10. 14 | ��ȣ: CVING<br>
					����: C team  | �����: ����ϵ� ���ֽ� ������ �ݾϵ� ������ǻ���п� 4�� 407ȣ<br>
					CVING�� �������� ���۱ǹ��� ��ȣ�� �����Ƿ�, ���� ����, ����, ���� ���� ���մϴ�.<br>
				</article>
			</footer>
		</div>
	</body>
</html>