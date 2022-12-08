<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>������õ</title>
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
				<div style="float:left; padding-left:20px; padding-right:20px;"><h2><a href="playlist.jsp" class="cate1">&nbsp;�÷��� ����Ʈ </a></h2></div>
				<div style="float:left;"><h2><a href="mytaste.jsp" class="cate1">&nbsp;�� ���� �м�</a></h2></div>
			</div>
		</div>