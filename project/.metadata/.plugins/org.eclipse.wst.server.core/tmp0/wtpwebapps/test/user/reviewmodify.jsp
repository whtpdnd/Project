<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>League of Legend Inven</title>
		<link rel="stylesheet" href="../css/popupstyle.css"/>
	</head>
	<body>
	<script type="text/javascript">
	function DoSubmit()
	{
		if(confirm("���� �Ͻðڽ��ϱ�?") == true)
		{
			window.close();
		}
	}
	</script>
		<table class="review_md" border="0" width="500px" height="150px">
			<tr>
				<td>è�Ǿ����</td>
				<td>
				<textarea class="story" >������ �򰡳����Դϴ�.������ �򰡳����Դϴ�.������ �򰡳����Դϴ�.
������ �򰡳����Դϴ�.������ �򰡳����Դϴ�.
������ �򰡳����Դϴ�.������ �򰡳����Դϴ�.</textarea>
				</td>
				<td>�ۼ���¥</td>
				<td><input type="button" onclick="DoSubmit();" value="����"></td>
			</tr>
		</table>
	</body>
</html>