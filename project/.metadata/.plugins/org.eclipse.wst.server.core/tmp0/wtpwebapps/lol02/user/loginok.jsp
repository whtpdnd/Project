<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="lol.dbms.*" %>
<%@ page import="lol.vo.*" %>
<%
request.setCharacterEncoding("euc-kr");
//�Ѿ�� input Ÿ�� �����͸� ���ڿ��� �޴´�.
String id = request.getParameter("userid");
String pw = request.getParameter("userpw");

DBManager dbms = new DBManager();
dbms.DBOpen();
String sql = "";
sql += "select uno, uid, uname, uadmin from user ";
sql += "where uretire = 'N' and uid = '"+ id +"' and upw = md5('"+ pw +"') ";
dbms.OpenQuery(sql);

if(dbms.GetNext() == true)
{
	//�α����� ����
	UserVO vo = new UserVO();
	
	vo.setUid(dbms.GetValue("uid"));
	vo.setUadmin(dbms.GetValue("uadmin"));
	vo.setUname(dbms.GetValue("uname"));
	vo.setUno(dbms.GetValue("uno"));
	
	session.setAttribute("logon", vo);
	
	//�ش��ϴ� url�� �̵�! jsp!
	response.sendRedirect("../main/index.jsp");
}
else
{
	//�α��� ����
	%>
	<script>
		alert("���̵�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�!");
		document.location = "../user/login.jsp";
		//��ũ��Ʈ���� ������ url�� �̵�!
	</script>
	<%
}
dbms.CloseQuery();
dbms.DBClose();
%>