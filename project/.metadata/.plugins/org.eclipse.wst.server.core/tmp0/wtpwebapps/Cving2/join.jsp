 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>join</title>
		<script src="./js/jquery-3.6.0.js"></script>
		<link rel="stylesheet" href="css/cving.css">
	</head>
	<script>
	var isCheckID = false;
	var isCheckPW = false;
	window.onload = function()
	{
		$("#user_ID").focus();
		// ���̵� �ߺ�üũ ��ư
		$("#btn_IDcheck").click(function(){//  �ǽð��ϴ°�!
			alert("���̵� �ߺ�üũ �Ϸ�!");
			isCheckID = true;
		});
		//��й�ȣ Ȯ�� ��ư
		$("#btn_PWcheck").click(function(){
			if($("#user_PW1").val() == $("#user_PW2").val())
			{
				isCheckPW = true; 
				alert("��й�ȣ�� ��ġ�մϴ�.");
			}
			else
			{
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			}
		});
		//ȸ������ ��ư
		$("#btn_join").click(function(){
			DoCheckJoin();
		});
	}
	function DoCheckJoin()
	{
		if($("#user_ID").val() == "")
		{
			alert("���̵� �Է��ϼ���");	
			$("#user_ID").focus();
			return;
		}			
		if($("#user_PW1").val() == "")
		{
			alert("��й�ȣ �Է��ϼ���");	
			$("#user_PW1").focus();
			return;
		}			
		if($("#user_PW2").val() == "")
		{
			alert("��й�ȣ �Է��ϼ���");	
			$("#user_PW2").focus();
			return;
		}			
		if($("#user_name").val() == "")
		{
			alert("�̸��� �Է��ϼ���");	
			$("#user_name").focus();
			return;
		}			
		if($("#birth").val() == "")
		{
			alert("��������� �Է��ϼ���");	
			$("#birth").focus();
			return;
		}
		if(isCheckID == false)
		{
			alert("���̵� �ߺ��˻縦 ���ּ���!");
			return;
		}
		if(isCheckPW == false)
		{
			alert("��й�ȣ �ߺ��˻縦 ���ּ���!");
			return;
		}
		if(!$('input[name=gender]').is(":checked"))
		{
			alert("������ �������ּ���!");
			return;
		}
		if(confirm("ȸ�������� �Ͻðڽ��ϱ�?") == 1)
		{
			if(isCheckID == true && isCheckPW == true )
			{
				$("#join").submit();
			}
		}
	}
	</script>
	<body>
		<div class="container">
			<section class="join_title">
				<h1>ȸ������</h1>
			</section>
			<section class="join_section">
				<form name="join" method="post" id="join" action="joinok.jsp">
					<div class="join_list">
						<input type="text" class="join_textbox1" id="user_ID" name="user_ID" placeholder="���̵� �Է�">
						<input type="button" class="btn_joinbox" id="btn_IDcheck" name="btn_IDcheck" value="���̵� Ȯ��">
						<br><br>
						<input type="password" class="join_textbox2" id="user_PW1" name="user_PW1"
							 placeholder="��й�ȣ �Է�">
						<br><br>
						<input type="password" class="join_textbox1" id="user_PW2" name="user_PW2"
						 	placeholder="��й�ȣ ���Է�">
						<input type="button" class="btn_joinbox" id="btn_PWcheck" name="btn_PWcheck" value="��й�ȣ Ȯ��">
						<br><br>
						<input type="text" class="join_textbox2" id="user_name" name="user_name" placeholder="�̸�">
						<br><br>
						<input type="text" class="join_textbox2" id="birth" name="birth"placeholder="������� (YYYYMMDD)" 
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
						<br><br>
						<!-- ���� �ڽ� div ������� -->
						<div class="join_radio">
							<input type="radio" name="gender" value="M" id="gender">
							<label for="man">����</label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="gender" value="W" id="gender">
							<label for="woman">����</label>
						</div>
						<br><br>
					</div>
					<div class="btn_join">
						<input type="button" id="btn_join" name="btn_join" value="ȸ������">
					</div>
				</form>
			</section>
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