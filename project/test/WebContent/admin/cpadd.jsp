<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>è�Ǿ� ���</title>
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
				alert("è�Ǿ� �̸��� �Է� ���ּ���");
				document.cpadd.cpname.focus();
				return false;
			}
			
			cpnickname = document.cpadd.cpnickname.value;
			if(cpnickname == "")
			{
				alert("è�Ǿ� Īȣ�� �Է� ���ּ���");
				document.cpadd.cpnickname.focus();
				return false;
			}
			cpename = document.cpadd.cpename.value;
			if(cpename == "")
			{
				alert("è�Ǿ� �����̸��� �Է� ���ּ���");
				document.cpadd.cpename.focus();
				return false;
			}	
			cpstdimg = document.cpadd.cpstdimg.value;
			if(cpstdimg == "")
			{
				alert("è�Ǿ� �⺻�̹����� �Է� ���ּ���");
				document.cpadd.cpstdimg.focus();
				return false;
			}	
			cpbkimg = document.cpadd.cpbkimg.value;
			if(cpbkimg == "")
			{
				alert("è�Ǿ� ����̹����� �Է� ���ּ���");
				document.cpadd.cpbkimg.focus();
				return false;
			}	
			if(document.cpadd.cpstory.value == "")
			{
				alert("è�Ǿ� ���丮�� �Է� ���ּ���");
				document.cpadd.cpstory.focus();
				return false;
			}
			
			if(iscpnamecheck == false)
			{
				alert("è�Ǿ� �̸��� �ߺ��Ǿ����ϴ�.");
				return false;
			}
			//bolean <<
			//0�� false 1�� true
			if(confirm("����Ͻðڽ��ϱ�?") != 1)
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
					<td>è�Ǿ� �̸�:<input type="text" id="cpname" name="cpname" value=""><span id="cpmsg" name="cpmsg"></span></td>
				</tr>
				<tr>
					<td>è�Ǿ� Īȣ:<input type="text" id="cpnickname" name="cpnickname"></td>		
				</tr>	
				<tr>
					<td>è�Ǿ� ���� �̸�:<input type="text" id="cpename" name="cpename"></td>		
				</tr>
				<tr>
					<td>è�Ǿ� �⺻�̹���:<input type="file" id="cpstdimg" name="cpstdimg"></td>		
				</tr>
				<tr>	
					<td>è�Ǿ� ��� �̹���:<input type="file" id="cpbkimg" name="cpbkimg"></td>	
				</tr>
				<tr>		
					<td>è�Ǿ� ����:<textarea rows="5" style="width:95%" id="cpinfo" name="cpinfo"></textarea></td>
				</tr>
				<tr>	
					<td>è�Ǿ� ���丮:<textarea rows="5" style="width:95%" id="cpstory" name="cpstory"></textarea></td>
				</tr>
				<tr>
					<td align="center">
						<input type="checkbox" id="position" name="position" value="001:����" checked>&nbsp;&nbsp;����&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="position" name="position" value="002:������">&nbsp;&nbsp;������&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="position" name="position" value="003:���Ÿ�">&nbsp;&nbsp;���Ÿ�
					</td>
				</tr>	
				<tr>
					<td align="center"><input type="button" value="���" onclick="DoClick();"></td>
				</tr>	
			</table>	
			</form>
		</body>
</html>