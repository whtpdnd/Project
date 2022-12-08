<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./config/config.jsp"%>
<%
UserVO LoginVO = (UserVO)session.getAttribute("login");
if(LoginVO == null)
{
	//�α����� ���� ������ login�������� �Ѱ��ش�.
	response.sendRedirect("login.jsp");
	return;
}
request.setCharacterEncoding("euc-kr");

String key = request.getParameter("key");

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>search</title>
		<link rel="stylesheet" href="css/cving.css">
		<script src="./jquery-3.6.0.js"></script>
	</head>
	<script>
		window.onload = function()
		{
			$("input").keyup(function(e){
				if(e.keyCode == 13)
				{
					DoSearch();
				}
			});
			
			$("#btn_search").click(function(){
				DoSearch();
			});
		}
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
			<header id = "header">
				<div class="logo">
					<a href="./index.jsp">
					<img src="./img/logoback.png" style="width: 100%; height: 100%;">
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
			<section class="search_movie">
			</section>
			<div id="wrap">
			<div class="m_imgin" style="padding:50px 0px 100px 0px;">
			<h1>'<%= key %>'(��)�� ���Ե� �帣�� �˻� ���</h1>
			<%
			
			DBManager db = new DBManager();
			db.DBOpen();
			String sql = "";
			sql = "select hobby from hobby where uno = " + LoginVO.getUno(); //hobby ���̺� �α����� ���� vo�� ��ȣ�� uno�� ������ hobby�÷��� ������ �´�.
			db.OpenQuery(sql);
			String hobby = "";
			while(db.GetNext())
			{
				if(!hobby.equals("")) hobby += ","; 
				hobby += db.GetValue("hobby");
			}
			System.out.println("�� �帣:" + hobby);
			String realhobby[] = hobby.split(","); //��ǥ�� �������� ���ڿ��� ������ �迭�� ������ش�.
			db.CloseQuery();
			
			sql = "";
			sql  = "select mimg, mcode  from (select mimg, mcode from movie ";
			sql += "where used = 'Y' and mtitle like + '%"+ key +"%' ";
			sql += "order by rand() limit 0, 100 ) x limit 0, 8 ";
			int count = 1;
			boolean isCheckData = false;
			db.OpenQuery(sql);
			while(db.GetNext()) //�������� �����;��ؼ� while�ݺ����� �Ἥ ��� �������� �ϴ°� 
			{
				isCheckData = true;
				String mimg = db.GetValue("mimg");
				String mcode = db.GetValue("mcode");
				mimg = mimg.replace("https://movie-phinf.pstatic.net","");
				mimg = "./img/" + mimg.replace("/","_");
				if(mimg.equals("����"))
				{
					%>
					<a href="./info.jsp?code=<%= mcode %>"><img src="./img/img_null.png"></a>
					<%
				}
				else
				{
					%>
					<a href="./info.jsp?code=<%= mcode %>"><img src="<%= mimg %>"></a>
					<%
				}
				if(count % 4 == 0)
				{
					%>
					</div>
					<div class="m_imgin" style="padding:50px 0px 100px 0px;">
					<%
				}
				count++;
			}
			db.CloseQuery();
			
			if(isCheckData == false)
			{
				%>
				<div align="center">'<%= key %>'�ΰ˻��� �����Ͱ� �����ϴ�</div>
				<%
			}
			%>
			
			
			
			<h1>'<%= key %>'(��)�� ���Ե� �帣�� �˻� ���</h1>
			<%
			
			sql = "";
			sql  = "select mimg, mcode  from (select mimg, mcode from movie ";
			sql += "where used = 'Y' and mhobby like + '%"+ key +"%' ";
			sql += "order by rand() limit 0, 100 ) x limit 0, 8 ";
			int con = 1;
			boolean isCheckhobby = false;
			db.OpenQuery(sql);
			while(db.GetNext()) //�������� �����;��ؼ� while�ݺ����� �Ἥ ��� �������� �ϴ°� 
			{
				isCheckhobby = true;
				String mimg = db.GetValue("mimg");
				String mcode = db.GetValue("mcode");
				mimg = mimg.replace("https://movie-phinf.pstatic.net","");
				mimg = "./img/" + mimg.replace("/","_");
				if(mimg.equals("����"))
				{
					%>
					<a href="./info.jsp?code=<%= mcode %>"><img src="./img/img_null.png"></a>
					<%
				}
				else
				{
					%>
					<a href="./info.jsp?code=<%= mcode %>"><img src="<%= mimg %>"></a>
					<%
				}
				if(con % 4 == 0)
				{
					%>
					</div>
					<div class="m_imgin" style="padding:50px 0px 100px 0px;">
					<%
				}
				con++;
			}
			db.CloseQuery();
			
			if(isCheckhobby == false)
			{
				%>
				<div align="center">'<%= key %>'�ΰ˻��� �����Ͱ� �����ϴ�</div>
				<%
				String gen = "";
				if(LoginVO.getUgender().equals("M"))
				{
					gen = "����";
				}else
				{
					gen = "����";
				}
				%>
				</div>
				<h1>[ <%= LoginVO.getUname() %> ]���� �����ϽǸ��� �ٸ� �帣 ��ȭ ��õ</h1>
				<div id="wrap" style="margin-top:30px; width:100%; height:300px; display:flex;">
					<%
					String gender = "";
					String age = "";
					
					if(LoginVO != null && LoginVO.getUage().equals("10"))
					{
						age = "teenage";
					}else if(LoginVO != null && LoginVO.getUage().equals("20"))
					{
						age = "twenty";
					}else if(LoginVO != null && LoginVO.getUage().equals("30"))
					{
						age = "thirty";
					}else if(LoginVO != null && LoginVO.getUage().equals("40"))
					{
						age = "forty";
					}else if(LoginVO != null && LoginVO.getUage().equals("50"))
					{
						age = "fifty";
					}
					if(LoginVO != null && LoginVO.getUgender().equals("M"))
					{
						gender = "male";
					}else if(LoginVO != null && LoginVO.getUgender().equals("W"))
					{
						gender = "female";
					}
					String subsql = "select sum(x." +gender +") as gender,sum(x." +age + ") as age,y.mhobby ";
					subsql+= "from movie x inner join genre y ";
					subsql+="on x.mcode = y.mcode ";
					subsql+="group by y.mhobby "; 
					subsql+="order by gender desc, age desc ";
					//System.out.print(subsql);
					
					db.OpenQuery(subsql);
					String new_hobby = "";
					int hit = 0;
					
					while(db.GetNext())
					{	
						if(hobby.indexOf(db.GetValue("mhobby")) > -1)
						{
							continue;
						}
						else
						{
							if(!new_hobby.equals(""))
								new_hobby += ",";
							
							new_hobby += db.GetValue("mhobby");
							count++;
							if( hit == 3)
								break;
						}
						
					}
					System.out.println("������� ��õ�帣 : " + new_hobby);
					db.CloseQuery();
					
					String hobby_list[] = new_hobby.split(",");
					for(int i = 0; i < hobby_list.length; i++)
					{
						
						System.out.println(hobby_list[i]);
					}
					sql = "select mcode,mhobby,mscore,mimg  from( ";
					sql += "select mcode, mhobby, mscore, mimg from movie ";
					sql += "where 1=1 "; //������ �� 
					sql += "and mscore < 9.50 "; //����9.50���� ������
					sql += "and mscore > 8.30 ";
					sql += "and used = 'Y' "; //��ȭ�� �������� ��ȭ���� ..
					if(gender.equals("male"))
					{
						sql += "and male > female ";
						//sql += "and male < 100 "; 
					}else
					{
						sql += "and male < female ";
						//sql += "and female < 100 ";
					}
					sql += "and " + age + " > 30 ";
					String sub_sql = "";
					
					for(int i = 0; i < hobby_list.length; i++)
					{
						if( !sub_sql.equals(""))
						{
							sub_sql += " or ";
						}
						sub_sql +=  " mhobby in (select mhobby from genre where mhobby like '%"+ hobby_list[i] +"%') ";
					}
					if( !sub_sql.equals(""))
					{
						sql += "and(" + sub_sql + ") ";
					}
					sql += "order by rand() limit 0, 100 ) x ";
					sql += "limit 0, 4 ";//�������� ���� ������������ 
					db.OpenQuery(sql);
					while(db.GetNext())
					{
						String mcode = db.GetValue("mcode");
						String mimg = db.GetValue("mimg");
						%>
						<div class="m_imgin" style="padding:0px 0px 100px 0px;">
							<a href="info.jsp?code=<%= mcode %>"><img src="<%= mimg %>"></a>
						</div>
						<%
					}
					db.CloseQuery();
			}
			%>
			</div>
				<footer>
				<article class="foot_menu">
				 	<hr style="background-color:white;">
					��Ī: �ֽ�ȸ�� ���� | ��Ϲ�ȣ: ���� ��4048 | ��Ͽ�����: 2022. 10. 14 | ��ȣ: CVING<br>
					����: C team  | �����: ����ϵ� ���ֽ� ������ �ݾϵ� ������ǻ���п� 4�� 407ȣ<br>
					CVING�� �������� ���۱ǹ��� ��ȣ�� �����Ƿ�, ���� ����, ����, ���� ���� ���մϴ�.<br>
				</article>
				</footer>
			</div>
		</div>
	</body>
</html>
<% 
db.DBClose();
%>