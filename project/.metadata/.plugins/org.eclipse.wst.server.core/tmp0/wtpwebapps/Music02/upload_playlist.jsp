<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�÷��̸���Ʈ ���ε�</title>
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		window.onload = function()
		{
			$("#btn_upload").click(function(){
				if(confirm($("#list").val() +"�� ��Ͽ� ���ε� �Ͻðڽ��ϱ�?") == 1)
				{
					alert("���ε� �Ǿ����ϴ�");
					window.close();
				}	
			});
		}
	</script>
	���ε� �� �÷��� ����Ʈ:
		<select id="list">
			<option value="�÷��� ����Ʈ1">�÷��� ����Ʈ1</option>
			<option value="�÷��� ����Ʈ2">�÷��� ����Ʈ2</option>
			<option value="�÷��� ����Ʈ3">�÷��� ����Ʈ3</option>
			<option value="�÷��� ����Ʈ4">�÷��� ����Ʈ4</option>
		</select>
		<input type="button" id="btn_upload" value="���ε�">
	</body>
</html>