<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/mainhead.jsp" %>
<%
request.setCharacterEncoding("euc-kr");
//�Ѿ�� input Ÿ�� �����͸� ���ڿ��� �޴´�.
String cpno = request.getParameter("cpno");


%>
<script>
function DoReviewModify(cpno, rno)
{
	window.open("../user/reviewmodify.jsp?cpno=" + cpno +"&rno=" + rno , "_reviewmodify",
	"width=700,height=400");
}
function DoCpModify()
{
	window.open("../admin/cpmodify.jsp?cpno=<%= cpno %>", "_cpmodify",
	"width=600,height=800");
}
function DoReviewDelete(rno,cpno)
{
	if(confirm("���� ���� �Ͻðڽ��ϱ�?") == true)
	{
		//alert(rno);
		document.location = "../user/reviewdelete.jsp?rno=" + rno + "&cpno=" + cpno;
	}
}
</script>
<table class="inner" border="0" style="width:100%;">
	<tr>
		<td>è�Ǿ����� �Դϴ�.</td>
		<%
		if( loginVO != null && loginVO.getUadmin().equals("A"))//������ �ڵ尡 ��������.
		{
			//������ �����϶�
			%>
			<td align="right"><a href="javascript:DoCpModify();">è�Ǿ����� ����</a></td>
			<%
		}
		%>
	</tr>
</table>
<div class="cpinfomenu">
	<table border="0" style="width:100%;">
		<tr>
			<td align="center"><a href="../champion/cpinfo.jsp?cpno=<%= cpno %>">è�Ǿ� ����</a></td>
			<td align="center"><a href="../champion/cpstory.jsp?cpno=<%= cpno %>">è�Ǿ� ���丮</a></td>
			<td align="center"><a href="../champion/cplist.jsp">è�Ǿ� ���</a></td>
		</tr>
	</table>
</div>