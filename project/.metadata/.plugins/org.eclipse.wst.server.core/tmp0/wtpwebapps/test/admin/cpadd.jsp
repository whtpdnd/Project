<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>챔피언 등록</title>
		<link rel="stylesheet" href="../css/popupstyle.css"/>
		<script src="../js/jquery-3.6.0.js"></script>
	</head>
	
	<body>
	<script>
		var iscpnamecheck = true;
		
		window.onload = function()
		{
			document.cpadd.cpname.focus();
			
		}
		function DoClick()
		{
			cpname = document.cpadd.cpname.value;
			if(cpname == "")
			{
				alert("챔피언 이름을 입력 해주세요");
				document.cpadd.cpname.focus();
				return false;
			}
			
			cpnickname = document.cpadd.cpnickname.value;
			if(cpnickname == "")
			{
				alert("챔피언 칭호를 입력 해주세요");
				document.cpadd.cpnickname.focus();
				return false;
			}
			cpename = document.cpadd.cpename.value;
			if(cpename == "")
			{
				alert("챔피언 영문이름을 입력 해주세요");
				document.cpadd.cpename.focus();
				return false;
			}	
			cpstdimg = document.cpadd.cpstdimg.value;
			if(cpstdimg == "")
			{
				alert("챔피언 기본이미지를 입력 해주세요");
				document.cpadd.cpstdimg.focus();
				return false;
			}	
			cpbkimg = document.cpadd.cpbkimg.value;
			if(cpbkimg == "")
			{
				alert("챔피언 배경이미지를 입력 해주세요");
				document.cpadd.cpbkimg.focus();
				return false;
			}	
			if(document.cpadd.cpstory.value == "")
			{
				alert("챔피언 스토리를 입력 해주세요");
				document.cpadd.cpstory.focus();
				return false;
			}
			
			if(iscpnamecheck == false)
			{
				alert("챔피언 이름이 중복되었습니다.");
				return false;
			}
			//bolean <<
			//0은 false 1은 true
			if(confirm("등록하시겠습니까?") != 1)
			{
				return false;
			}
			
			$("#cpadd").submit();
			return true;
		}
	</script>
		<form method="post" name="cpadd" id="cpadd" action="cpaddok.jsp" 
			enctype="multipart/form-data"> 
			<table class="cpaddlist"  border="1" align="center" width="500px">
				<tr>
					<td>챔피언 이름:<input type="text" id="cpname" name="cpname" value=""><span id="cpmsg" name="cpmsg"></span></td>
				</tr>
				<tr>
					<td>챔피언 칭호:<input type="text" id="cpnickname" name="cpnickname"></td>		
				</tr>	
				<tr>
					<td>챔피언 영문 이름:<input type="text" id="cpename" name="cpename"></td>		
				</tr>
				<tr>
					<td>챔피언 기본이미지:<input type="file" id="cpstdimg" name="cpstdimg"></td>		
				</tr>
				<tr>	
					<td>챔피언 배경 이미지:<input type="file" id="cpbkimg" name="cpbkimg"></td>	
				</tr>
				<tr>		
					<td>챔피언 설명:<textarea rows="5" style="width:95%" id="cpinfo" name="cpinfo"></textarea></td>
				</tr>
				<tr>	
					<td>챔피언 스토리:<textarea rows="5" style="width:95%" id="cpstory" name="cpstory"></textarea></td>
				</tr>
				<tr>
					<td align="center">
						<input type="checkbox" id="position" name="position" value="001:전사" checked>&nbsp;&nbsp;전사&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="position" name="position" value="002:마법사">&nbsp;&nbsp;마법사&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="position" name="position" value="003:원거리">&nbsp;&nbsp;원거리
					</td>
				</tr>	
				<tr>
					<td align="center"><input type="button" value="등록" onclick="DoClick();"></td>
				</tr>	
			</table>	
			</form>
		</body>
</html>