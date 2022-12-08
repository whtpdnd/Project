<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>음악추천</title>
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
	window.onload = function()
	{
		$("#btn_login").click(function(){
			OpenWindow(500, 400, "login.jsp", "로그인");
		});
		
		$("#btn_join").click(function(){
			OpenWindow(500, 550, "join.jsp", "회원가입");
		});
	}
	//팝업창 원하는 크기로 화면 중앙에 띄워주는 함수.
	function OpenWindow(width, height, url, pop_name)
	{
		var _width = width;
		var _height = height;
		 
		// 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
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
				  <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요.">
				  <a href="search.jsp" class="search-btn">
				  	 <i class="fas fa-search"></i>
				  </a>
				</form>
			</div>
			<div class="login">
				<button id="btn_login">로그인</button>	
			</div>
			<div class="join">
				<button id="btn_join">회원가입</button>
			</div>
			<div class="category"> 
				<div style="float:left;"><h2><a href="musiclist.jsp" class="cate1">노래 목록 </a></h2></div>
				<div style="float:left; padding-left:20px; padding-right:20px;"><h2><a href="playlist.jsp" class="cate1">&nbsp;플레이 리스트 </a></h2></div>
				<div style="float:left;"><h2><a href="mytaste.jsp" class="cate1">&nbsp;내 취향 분석</a></h2></div>
			</div>
		</div>