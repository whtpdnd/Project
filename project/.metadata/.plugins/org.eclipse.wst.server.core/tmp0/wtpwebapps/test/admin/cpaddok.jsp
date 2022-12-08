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

String cpname = multi.getParameter("cpname");
String cpnickname = multi.getParameter("cpnickname");
String cpename = multi.getParameter("cpename");
String cpinfo = multi.getParameter("cpinfo");
String cpstory = multi.getParameter("cpstory");
String cpposition[] = multi.getParameterValues("position");
String filename1 = multi.getFilesystemName("cpstdimg");
String filename2 = multi.getFilesystemName("cpbkimg");




DBManager db = new DBManager();
db.DBOpen();
String sql ="";
sql += "insert into champion ";
sql += "(cpkname,cpnickname,cpename,cpinfo,cpstory,cpstdimg,cpbkimg) ";
sql += "values('" +cpname +"','" +cpnickname +"','" +cpename +"','" +cpinfo +"','" +cpstory.replace("'", "") +"','"+filename1 +"','" +filename2 +"')";
db.RunSQL(sql);

//등록된 아이디의 번호를 얻는다.
sql = "select last_insert_id() as cpno ";
db.OpenQuery(sql);
db.GetNext();
String cpno = db.GetValue("cpno");

for(String data : cpposition)
{	
	String ary[] = data.split(":");
	sql = "";
	sql += "insert into position ";
	sql += "(cpno, pcode,pname) ";
	sql += "values('" +cpno +"','" +ary[0] + "','" +ary[1] +"') "; 
	db.RunSQL(sql);
}
db.CloseQuery();

db.DBClose();
%>
<script>
	alert("등록 완료");
  	opener.location.reload();
	window.close();
</script>