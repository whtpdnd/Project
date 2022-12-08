<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../common/uploadpath.jsp" %>    
<%@ page import="lol.dbms.*" %>    
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>    
<%
request.setCharacterEncoding("euc-kr");


//업로드가 가능한 최대 파일 크기를 지정한다.
int size = 10 * 1024 * 1024;

//enctype="multipart/form-data" 로 데이터를 받는다.
MultipartRequest multi = 
	new MultipartRequest(request,uploadpath,size,
		"EUC-KR",new DefaultFileRenamePolicy());
String cpno = multi.getParameter("cpno");
String cpkname = multi.getParameter("cpkname");
String cpename = multi.getParameter("cpename");
String cpnickname = multi.getParameter("cpnickname");
String cpinfo = multi.getParameter("cpinfo");
String cpstory = multi.getParameter("cpstory");
String stdimg = multi.getFilesystemName("cpstdimg");
String bkimg = multi.getFilesystemName("cpbkimg");
String position[] = multi.getParameterValues("position");

DBManager db = new DBManager();
db.DBOpen();

String sql = "";
sql += "update champion set ";
sql += "cpkname = '" +cpkname +"', cpename = '" +cpename +"', cpnickname = '" +cpnickname +"', cpinfo = '" +cpinfo +"', cpstory = '" +cpstory +"', ";
sql += "cpstdimg = '" +stdimg +"', cpbkimg = '" +bkimg +"' ";
sql += "where cpno = " +cpno;
db.RunSQL(sql);

sql = "";
sql += "delete from position where cpno = " +cpno;
db.RunSQL(sql);

for(int i = 0; i < position.length; i++)
{
	String ary[] = position[i].split(":");
	sql = "";
	sql += "insert into position(cpno,pcode,pname) ";
	sql += "values('" +cpno +"','" +ary[0] +"','" +ary[1] +"') ";
	db.RunSQL(sql);
}
db.DBClose();
%>

<script>
	alert("수정완료");
	window.close();
</script>