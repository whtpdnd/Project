<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/mainhead.jsp" %>
<%
String cpno = request.getParameter("cpno");
%>
<script>
function DoReviewModify()
{
	window.open("../user/reviewmodify.jsp", "_reviewmodify",
	"width=500,height=400");
}
function DoCpModify()
{
	window.open("../admin/cpmodify.jsp?cpno=<%= cpno %>", "_cpmodify",
	"width=600,height=550");
}
function DoReviewDelete()
{
	if(confirm("���� ���� �Ͻðڽ��ϱ�?") == true)
	{
		alert("�����Ǿ����ϴ�.");
	}
}
</script>
<table class="inner" border="0" style="width:100%;">
	<tr>
		<td>è�Ǿ����� �Դϴ�.</td>
		<td align="right"><a href="javascript:DoCpModify();">è�Ǿ����� ����</a></td>
	</tr>
</table>
<div class="cpinfomenu">
	<table border="0" style="width:100%;">
		<tr>
			<td align="center"><a href="../champion/cpinfo.jsp">è�Ǿ� ����</a></td>
			<td align="center"><a href="../champion/cpstory.jsp">è�Ǿ� ���丮</a></td>
			<td align="center"><a href="../champion/cplist.jsp">è�Ǿ� ���</a></td>
		</tr>
	</table>
</div>