<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>    
<%@ page import="java.io.*" %>   
<%
DBManager db = new DBManager();
db.DBOpen();

String uploadPath = "D:\\JSW\\project\\test\\upload";

String cpno = request.getParameter("cpno");
if(cpno == null)
{
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}

//ano에 해당하는 첨부파일 정보를 db로부터 가져온다.
String sql = "";

sql  = "select cpstdimg,cpbkimg ";
sql += "from champion ";
sql += "where cpno = " + cpno + " ";
db.OpenQuery(sql);
if(db.GetNext() == false)
{
	//해당 첨부파일이 없음.
	db.DBClose();
	response.sendRedirect("index.jsp");
	return;
}
String bkname = db.GetValue("cpbkimg");
String stdname = db.GetValue("cpstdimg");
db.CloseQuery();

//전체 파일명을 만든다.
bkname = uploadPath + "\\" + bkname;

//브라우저에 첨부파일을 읽어서 보낸다.
//out.println(pname + "<br>");
//out.println(fname + "<br>");

//브라우저에 파일명을 보낸다.
response.setContentType("application/octet-stream");   
response.setHeader("Content-Disposition","attachment; filename=" + bkname);
response.setHeader("Content-Disposition","attachment; filename=" + stdname);

File file1 = new File(bkname);
FileInputStream fileIn1 = new FileInputStream(file1);
ServletOutputStream ostream1 = response.getOutputStream();

File file2 = new File(stdname);
FileInputStream fileIn2 = new FileInputStream(file2);
ServletOutputStream ostream2 = response.getOutputStream();

byte[] outputByte = new byte[4096];
//copy binary contect to output stream
while(fileIn1.read(outputByte, 0, 4096) != -1)
{
	ostream1.write(outputByte, 0, 4096);
}

byte[] outputByte1 = new byte[4096];
//copy binary contect to output stream
while(fileIn2.read(outputByte, 0, 4096) != -1)
{
	ostream2.write(outputByte, 0, 4096);
}
fileIn1.close();
ostream1.flush();
ostream1.close();
fileIn2.close();
ostream2.flush();
ostream2.close();
db.DBClose();
%>

