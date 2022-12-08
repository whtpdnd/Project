<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cving.dbms.*" %>
<%@ page import="util.*" %>
<%
//user vo�� �����ͼ� loginvo�� ����ִ°�!
UserVO LoginVO = (UserVO)session.getAttribute("login");
if(LoginVO == null)
{
	response.sendRedirect("login.jsp");
	return;
}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>hobby</title>
		<link rel="stylesheet" href="css/cving.css">
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<script>
	window.onload = function()
	{
		$("#btn_hobby").click(function(){
			if($("input:checkbox[name=genre]:checked").length != 3)
			{
				alert("�帣�� 3���� �����ϼ���");
				return;
			}
			else
			{
				if(confirm("�帣������ �Ϸ��Ͻðڽ��ϱ�?"))
				{
					$("#hobby").submit();			
				}	
			}
			
		});
	}
	</script>
	<body>
		<div class="container">
			<section class="hobby_head">
				<p> ������ ���� �������� ��õ �޾ƺ�����.</p>
				<h1> ���� �帣 3���� ���� �ϼ���.</h1>
			</section>
			<form id="hobby" method="post" action="hobbyok.jsp">
				<div id="wrap">
					<div class="m_imgin">
						<img src="./img/documentary.jpg">
						<img src="./img/drama.jpg">
						<img src="./img/mellow.jpg">
						<img src="./img/mystery.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="��ť���͸�">��ť���͸�
						<input type="checkbox" style="margin-left:170px;" name="genre" value="���">���
						<input type="checkbox" style="margin-left:200px;" name="genre" value="���/�θǽ�">���/�θǽ�
						<input type="checkbox" style="margin-left:190px;" name="genre" value="�̽��͸�">�̽��͸�
					</div>
					<div class="m_imgin">
						<img src="./img/liveperformance.jpg">
						<img src="./img/fantasy.jpg">
						<img src="./img/adventure.jpg">
						<img src="./img/war.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="������Ȳ">������Ȳ	
						<input type="checkbox" style="margin-left:190px;" name="genre" value="��Ÿ��">��Ÿ��
						<input type="checkbox" style="margin-left:210px;" name="genre" value="����">����
						<input type="checkbox" style="margin-left:230px;" name="genre" value="����">����
					</div>
					<div class="m_imgin">
						<img src="./img/comedy.jpg">
						<img src="./img/sf.jpg">
						<img src="./img/suspense.jpg">
						<img src="./img/west.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="�ڹ̵�">�ڹ̵�
						<input type="checkbox" style="margin-left:220px;" name="genre" value="SF">SF
						<input type="checkbox" style="margin-left:230px;" name="genre" value="�����潺">�����潺
						<input type="checkbox" style="margin-left:200px;" name="genre" value="����">����
					</div>
					<div class="m_imgin">
						<img src="./img/horror.jpg">
						<img src="./img/thriller.jpg">
						<img src="./img/animation.jpg">
						<img src="./img/action.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="����">����
						<input type="checkbox" style="margin-left:230px;" name="genre" value="������">������
						<input type="checkbox" style="margin-left:180px;" name="genre" value="�ִϸ��̼�">�ִϸ��̼�
						<input type="checkbox" style="margin-left:190px;" name="genre" value="�׼�">�׼�
					</div>
					<div class="m_imgin">
						<img src="./img/martialarts.jpg">
						<img src="./img/epic.jpg">
						<img src="./img/noir.jpg">
						<img src="./img/crime.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="����">����
						<input type="checkbox" style="margin-left:230px;" name="genre" value="����">����
						<input type="checkbox" style="margin-left:220px;" name="genre" value="���͸�">���͸�
						<input type="checkbox" style="margin-left:210px;" name="genre" value="����">����
					</div>
					<div class="m_imgin">
						<img src="./img/family.jpg">
						<img src="./img/blackcomedy.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="����">����
						<input type="checkbox" style="margin-left:220px;" name="genre" value="���ڹ̵�">���ڹ̵�
					</div>
				</div>
				<div class="btn_hobby">
					<input type="button" name="btn_hobby" id="btn_hobby" value="�Ϸ�">
				</div>
			</form>
			<footer>
			<article class="foot_menu">
				<hr style="background-color:white;">
				��Ī: �ֽ�ȸ�� ���� | ��Ϲ�ȣ: ���� ��4048 | ��Ͽ�����: 2022. 10. 14 | ��ȣ: CVING<br>
				����: C team  | �����: ����ϵ� ���ֽ� ������ �ݾϵ� ������ǻ���п� 4�� 407ȣ<br>
				CVING�� �������� ���۱ǹ��� ��ȣ�� �����Ƿ�, ���� ����, ����, ���� ���� ���մϴ�.<br>
			</article>
			</footer>
		</div>
	</body>
</html>