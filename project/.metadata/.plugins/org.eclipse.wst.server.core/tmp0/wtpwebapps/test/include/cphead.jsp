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
	if(confirm("정말 삭제 하시겠습니까?") == true)
	{
		alert("삭제되었습니다.");
	}
}
</script>
<table class="inner" border="0" style="width:100%;">
	<tr>
		<td>챔피언정보 입니다.</td>
		<td align="right"><a href="javascript:DoCpModify();">챔피언정보 수정</a></td>
	</tr>
</table>
<div class="cpinfomenu">
	<table border="0" style="width:100%;">
		<tr>
			<td align="center"><a href="../champion/cpinfo.jsp">챔피언 정보</a></td>
			<td align="center"><a href="../champion/cpstory.jsp">챔피언 스토리</a></td>
			<td align="center"><a href="../champion/cplist.jsp">챔피언 목록</a></td>
		</tr>
	</table>
</div>