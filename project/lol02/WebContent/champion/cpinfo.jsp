<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/cphead.jsp" %>
<%
DBManager dbms = new DBManager();
dbms.DBOpen();

String sql = "";
sql += "select cpkname, cpnickname, cpename, cpbkimg, cpstdimg, cpinfo, ";
sql += "(select avg(rscore) from review where cpno = champion.cpno ) as rscore ";
sql += "from champion ";
sql += "where cpno = " + cpno;
dbms.OpenQuery(sql);
dbms.GetNext();

String cpscore = dbms.GetValue("rscore");
String cpkname = dbms.GetValue("cpkname");
String cpnickname = dbms.GetValue("cpnickname");
String cpename = dbms.GetValue("cpename");
String cpbkimg = dbms.GetValue("cpbkimg");
String cpstdimg = dbms.GetValue("cpstdimg");
String cpinfo = dbms.GetValue("cpinfo");

dbms.CloseQuery();

sql = "";
sql += "select pname from position ";
sql += "where cpno = " + cpno;

dbms.OpenQuery(sql);
String pname = "";
while(dbms.GetNext() == true)
{
	String position = dbms.GetValue("pname");
	if(pname != "") pname += ",";
	pname += position;
}

dbms.CloseQuery();
float fscore = 0 ;
int nscore = 0;

//�Ҽ��� ������ �������� �������� 0�̸� ������ ������ְ�, �������� 0�� �ƴϸ� �Ǽ��� ������ִ� ����.
//String.foarmat() ���ڿ��� ���¸� �ٲ��ִ� �Լ�.
//String.substing() <<�ε��� ���ڸ�ŭ ������ִ� �Լ�.
if(cpscore != null)
{
	fscore = Float.parseFloat(cpscore);
	nscore = Integer.parseInt(cpscore.substring(0, 1));
	
	if(fscore % nscore == 0 )
	{
		cpscore = String.format("%d", (int)fscore);
	}
	else
	{
		cpscore = String.format("%.2f", fscore);	
	}
}
else
{
	cpscore = "0";
}
%>
<style>
.cpbackground_user
{
        margin: 0 ;
        width: 800px;
        height: 100vh;
        background: linear-gradient(
            to left,
            rgba(20, 20, 20, 0) 10%,
            rgba(20, 20, 20, 0.25) 25%,
            rgba(20, 20, 20, 0.5) 50%,
            rgba(20, 20, 20, 0.75) 75%,
            rgba(20, 20, 20, 1) 100%
          ), url("../upload/<%= cpbkimg %>");
        background-size: cover;
        opacity:1
}
</style>
<!-- è�Ǿ� ������ ��� �Ǵ� �� -------------------------- -->
<div class="cpbackground_user" style="width:1000px; height:400px; margin-left:-1px;">
	<table border="0" style="width:100%;">
		<tr>
			<td style="width:50px;"></td>
			<td rowspan="3" align="center" style="width:150px; padding-top:20px;">
			<img src="../upload/<%= cpstdimg %>" width="80%">
			</td>
			<td style="width:50px;"></td>
			<td style="color:#F6700E;"><%= cpkname %>, <%= cpnickname %></td>
		</tr>
		<tr>
			<td style="width:50px;"></td>
			<td style="width:50px;"></td>
			<td style="color:#8eb3b8;"><%= cpename %></td>
		</tr>
	</table>
	<table border="0" style="width:100%; ">
		<tr>
			<td>
			<div style="width:425px; height:150px; resize:none; padding-left:80px; padding-top:20px; color:	lightgray"><%= cpinfo %></div>
			</td>
		</tr>
		<tr>
			<td style="color:#F67004; padding-left:80px;" >������ : &nbsp;<%= pname %></td>
		</tr>
		<tr>
			<td style="color:#F67004; padding-left:80px;" >���� : <%= cpscore %></td>
		</tr>
	</table>
</div>
<!-- è�Ǿ� ������ ��� �Ǵ� �� -------------------------- -->
<%@ include file="../include/cptail.jsp" %>
<!-- ������ ��� �Ǵ°� -------------------------- -->
