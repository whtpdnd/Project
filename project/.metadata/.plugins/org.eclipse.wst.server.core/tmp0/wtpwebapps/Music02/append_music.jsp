<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�뷡�߰�</title>
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		window.onload = function()
		{
			$("#btn_add").click(function(){
				if(confirm($("#box").val()+"�� �ش���� �߰� �Ͻðڽ��ϱ�?") == 1)
				{
					alert("�߰� �Ǿ����ϴ�");
					window.close();
				}
			});
		}
	</script>
		�߰��� �÷��� ����Ʈ�� ���� ���ּ���
		<br>	
		<select id="box">
			<option value="�÷��� ����Ʈ1" selected>�÷��� ����Ʈ1</option>
			<option value="�÷��� ����Ʈ2">�÷��� ����Ʈ2</option>
			<option value="�÷��� ����Ʈ3">�÷��� ����Ʈ3</option>
			<option value="�÷��� ����Ʈ4">�÷��� ����Ʈ4</option>
		</select>
		<input type="button" id="btn_add" value="�߰�">
	</body>
</html>