<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<table class="inner" border="0" style="width:100%;">
	<tr>
		<td width="50px" align="center">è�Ǿ�</td>
		<td width="449px" align="center">è�Ǿ� ��</td>
		<td width="50px" align="center">����</td>
		<td width="118px" align="center">�ۼ���</td>
	</tr>
</table>
<table border="0" style="width:100%; margin:5px;">					
	<tr>
		<td width="45px" align="center"><img src="../img/garen_1.jpg" width="100%"></td>
		<td width="630px" align="left" style="padding-left:20px;">������ ���� �� �Դϴ�.</td>
		<td>����:2</td>
		<td width="200px" align="center" colspan="2">�ۼ���<br>&nbsp;&nbsp;&nbsp;2022.10.15 &nbsp;&nbsp;&nbsp;<br>
		[<a href="javascript:DoReviewModify();">����</a>] | [<a href="javascript:DoReviewDelete();">����</a>]</td>
	</tr>
	<tr>
		<td width="45px" align="center"><img src="../img/garen_1.jpg" width="100%"></td>
		<td width="630px" align="left" style="padding-left:20px;">������ ���� �� �Դϴ�.</td>
		<td width="50">����:3</td>
		<td width="200px" align="center" colspan="2">�ۼ���<br>&nbsp;&nbsp;&nbsp;2022.10.15 &nbsp;&nbsp;&nbsp;<br>
		[<a href="javascript:DoReviewModify();">����</a>] | [<a href="javascript:DoReviewDelete();">����</a>]</td>
	</tr>
	<tr>
		<td width="45px" align="center"><img src="../img/garen_1.jpg" width="100%"></td>
		<td width="630px" align="left" style="padding-left:20px;">������ ���� �� �Դϴ�.</td>
		<td>����:3</td>
		<td width="200px" align="center" colspan="2">�ۼ���<br>&nbsp;&nbsp;&nbsp;2022.10.15 &nbsp;&nbsp;&nbsp;<br>
		[<a href="javascript:DoReviewModify();">����</a>] | [<a href="javascript:DoReviewDelete();">����</a>]</td>
	</tr>
	<tr>
		<td width="80px">�ۼ��� id</td>
		<td colspan="3">
		<input type="text" id="cpreivew" name="cpreview" style="width:69%">&nbsp;&nbsp;&nbsp;
		����:
		<select style="width:50px">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5" selected>5</option>
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a style="color:#ffffff; background-color: #060A41; border-radius:3px 3px 3px 3px; padding: 5px 5px;" href="#">���</a>
		</td>
	</tr>											
	<tr>
		<td align="center" colspan="3">�� 1 2 3 4 5 6 7 8 9  ��</td>
	</tr>								
</table>
<%@ include file="../include/maintail.jsp" %>