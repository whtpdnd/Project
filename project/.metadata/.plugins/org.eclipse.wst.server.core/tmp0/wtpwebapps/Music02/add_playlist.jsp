<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
		<title>플레이 리스트 생성</title>
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body style="text-align: center;">
		<script>
			function DoAdd()
			{
				if(confirm("플레이 리스트를 생성 하시겠습니까?") == 1)
				{
					alert("생성이 완료 되었습니다");
					window.close();
					return true;
				}
			}
		</script>
		플레이 리스트 이름:
		<input type="text">
		<input type="button" value="생성" onclick="DoAdd();">
	</body>
</html>