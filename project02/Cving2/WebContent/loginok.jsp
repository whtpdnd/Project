<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cving.dbms.*" %>
<%@ page import="util.*" %>
<%
String id = request.getParameter("id"); //�Ű����� ��û !!
String pw = request.getParameter("pw");

DBManager db = new DBManager();
db.DBOpen();

String sql="";
sql  = "select uno, uid, uname,ubirth, ugender from user ";
sql += "where uid = '" + id + "' and upw = md5('" + pw + "') ";
db.OpenQuery(sql); //������Ѷ�

if(db.GetNext() == true)	
{
	//�α����� ���� ��
	String uno = db.GetValue("uno");
	UserVO vo = new UserVO();
	CalAge cal = new CalAge();
	vo.setUno(uno);
	vo.setUage(cal.DoCal(db.GetValue("ubirth")));
	vo.setUgender(db.GetValue("ugender"));
	vo.setUname(db.GetValue("uname"));
	session.setAttribute("login",vo);
	
	sql  = "select * from hobby "; //��ȣ�帣�� ��ϵǾ��ִ��� 
	sql += "where uno = " + uno; //�α����� ������ ��ȣ�� �ִ��� ����.
	db.OpenQuery(sql); //sql ������ ���� �����ش�.
	if(db.GetNext() == true)  //���� ���� ������ ~(�˻��� ���� ������ )
	{
		//�ι�°�̻� �α���������
		response.sendRedirect("index.jsp"); //��û �������� ���޶�� ��û�ϴ°� !
		
	}
	else
	{ 	
		//ó�� �α���������
		response.sendRedirect("hobby.jsp");
		
	}
	db.CloseQuery();
}
else
{
	%>
	<script>
		alert("���̵� ��й�ȣ�� ��ġ���� �ʽ��ϴ�");
		document.location = "login.jsp";
	</script>
	<%
}
	
db.CloseQuery();
db.DBClose();

%>