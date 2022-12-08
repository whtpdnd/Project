<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<script>
	window.onload = function()
	{
		var login = null;
		<%
		if(loginVO != null)
		{
			%>
			login = "<%= loginVO.getUid() %>"
			<%
		}
		%>
		
		
		$("#cpreview").click(function(){
			if(login == null)
			{
				alert("�α��� �� ������ּ���.");
				document.location = "../user/login.jsp";
			}
			
		});
		
		$("#writesubmit").click(function(){
			if($("#cpreivew").val() == "")
			{
				alert("������ �Է��ϼ���!!");
				$("#cpreivew").focus();
				return;
			}
			$("#rewrite").submit();
		});
	}
</script>
<table class="inner" border="0" style="width:100%;">
	<tr>
		<td width="50px" align="center">è�Ǿ�</td>
		<td width="449px" align="center">è�Ǿ� ��</td>
		<td width="50px" align="center">����</td>
		<td width="118px" align="center">�ۼ���</td>
	</tr>
</table>
<table border="0" style="width:100%; margin:5px;">					
	<%
	//[3] cppage ��ȣ request �� ���� �� pageno �ʱ�ȭ (�������� ��� �ڵ����� 1 �ǰԲ�)
	String cppage = request.getParameter("cppage");
	int pageno = 1;

	//cppage �� null �϶� ó�����ִ� ����
	try
	{
		pageno = Integer.parseInt(cppage);
	}catch(Exception e)
	{}
		
	//[1] ���۹�ȣ ��� << 1 2 3 4 5 6 7 8 9 10 >>
	int start = 0;					
	start = (pageno - 1) * 10;
	
	sql = "";
	sql += "select rno, uno, rnote, rscore, date(rdate) as rdate, ";
	sql += "(select uname from user where uno = review.uno) as uname, ";
	sql += "(select cpstdimg from champion where cpno = review.cpno) as cpimg ";		
	sql +="from review ";
	sql += "where cpno = " + cpno;
	sql += " order by rno desc ";
	//[2]������ ���� ��ȣ �Է�
	sql += "limit " + start + ",10 ";
	
	dbms.OpenQuery(sql);
	while(dbms.GetNext() == true)
	{
		String uno = dbms.GetValue("uno");
		String rno = dbms.GetValue("rno");
		String rnote = dbms.GetValue("rnote");
		int score = dbms.GetInt("rscore"); 
		String rdate = dbms.GetValue("rdate");
		String uname = dbms.GetValue("uname");
		String cpimg = dbms.GetValue("cpimg");
		%>
		<tr>
			<td width="45px" align="center" style="padding-top:20px; padding-bottom:10px;"><img src="../upload/<%= cpimg %>" width="100%"></td>
			<td width="630px" align="left" style="padding-left:20px;"><%= rnote %></td>
			<td>����:<%= score %></td>
			<td width="200px" align="center" colspan="2"><%= uname %><br>&nbsp;&nbsp;&nbsp;<%= rdate %> &nbsp;&nbsp;&nbsp;<br>
			<%
			if(loginVO != null && loginVO.getUno().equals(uno))
			{
				%>
				[<a href="javascript:DoReviewModify('<%= cpno %>','<%= rno %>');">����</a>] | [<a href="javascript:DoReviewDelete('<%= rno %>','<%= cpno %>');">����</a>]
				<% 
			}
			%>
			</td>
		</tr>
		<% 
	}
	dbms.CloseQuery();
		
	//[4]��ü �� ���� ���ϱ�
	sql = "select count(rno) as rno from review where cpno = " + cpno;
	dbms.OpenQuery(sql);
	dbms.GetNext();
	
	//int total = Integer.parseInt(dbms.Getvalue("rno"));
	int total = dbms.GetInt("rno");

	dbms.CloseQuery();
	
	//[5] maxpage ���ϱ�  << 1 2 3 4 5 6 7 8 9 10 ~~~ >>
	int maxpage = total / 10;
	if( total % 10 != 0 ) maxpage++;
	if( maxpage <= 0 )
	{
		maxpage = 1;
	}
	
	
	//[6] startblock ���������� ���ϱ�
	int startblock = ( pageno / 10 ) * 10 + 1;
	if( pageno % 10 == 0 )
	{
		startblock = startblock - 10;
	}
	
	
	//[7] endblock �� ���������ϱ�
	int endblock = startblock + 10 - 1;
	if( endblock >= maxpage )
	{
		endblock = maxpage;
	}	
	
	System.out.println("��ü �򰡼�:" + total);
	System.out.println("maxpage :" + maxpage);
	System.out.println("���������� :" + startblock);
	System.out.println("�������� :" + endblock);
	%>
	<tr>
		<%
		if( loginVO != null)
		{
			%>
				<td width="80px" style="text-align:center;"><%= loginVO.getUid() %></td>
			<%
		}
		else
		{
			%>
				<td width="80px" style="text-align:center;">Guest</td>
			<%
		}
		%>
		<td style="padding-top:20px;">
		<form method="post" id="rewrite" action="../user/reviewok.jsp">
		<input type="hidden" id="cpno" name="cpno" value="<%= cpno %>">
		<textarea rows="3" id="cpreview" name="cpreview" style="width:95%; resize: none;"></textarea>&nbsp;&nbsp;&nbsp;
		</td>
		<td width="80px">����:
			<select id="cpscore" name="cpscore" style="width:50px">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5" selected>5</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
		<td align="center">
		<a style="color:#ffffff; background-color: #060A41; border-radius:3px 3px 3px 3px; padding: 5px 5px;" href="#" id="writesubmit">���</a>
		</form>
		</td>
	</tr>											
	<tr>
		<!-- champion/cpinfo.jsp?cppage=1&cpno=26 ó��-->
		<td align="center" colspan="4">
		<%
		//[9] ó���������� ������
		if( pageno != 1 )
		{
				%>
				<a style="color:darkred;" href="../champion/cpinfo.jsp?cppage=1&cpno=<%= cpno %>">&lt;&lt;</a>
				&nbsp;&nbsp;&nbsp;
				<%
		}
		
		//[10] ������������ ������
		if( startblock > 1 )
		{
				%>
				<a style="color:darkred;" href="../champion/cpinfo.jsp?cppage=<%= startblock - 1 %>&cpno=<%= cpno %>">&lt;</a>
				&nbsp;&nbsp;&nbsp;
				<%
		}
		
		//[8] ���� ������
		for(int i = startblock ; i <= endblock ; i++ )
		{
			//���� �������� ���� ������ �������� ������ ������ �����Ѵ�.
			if( pageno == i )
			{
				%>
				<a style="color:red;" href="../champion/cpinfo.jsp?cppage=<%= i %>&cpno=<%= cpno %>"><%= i %></a>
				&nbsp;&nbsp;&nbsp;
				<%
			}else
			{
				%>
				<a href="../champion/cpinfo.jsp?cppage=<%= i %>&cpno=<%= cpno %>"><%= i %></a>
				&nbsp;&nbsp;&nbsp;
				<%
			}
		}
		
		//[11] ������������ ������
		if( endblock != maxpage )
		{
				%>
				<a style="color:darkred;" href="../champion/cpinfo.jsp?cppage=<%= endblock + 1 %>&cpno=<%= cpno %>">&gt;</a>
				&nbsp;&nbsp;&nbsp;
				<%
		}
		
		//[12] ���������� ������
		if( pageno != maxpage )
		{
				%>
				<a style="color:darkred;" href="../champion/cpinfo.jsp?cppage=<%= maxpage %>&cpno=<%= cpno %>">&gt;&gt;</a>
				<%
		}
		%>
		</td>
	</tr>								
</table>
<%
dbms.DBClose();
%>
<%@ include file="../include/maintail.jsp" %>