<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cving.dbms.*" %>
<%@ page import="util.*" %>
<%
UserVO LoginVO = (UserVO)session.getAttribute("login");
if(LoginVO == null)
{
	//�α����� ���� ������ login�������� �Ѱ��ش�.
	response.sendRedirect("login.jsp");
	return;
}
DBManager db = new DBManager();
db.DBOpen();


System.out.println(LoginVO.getUgender());
String sql = "";
sql = "select hobby from hobby where uno = " + LoginVO.getUno(); //hobby ���̺� �α����� ���� vo�� ��ȣ�� uno�� ������ hobby�÷��� ������ �´�.
db.OpenQuery(sql);
String hobby = "";
while(db.GetNext())
{
	if(!hobby.equals("")) hobby += ","; 
	hobby += db.GetValue("hobby");
}
System.out.println(hobby);
String realhobby[] = hobby.split(","); //��ǥ�� �������� ���ڿ��� ������ �迭�� ������ش�.
db.CloseQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CVING</title>
<link rel="stylesheet"href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="css/cving.css">
<script src="./js/jquery-3.6.0.js"></script>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
		$(document).ready(function(){
			$('.slider').bxSlider({
		        mode: 'horizontal', // �����̵� ��� ('fade', 'horizontal', 'vertical' �� ����)
		        pager: false, // ������ ǥ�� ������
		        minSlides : 5,
		        maxSlides : 5,
		        slideMargin : 1,
		        slideWidth : 1200,
		        moveSlides : 1,
		        infiniteLoop : true,
		        hideControlOnEnd: true,
		        caption: true,
		        touchEnabled : (navigator.maxTouchPoints > 0),
			});
			
			$("input").keyup(function(e){
				if(e.keyCode == 13)
				{
					DoSearch();
				}
			});
			
			$("#btn_search").click(function(){
				DoSearch();
			});
		});
		
		function DoSearch()
		{
			if($("#search").val() == "")
			{
				alert("�˻�� �Է��ϼ���!");
				$("#search").foucus();
				return;
			}
			
			
			document.location = "search.jsp?key=" + $("#search").val();
		}
	</script>
<body>
	<div class="container">
		<header id="header">
			<div class="logo">
				<a href="#"> <img src="./img/logoback.png" style="width: 100%; height: 100%;">
				</a>
			</div>
			<div class="logout">
				<a href="./logout.jsp">�α׾ƿ�</a>
			</div>
			<div class="search">
				<input type="text" id="search" name="search" placeholder=" ���� �帣 �˻� �غ����� ">
			</div>
			<div class="b_search">
				<img src="./img/search.png">
			</div>
		</header>
		<div class="top">
			<article class="movie_1">
				�帣�� ��õ ��ȭ
				<ul class="slider">
					<%
					sql = "select mcode, mhobby, mscore, mimg from ( ";
					sql += "select mcode, mhobby, mscore, mimg from movie ";
					sql += "where 1=1 "; //������ �� 
					sql += "and mscore < 9.50 "; //����9.50���� ������
					sql += "and mscore > 8.30 ";
					sql += "and used = 'Y' "; //��ȭ�� �������� ��ȭ���� ..
					String sub_sql = "";
					for(int i = 0 ; i < realhobby.length ; i++)
					{
						if( !sub_sql.equals("") )//sub_sql �� ��� ���� ������ 
							sub_sql += " or ";  //or�� ��� �ְڴ� !
								
						sub_sql += " mhobby in (select mhobby from genre where mhobby like '%"+ realhobby[i] +"%') ";						
					}
					if( !sub_sql.equals("") )
					{
						sql += " and ( " + sub_sql + ") ";
					}
					sql += "order by rand() limit 0, 100 ) x ";
					sql += "limit 0, 20 ";//�������� ���� ������������ 
					db.OpenQuery(sql);
					System.out.println("=========================================");
					System.out.println(sql);
					System.out.println("=========================================");
					while(db.GetNext())
					{
						String mcode = db.GetValue("mcode");
						String mhobby = db.GetValue("mhobby");
						String mscore = db.GetValue("mscore");
						String mimg = db.GetValue("mimg");
						mimg = mimg.replace("https://movie-phinf.pstatic.net","");
						mimg = "./img/" + mimg.replace("/","_");
						
						if(mimg.equals("����"))
						{
		
							%>
							<li><a href="./info.jsp?code=<%= mcode %>"><img src="./img/img_null.png"></a></li>
							<%
						}
						else
						{
							%>
							<li><a href="./info.jsp?code=<%= mcode %>"><img src="<%= mimg %>"></a></li>
							<%
						}
						
					}
					db.CloseQuery();
					%>
				</ul>
			</article>
			<article class="movie_2">
				<%
				sub_sql = "";
				if(LoginVO != null && LoginVO.getUgender().equals("M")) 
				{
					//������ �����϶�..
					%>
					���ڵ��� ��ȣ�ϴ� ��ȭ
					<%
					sub_sql = "and male > female "; //�׸��� ��ȭ ���� ��ȣ�� ���ڼ�ȣ�� �� ���� �� ū��.
					sub_sql += "order by rand() limit 0, 100 ";
					
					
				}else
				{
					%>
					���ڵ��� ��ȣ�ϴ� ��ȭ
					<%
					sub_sql = "and male < female "; //�׸��� ��ȭ ���� ��ȣ�� ���ڼ�ȣ�� �� ���� �� ū��.
					sub_sql += "order by rand() limit 0, 100 ";
				}
				sql = "select mcode, male, female, mscore, mimg from ( ";
				sql += "select mcode, male, female, mscore, mimg from movie ";
				sql += "where 1=1 "; //���̸�
				sql += "and mscore < 9.50 ";
				sql += "and mscore > 8.30 ";
				sql += "and used = 'Y' ";
				sql += sub_sql;
				sql += ") x ";
				sql += "limit 0, 20";
				db.OpenQuery(sql);
				%>
				<ul class="slider">
				<% 
				while(db.GetNext())
				{
					String mcode  = db.GetValue("mcode");
					String male   = db.GetValue("male");
					String female = db.GetValue("female");
					String mscore = db.GetValue("mscore");
					String mimg   = db.GetValue("mimg");
					mimg = mimg.replace("https://movie-phinf.pstatic.net","");
					mimg = "./img/" + mimg.replace("/","_");
					
					if(mimg.equals("����"))
					{
						%>
						<li><a href="./info.jsp?code=<%= mcode %>"><img src="./img/img_null.png"></a></li>
						<%
					}
					else
					{
						%>
						<li><a href="./info.jsp?code=<%= mcode %>"><img src="<%= mimg %>"></a></li>
						<%
					}
				}
				db.CloseQuery();
				%>
				</ul>				
			</article>
			<article class="movie_3">
				�α� ��ȭ
				<ul class="slider">
				<%
					sql = "";
					sql += "select mcode, mhobby, mscore, mimg from ( ";
					sql += "select mcode, mhobby, mscore, mimg from movie ";
					sql += "where 1=1 "; //������ �� 
					sql += "and mscore < 9.50 "; //����9.50���� ������
					sql += "and mscore > 8.30 ";
					sql += "and used = 'Y' ";
					sql += "order by rand() limit 0, 100 ) x limit 0, 20 "; //�������� ���� ������������ 
					db.OpenQuery(sql);
					while(db.GetNext())
					{
						String mcode = db.GetValue("mcode");
						String mhobby = db.GetValue("mhobby");
						String mscore = db.GetValue("mscore");
						String mimg = db.GetValue("mimg");
						mimg = mimg.replace("https://movie-phinf.pstatic.net","");
						mimg = "./img/" + mimg.replace("/","_");
						
						if(mimg.equals("����"))
						{
							%>
							<li><a href="./info.jsp?code=<%= mcode %>"><img src="./img/img_null.png"></a></li>
							<%
						}
						else
						{
							%>
							<li><a href="./info.jsp?code=<%= mcode %>"><img src="<%= mimg %>"></a></li>
							<%
						}
					}
					db.CloseQuery();
				%>
				</ul>
			</article>
		</div>
		<footer>
			<article class="foot_menu">
				<hr style="background-color: white;">
				��Ī: �ֽ�ȸ�� ���� | ��Ϲ�ȣ: ���� ��4048 | ��Ͽ�����: 2022. 10. 14 | ��ȣ: CVING<br>
				����: C team | �����: ����ϵ� ���ֽ� ������ �ݾϵ� ������ǻ���п� 4�� 407ȣ<br> CVING��
				�������� ���۱ǹ��� ��ȣ�� �����Ƿ�, ���� ����, ����, ���� ���� ���մϴ�.<br>
			</article>
		</footer>
	</div>
</body>
</html>
<%
db.DBClose();
%>