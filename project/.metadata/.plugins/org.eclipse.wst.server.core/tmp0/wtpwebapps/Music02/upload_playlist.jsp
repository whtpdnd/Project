<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>플레이리스트 업로드</title>
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
		window.onload = function()
		{
			$("#btn_upload").click(function(){
				if(confirm($("#list").val() +"를 목록에 업로드 하시겠습니까?") == 1)
				{
					alert("업로드 되었습니다");
					window.close();
				}	
			});
		}
	</script>
	업로드 할 플레이 리스트:
		<select id="list">
			<option value="플레이 리스트1">플레이 리스트1</option>
			<option value="플레이 리스트2">플레이 리스트2</option>
			<option value="플레이 리스트3">플레이 리스트3</option>
			<option value="플레이 리스트4">플레이 리스트4</option>
		</select>
		<input type="button" id="btn_upload" value="업로드">
	</body>
</html>