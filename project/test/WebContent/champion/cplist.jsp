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
		if(confirm("삭제 하시겠습니까?") == 1)
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
	if(confirm("삭제하시겠습니까?") == 1)
	{
		window.open("../admin/cpdelete.jsp", "_cpdelete",
		"width=600,height=550");	
		$("#cplist").submit();
	}
}
*/
//마우스 over시 발동되는 메소드
function DoDetail(cpno, cpkname, cpename, img, cpinfo)
{
	
	$.ajax({
		type : "get",
		url: "../champion/position.jsp?cpno=" + cpno,
		dataType: "html",
		success : function(data)
		{	
			//메소드가 실행되면 div가 보여지게함
			$("#cpdetail").css("display","");
			// 통신이 성공적으로 이루어졌을때 이 함수를 타게된다.	
			$("#td_cpname").html(cpkname);
			$("#td_cpename").html(cpename);
			$("#td_img").attr("src","../upload/"+img); 
			$("#td_info").html(cpinfo);
			$("#td_position").html(data);
			//마우스가 움직일때 따라다니는 코드
		},
		error : function(xhr, status, error) 
		{
			// 통신 오류 발생시
		}
	});
	
	//마우스가 움직일때 따라다니는 코드
	$(document).mousemove(
		function(e) {
	      mouseX = e.pageX;
	      mouseY = e.pageY;
	      $('#cpdetail').css("left", mouseX+15).css("top", mouseY+15);
	 });
	
	//마우스가 떠나면 보이지 않게함.
	$(this).mouseleave(
		function()
		{
			$("#cpdetail").css("display","none");
		}		
	);
}
</script>
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<table  class="inner" border="0" style="width:100%;">
	<tr>
		<td>챔피언 목록입니다.</td>
		<td align="center"><a href="javascript:DoCpAdd();">챔피언 추가</a></td>
		<td align="center"><a href="#" id="cpdel">챔피언 삭제</a></td>
	</tr>
</table>
<div class= "inner_a">
	<table border="0" style="width:100%;">
		<tr>
			<td><a>역할필터</a></td>
		</tr>
		<tr>
			<td align="center">
			<form id="position" name="position" method="post">
			<input type="checkbox">&nbsp;&nbsp;전사&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox">&nbsp;&nbsp;마법사&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox">&nbsp;&nbsp;원거리
			</td>
		</tr>
		<tr>
			<td  class="search" align="right">
			<input type="text" size="10">
			<a href="#">검색</a>
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
<!-- 컨텐츠 출력 되는곳 -------------------------- -->
<%@ include file="../include/maintail.jsp" %>