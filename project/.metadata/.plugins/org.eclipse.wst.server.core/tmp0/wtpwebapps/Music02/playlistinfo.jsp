<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>�÷��� ����Ʈ ����</title>
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
	window.onload = function()
	{
		$("#btn_login").click(function(){
			OpenWindow(500, 400, "login.jsp", "�α���");
		});
		
		$("#btn_join").click(function(){
			OpenWindow(500, 550, "join.jsp", "ȸ������");
		});
	}
	//�˾�â ���ϴ� ũ��� ȭ�� �߾ӿ� ����ִ� �Լ�.
	function OpenWindow(width, height, url, pop_name)
	{
		var _width = width;
		var _height = height;
		 
		// �˾��� ��� ��ġ��Ű�� ���� �Ʒ��� ���� �� ���ϱ�
		var _left = Math.ceil(( window.screen.width - _width )/2);
		var _top = Math.ceil(( window.screen.height - _height )/2);
		window.open(url, pop_name, 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top );
	}
	</script>
		<div class="header">
			<div class="logo">
				<a href="index.jsp"><img src="./img/melon.jpg"></a>
			</div>
			<div class="search-box">
				<form action="search.jsp" method="post">
				  <input class="search-txt" type="text" placeholder="�˻�� �Է��� �ּ���.">
				  <a href="search.jsp" class="search-btn">
				  	 <i class="fas fa-search"></i>
				  </a>
				</form>
			</div>
			<div class="login">
				<button id="btn_login">�α���</button>	
			</div>
			<div class="join">
				<button id="btn_join">ȸ������</button>
			</div>
			<div class="category"> 
				<div style="float:left;"><h2><a href="musiclist.jsp" class="cate1">�뷡 ��� </a></h2></div>
				<div style="float:left; padding-left:20px; padding-right:20px;"><h2><a href="playlist.jsp" class="cate_on">&nbsp;�÷��� ����Ʈ </a></h2></div>
				<div style="float:left;"><h2><a href="mytaste.jsp" class="cate1">&nbsp;�� ���� �м�</a></h2></div>
			</div>
		</div>
		<div class="playlist_body">
			<hr>
			<div class="playlist_img">
				<img src="./img/imsi_img.jpg" style="width: 262px; height: 262px;">
			</div>
			<div class="platlist_info">
				<h2>���ð��� �̱׷��� ����?</h2>
				<table class="music_info" style="border-spacing: 0 10px;">
					<tr>
						<td>�ۼ���</td>
						<td>&nbsp;user</td>
					</tr>
					<tr>
						<td>�ۼ���</td>
						<td>&nbsp;2022.10.18</td>
					</tr>
					<tr>
						<td>�帣</td>
						<td>�ε�/����ƽ,�߶��</td>
					</tr>
					<tr>
						<td>���ϰ�</td>
						<td>25��</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="playlist_body2">
		<h2>���ϰ�</h2>
			<hr>	
			<table border="0" class="playlist_page">
				<tr>
					<th class="tbl" width="80px" colspan="2" align="center">NO</th>
					<th class="tbl" width="350px" align="left">����</th>
					<th class="tbl" width="450px" align="left">�ٹ���</th>
					<th class="tbl" width="80px" align="center">����</th>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">1</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/music_img.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">���� ������ ���</a></td>
					<td class="tbl" width="450px" align="justify">I'M</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">��â��</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">2</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/ive.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">After LIKE</a></td>
					<td class="tbl" width="450px" align="justify">After LIKE</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">IVE (���̺�)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">3</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/zico.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">���� (Prod. ZICO) (Feat. ȣ�̵�)</a></td>
					<td class="tbl" width="450px" align="justify">��Ʈ�� �� ������(SMF) Original Vol.3 (��޹̼�)</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">���� (ZICO)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">4</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/lovedive.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">LOVE DIVE</a></td>
					<td class="tbl" width="450px" align="justify">LOVE DIVE</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">IVE (���̺�)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">5</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/10cm.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">�� 10CM��</a></td>
					<td class="tbl" width="450px" align="justify">�� 10CM��</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">10CM, BIG Naughty (������)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">6</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/tomboy.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">TOMBOY</a></td>
					<td class="tbl" width="450px" align="justify">I NEVER DIE</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">(����)���̵�</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">7</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/wsg.jpg"></a></td>
		 			<td class="tbl" width="350px" align="justify"><a href="#" class="title">�׶� �� ���� �״�� (�ױױ�)</a></td>
					<td class="tbl" width="450px" align="justify">WSG���ʺ� 1��</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">WSG���ʺ� (����G)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">8</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/mellomas.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">����ΰ� ��</a></td>
					<td class="tbl" width="450px" align="justify">����ΰ� �� (�系�¼� OST ����� Ʈ��)</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">��θ���</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">9</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/myx.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">���� X����</a></td>
					<td class="tbl" width="450px" align="justify">���� X����</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">�漭</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">10</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/10cm-grdes.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">�׶��̼�</a></td>
					<td class="tbl" width="450px" align="justify">5.3</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">10CM</div></td>
				</tr>
			</table>
		</div>
		<br>
		<div class=platlist_page>
			<a href="#" class="pageno">���� ������</a> | 
			<a href="#" class="pageno">1</a> | 
			<a href="#" class="pageno">2</a> | 
			<a href="#" class="pageno">3</a> | 
			<a href="#" class="pageno">���� ������</a>
		</div>
		<div class="footer">
		<hr>
			��Ī: �ֽ�ȸ�� ���� | ��Ϲ�ȣ: ���� ��4048 | ��Ͽ�����: 2022. 11. 24 | ��ȣ: Music<br>
				����: C team | �����: ����ϵ� ���ֽ� ������ �ݾϵ� ������ǻ���п� 4�� 407ȣ<br> Music��
				�������� ���۱ǹ��� ��ȣ�� �����Ƿ�, ���� ����, ����, ���� ���� ���մϴ�.<br>
		</div>
	</body>
</html>