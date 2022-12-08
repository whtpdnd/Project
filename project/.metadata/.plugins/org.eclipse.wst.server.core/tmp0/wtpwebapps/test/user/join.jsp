<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/mainhead.jsp" %>
<script>
var isCheckID = false;
var IsUseID = false;

window.onload = function()
{
	$("#id").focus();
	
}

function DoUseID()
{	
	id = $("#id").val();
	if(id.length <= 5)
	{
		$("#msg").css("color","red");
		$("#msg").html("5~12�� �̳��� �Է��ϼ���");
		IsUseID = false;
	}else if(id.length >= 12)
	{
		$("#msg").css("color","red");
		$("#msg").html("5~12�� �̳��� �Է��ϼ���");
		IsUseID = false;
	}else
	{
		$("#msg").css("color","green");
		$("#msg").html("���ǿ� �´� ���̵��Դϴ�.");
		IsUseID = true;
	}	
}
function DoKey()
{
	var num1 = document.getElementById("num1").value.length;
	if(num1 == 3)
	{
		$("#num2").focus();
	}	
	var num2 = document.getElementById("num2").value.length;
	if(num2 == 4)
	{
		$("#num3").focus();
	}
}


function IDCheck()
{
	if(IsUseID == false)
	{
		alert("���� ���� ���� �ʽ��ϴ�.!");
		return;
	}
	
	var uid = $("#id").val();
	if(uid == "")
	{
		alert("���̵� �Է��ϼ���");
		$("#id").focus();
		return;
	}	
	window.open("idcheck.jsp?id="+uid,"_idcheck", "width=500,height=500");
	
}

function DoUsePW()
{
	pw = $("#pw").val();
	pwcheck = $("#pwcheck").val();
	if(pwcheck != pw)
	{
		$("#pwmsg").css("color","red");
		$("#pwmsg").html("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
	}else
	{
		$("#pwmsg").css("color","green");
		$("#pwmsg").html("��й�ȣ�� ��ġ�մϴ�");
	}	
}
function DoCheck()
{

	//document.join.id.value -> $("#id").val() �̰Ŷ� ����. 
	id = $("#id").val();
	if(id == "") //���̵� ����ִ��� üũ
	{
		alert("���̵� �Է� ���ּ���");
		$("#id").focus();
		return false;
	}	
	if(isCheckID == false) // �ߺ��˻縦 �ǽ��ߴ��� üũ!
	{
		alert("���̵� �ߺ��˻縦 ���ּ���");
		$("#id").focus();
		return false;
	}	
	
	pw = $("#pw").val();
	if(pw == "") // ��й�ȣ ����ִ��� üũ
	{
		alert("��й�ȣ�� �Է� ���ּ���");
		$("#pw").focus();
		return false;
	}
	
	pwcheck = $("#pwcheck").val();
	if(pwcheck != pw) //��й�ȣ�� Ȯ�κ�й�ȣ�� ������ üũ
	{
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
		$("#pwcheck").focus();
		return false;
	}	
	
	if($("#nickname").val() == "") //�г��� ����ִ��� üũ
	{
		alert("�г����� �Է� ���ּ���");
		$("#nickname").focus();
		return false;
	}	
	
	if($("#name").val() == "") // �̸��� ������� üũ
	{
		alert("�̸��� �Է� ���ּ���");
		$("#name").focus();
		return false;
	}	
	if($("#num1").val() == "" || $("#num2").val() == "" || $("#num3").val() == "") // ����ȣ ����ִ��� üũ
	{
		alert("�޴�����ȣ�� �Է� ���ּ���");
		$("#num1").focus();
		return false;
	}	
	if($("#mail1").val() == "" || $("#mail2").val() == "") // ���� ����ִ��� üũ
	{
		alert("�̸������� �Է� ���ּ���");
		$("#mail1").focus();
		return false;
	}	
	if(confirm("ȸ�������� �Ͻðڽ��ϱ�?") != 1 ) // ȸ������ �Ұ��� �����!
	{
		return false;
	}
		$("#join").submit();
		return true;
}
</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<form method="post" id="join" action="joinok.jsp">
	<table border="center" align="center">
		<tr>
			<th colspan="2" align="center">ȸ������</th>
		</tr>
		<tr>
			<td>*���̵�:</td>
			<td><input type="text" id="id" name="id" onkeyup="DoUseID();"><input type="button" value="���̵� �ߺ��˻�" onclick="IDCheck();">
			<span id="msg" style="color:red;">5~12�� �̳��� �Է��ϼ���</span></td>
		</tr>
		<tr>
			<td>*��й�ȣ:</td>
			<td><input type="password" id="pw" name="pw"></td>
		</tr>
		<tr>
			<td>*��й�ȣȮ��:</td>
			<td><input type="password" id="pwcheck" name="pwcheck" onkeyup="DoUsePW();">
			<span id="pwmsg"></span></td>
		</tr>
		<tr>
			<td>*�г���:</td>
			<td><input type="text" id="nickname" name="nickname"></td>
		</tr>
		<tr>
			<td>*�̸�:</td>
			<td><input type="text" id="name" name="name"></td>
		</tr>
		<tr>
			<td>*�޴��� ��ȣ:</td>
			<td><input type="text" id="num1" name="num1" onkeyup="DoKey();" 
			oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
			-<input type="text" id="num2" name="num2" onkeyup="DoKey();"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
			-<input type="text"id="num3" name="num3" maxlength="4"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" /></td>
		</tr>
		<tr>
			<td>*�̸���:</td>
			<td><input type="text" id="mail1" name="mail1">@<input type="text" id="mail2" name="mail2" placeholder="�����Է�">
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="checkbox" id="agree_MAIL" name="agree_MAIL" value="Y">���ϼ��ŵ���&nbsp;
			<input type="checkbox" id="agree_SMS" name="agree_SMS" value="Y">SMS����
			</td>
		</tr>
	</table>
	<table border="0" align="center" width="350px">
		<tr class="joinbutton">
			<td width="40%" align="center"><a href="javascript:DoCheck();">ȸ������</a></td>
			
			<td width="40%" align="center"><a href="../main/index.jsp">���</a></td>
		</tr>
	</table>
</form>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="../include/maintail.jsp" %>