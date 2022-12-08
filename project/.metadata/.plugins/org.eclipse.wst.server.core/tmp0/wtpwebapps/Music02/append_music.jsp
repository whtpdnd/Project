<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>노래추가</title>
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		window.onload = function()
		{
			$("#btn_add").click(function(){
				if(confirm($("#box").val()+"에 해당곡을 추가 하시겠습니까?") == 1)
				{
					alert("추가 되었습니다");
					window.close();
				}
			});
		}
	</script>
		추가할 플레이 리스트를 선택 해주세요
		<br>	
		<select id="box">
			<option value="플레이 리스트1" selected>플레이 리스트1</option>
			<option value="플레이 리스트2">플레이 리스트2</option>
			<option value="플레이 리스트3">플레이 리스트3</option>
			<option value="플레이 리스트4">플레이 리스트4</option>
		</select>
		<input type="button" id="btn_add" value="추가">
	</body>
</html>