<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
		<title>�÷��� ����Ʈ ����</title>
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body style="text-align: center;">
		<script>
			function DoAdd()
			{
				if(confirm("�÷��� ����Ʈ�� ���� �Ͻðڽ��ϱ�?") == 1)
				{
					alert("������ �Ϸ� �Ǿ����ϴ�");
					window.close();
					return true;
				}
			}
		</script>
		�÷��� ����Ʈ �̸�:
		<input type="text">
		<input type="button" value="����" onclick="DoAdd();">
	</body>
</html>