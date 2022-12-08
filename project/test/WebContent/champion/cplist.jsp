<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/mainhead.jsp" %>
<script>
window.onload = function()
{
	$("#cpdel").click(function(){
		var check_val = "";
		$("input:checkbox[name='check_cpno']").each(function()
		{
			if(this.checked == true)
			{
				if(check_val != "") check_val += ",";
				check_val += this.value;
			}	
		});
		if(confirm("���� �Ͻðڽ��ϱ�?") == 1)
		{	
			window.open("../admin/cpdelete.jsp?cpno=" +check_val, "_cpdelete",
			"width=600,height=550");
		}	
	});
}
function DoCpAdd()
{
	window.open("../admin/cpadd.jsp", "_cpadd",
	"width=600,height=550");	
}



/*
function DoCpDelete()
{
	if(confirm("�����Ͻðڽ��ϱ�?") == 1)
	{
		window.open("../admin/cpdelete.jsp", "_cpdelete",
		"width=600,height=550");	
		$("#cplist").submit();
	}
}
*/
//���콺 over�� �ߵ��Ǵ� �޼ҵ�
function DoDetail(cpno, cpkname, cpename, img, cpinfo)
{
	
	$.ajax({
		type : "get",
		url: "../champion/position.jsp?cpno=" + cpno,
		dataType: "html",
		success : function(data)
		{	
			//�޼ҵ尡 ����Ǹ� div�� ����������
			$("#cpdetail").css("display","");
			// ����� ���������� �̷�������� �� �Լ��� Ÿ�Եȴ�.	
			$("#td_cpname").html(cpkname);
			$("#td_cpename").html(cpename);
			$("#td_img").attr("src","../upload/"+img); 
			$("#td_info").html(cpinfo);
			$("#td_position").html(data);
			//���콺�� �����϶� ����ٴϴ� �ڵ�
		},
		error : function(xhr, status, error) 
		{
			// ��� ���� �߻���
		}
	});
	
	//���콺�� �����϶� ����ٴϴ� �ڵ�
	$(document).mousemove(
		function(e) {
	      mouseX = e.pageX;
	      mouseY = e.pageY;
	      $('#cpdetail').css("left", mouseX+15).css("top", mouseY+15);
	 });
	
	//���콺�� ������ ������ �ʰ���.
	$(this).mouseleave(
		function()
		{
			$("#cpdetail").css("display","none");
		}		
	);
}
</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<table  class="inner" border="0" style="width:100%;">
	<tr>
		<td>è�Ǿ� ����Դϴ�.</td>
		<td align="center"><a href="javascript:DoCpAdd();">è�Ǿ� �߰�</a></td>
		<td align="center"><a href="#" id="cpdel">è�Ǿ� ����</a></td>
	</tr>
</table>
<div class= "inner_a">
	<table border="0" style="width:100%;">
		<tr>
			<td><a>��������</a></td>
		</tr>
		<tr>
			<td align="center">
			<form id="position" name="position" method="post">
			<input type="checkbox">&nbsp;&nbsp;����&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox">&nbsp;&nbsp;������&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox">&nbsp;&nbsp;���Ÿ�
			</td>
		</tr>
		<tr>
			<td  class="search" align="right">
			<input type="text" size="10">
			<a href="#">�˻�</a>
			</from>
			</td>
		</tr>	
	</table>
</div>
<div class="divnull">
	<br>
</div>
	<form method="post" action="cpdelete.jsp" id="cplist" name="cplist"> 
		<table class="list_image" border="0" style="width:100%; height:500px">
		<%
		DBManager db = new DBManager();
		db.DBOpen();
		int rowno = 0;
		String sql = "";
		sql += "select cpno, cpinfo, cpkname, cpename, cpnickname, cpstdimg ";
		sql += "from champion ";
		sql += "order by cpno desc ";
		sql += "limit 0,10 ";
		db.OpenQuery(sql);
		%>
		<tr>
		<% 
			while(db.GetNext() == true)
			{
				String cpno = db.GetValue("cpno");
				String cpinfo = db.GetValue("cpinfo");
				String cpkname = db.GetValue("cpkname");
				String cpename = db.GetValue("cpename");
				String cpnickname = db.GetValue("cpnickname");
				String cpstdimg = db.GetValue("cpstdimg");

					
				if(rowno % 5 == 0)
				{
					%>
					</tr>
					<tr>
					<% 
				}
				%>
				<td align="center"><input type="checkbox" id="check_cpno" name="check_cpno" value="<%= cpno %>">
				<br>
				<a href="cpinfo.jsp?cpno=<%= cpno %>" onmouseenter="DoDetail('<%= cpno %>','<%= cpkname %>','<%= cpename %>','<%= cpstdimg %>', '<%= cpinfo %>');" id="cpimg">
				<img src="../upload/<%= cpstdimg %>">
				</a>
				<br>
				<a href="cpinfo.jsp?cpno=<%= cpno %>"><%= cpkname %></a>
				</td>
				<% 
				rowno++;
			}
			db.DBClose();
			%>		
			
		</tr>
	</table>
</form>
<div id="cpdetail" style="display:none;">
<table border="0" style="background-color:black;">
 	<tr>
 		<td rowspan="3" style="width:30px;"><img id="td_img" src=""></td>
 		<td style="color:#F6700E;" id="td_cpname"></td>
 	</tr>
 	<tr>
 		<td style="color:#8eb3b8;" id="td_cpename"></td>
 	</tr>
 	<tr>
 		<td style="color:#7cacbd;" id="td_position"></td>
 	</tr>
 	<tr>
 		<td colspan="2" style="color:#a0acbd;" id="td_info"></td>
 	</tr>
</table>
</div>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="../include/maintail.jsp" %>