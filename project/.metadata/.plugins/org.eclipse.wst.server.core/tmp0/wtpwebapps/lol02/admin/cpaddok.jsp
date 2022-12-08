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
UserVO loginVO = (UserVO)session.getAttribute("logon");
if(loginVO == null || !loginVO.getUadmin().equals("A"))
{
	response.sendRedirect("../main/index.jsp");
	return;
}

request.setCharacterEncoding("euc-kr");

//���ε� ��� ����, ���ε尡 ������ �ִ� ����ũ�� ���� -> ��ũ���� ����.

//enctype="multipart/form-data" �� �����͸� �޴´�.
//new MultipartRequest(request,���,ũ��,"���",�ߺ��̸��Ұ��ϰ� ����°� --> new DefaultFileRenamePolicy());
MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"EUC-KR",new DefaultFileRenamePolicy());

String cpname = multi.getParameter("cpname");
String cpnickname = multi.getParameter("cpnickname");
String cpename = multi.getParameter("cpename");
String cpstdimg = multi.getFilesystemName("cpstdimg");
String cpbkimg = multi.getFilesystemName("cpbkimg");
String cpinfo = multi.getParameter("cpinfo");
String cpstory = multi.getParameter("cpstory");
String position[] = multi.getParameterValues("position");

DBManager dbms = new DBManager();

dbms.DBOpen();

String sql = "insert into champion (cpkname,cpnickname,cpename,cpstdimg,cpbkimg,cpinfo,cpstory) ";
sql += "values ('" + dbms.r_id(cpname) + "','" + dbms.r_id(cpnickname) + "', ";
sql += "'" + dbms.r_id(cpename) + "','" + cpstdimg + "','" + cpbkimg + "', ";
sql += "'" + dbms.r_note(cpinfo) + "','" + dbms.r_note(cpstory) + "') ";

dbms.RunSQL(sql);

//��ϵ� ���̵��� ��ȣ�� ��´�.
sql = "select last_insert_id() as cpno "; // �������� ���� cpno �� �����̸�

dbms.OpenQuery(sql);
dbms.GetNext();
String cpno = dbms.GetValue("cpno"); //cpno : ������ ������ �����̸�

dbms.CloseQuery();

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
	alert("è�Ǿ��� �߰��Ǿ����ϴ�.");
	opener.parent.location.reload();
	window.close();
</script>