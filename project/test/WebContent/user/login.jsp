<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/mainhead.jsp" %>
<script>
window.onload = function()
{
	$("#userid").focus();
	
	$("#onlogin").click(function(){
		if($("#userid").val() == "")
		{
			alert("���̵� �Է��ϼ���");
			$("#userid").focus();
			return;
		}
		if($("#userpw").val() == "")
		{
			alert("��й�ȣ�� �Է��ϼ���");
			$("#userpw").focus();
			return;
		}
		
		$("#login").submit();
	});
}
</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<table border="1" style="background-color:white; width:100%; height:500px">
	<tr>
		<td align="center" valign="middle">
			<div class="loginborder">
				<form id="login" name="login" method="post" action="loginok.jsp">
				&nbsp;&nbsp;���̵�&nbsp;&nbsp;<input type="text" id="userid" name="userid">
				<br>
				��й�ȣ&nbsp;<input type="password" id="userpw" name="userpw">
				<br>
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" id="onlogin">�α����ϱ�</a>
				&nbsp;&nbsp;&nbsp;&nbsp;<a href="../main/index.jsp">���</a>
				</form>
			</div>
		</td>
	</tr>
</table>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="../include/maintail.jsp" %>