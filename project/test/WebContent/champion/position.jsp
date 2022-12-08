<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>    
<%
String cpno = request.getParameter("cpno");

DBManager db = new DBManager();

db.DBOpen();

String sql = "";
sql += "select pname from position ";
sql += "where cpno = " +cpno;
db.OpenQuery(sql);
String pname = "";
while(db.GetNext() == true)
{
	if(!pname.equals(""))
	{
		pname += ",";
	}
	pname += db.GetValue("pname");
}
out.print(pname);

db.DBClose();
%>
