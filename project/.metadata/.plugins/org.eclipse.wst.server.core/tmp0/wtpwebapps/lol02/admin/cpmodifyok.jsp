<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.vo.*"  %>
<%@ page import="lol.dbms.*" %>    
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>    
<%@ include file="../common/path.jsp" %>    
<%
request.setCharacterEncoding("euc-kr");

UserVO loginVO = (UserVO)session.getAttribute("logon");
if(loginVO == null || !loginVO.getUadmin().equals("A"))
{
	response.sendRedirect("../main/index.jsp");
	return;
}


//���ε� ��� ����, ���ε尡 ������ �ִ� ����ũ�� ���� -> ��ũ���� ����.

//enctype="multipart/form-data" �� �����͸� �޴´�.
//new MultipartRequest(request,���,ũ��,"���",�ߺ��̸��Ұ��ϰ� ����°� --> new DefaultFileRenamePolicy());
MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"EUC-KR",new DefaultFileRenamePolicy());

String cpno = multi.getParameter("cpno");
String cpstdimg = multi.getFilesystemName("cpstdimg");
String cpbkimg = multi.getFilesystemName("cpbkimg");
String cpinfo = multi.getParameter("cpinfo");
String cpstory = multi.getParameter("cpstory");
String position[] = multi.getParameterValues("position");

DBManager dbms = new DBManager();

dbms.DBOpen();
//è�Ǿ� ������ �����Ѵ�.
String sql = "";

sql += "update champion set ";
sql += "cpinfo='"+ dbms.r_note(cpinfo) +"', ";
if(cpstdimg != null && !cpstdimg.equals(""))
{
	sql += "cpstdimg = '"+ cpstdimg +"', ";
}
if(cpbkimg != null && !cpbkimg.equals(""))
{
	sql += "cpbkimg = '"+ cpbkimg +"', ";
}
sql += "cpstory = '"+ dbms.r_note(cpstory) +"', ";
sql += "cpmdate = now() ";
sql += "where cpno = " + cpno;

dbms.RunSQL(sql);

sql = "delete from position where cpno =" + cpno;
dbms.RunSQL(sql);


if(position != null)
{	
	for(String data : position) //(Ÿ�Ը� ������ : �ɰ� ������)
	{
		String ary[] = data.split(":"); //data�� ":" �������� split(�ɰ���) �� �Ŀ� ary��� ������ [] �迭�� ��ȯ�Ѵ�.
		sql = "insert into position (cpno,pcode,pname) values ('" + cpno + "','" + ary[0] + "','" + ary[1] + "') ";
		dbms.RunSQL(sql);
	}
}

dbms.DBClose();

%>
<script>
	alert("è�Ǿ��� �����Ǿ����ϴ�.");
	opener.parent.location.reload();
	window.close();
</script>