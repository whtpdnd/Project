<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>플레이 리스트 정보</title>
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
				<div style="float:left; padding-left:20px; padding-right:20px;"><h2><a href="playlist.jsp" class="cate_on">&nbsp;플레이 리스트 </a></h2></div>
				<div style="float:left;"><h2><a href="mytaste.jsp" class="cate1">&nbsp;내 취향 분석</a></h2></div>
			</div>
		</div>
		<div class="playlist_body">
			<hr>
			<div class="playlist_img">
				<img src="./img/imsi_img.jpg" style="width: 262px; height: 262px;">
			</div>
			<div class="platlist_info">
				<h2>오늘같이 싱그러운 날엔?</h2>
				<table class="music_info" style="border-spacing: 0 10px;">
					<tr>
						<td>작성자</td>
						<td>&nbsp;user</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>&nbsp;2022.10.18</td>
					</tr>
					<tr>
						<td>장르</td>
						<td>인디/어쿠스틱,발라드</td>
					</tr>
					<tr>
						<td>수록곡</td>
						<td>25곡</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="playlist_body2">
		<h2>수록곡</h2>
			<hr>	
			<table border="0" class="playlist_page">
				<tr>
					<th class="tbl" width="80px" colspan="2" align="center">NO</th>
					<th class="tbl" width="350px" align="left">제목</th>
					<th class="tbl" width="450px" align="left">앨범명</th>
					<th class="tbl" width="80px" align="center">가수</th>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">1</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/music_img.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">내가 저지른 사랑</a></td>
					<td class="tbl" width="450px" align="justify">I'M</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">임창정</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">2</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/ive.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">After LIKE</a></td>
					<td class="tbl" width="450px" align="justify">After LIKE</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">IVE (아이브)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">3</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/zico.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">새삥 (Prod. ZICO) (Feat. 호미들)</a></td>
					<td class="tbl" width="450px" align="justify">스트릿 맨 파이터(SMF) Original Vol.3 (계급미션)</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">지코 (ZICO)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">4</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/lovedive.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">LOVE DIVE</a></td>
					<td class="tbl" width="450px" align="justify">LOVE DIVE</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">IVE (아이브)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">5</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/10cm.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">딱 10CM만</a></td>
					<td class="tbl" width="450px" align="justify">딱 10CM만</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">10CM, BIG Naughty (서동현)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">6</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/tomboy.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">TOMBOY</a></td>
					<td class="tbl" width="450px" align="justify">I NEVER DIE</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">(여자)아이들</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">7</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/wsg.jpg"></a></td>
		 			<td class="tbl" width="350px" align="justify"><a href="#" class="title">그때 그 순간 그대로 (그그그)</a></td>
					<td class="tbl" width="450px" align="justify">WSG워너비 1집</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">WSG워너비 (가야G)</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">8</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/mellomas.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">사랑인가 봐</a></td>
					<td class="tbl" width="450px" align="justify">사랑인가 봐 (사내맞선 OST 스페셜 트랙)</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">멜로망스</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">9</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/myx.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">나의 X에게</a></td>
					<td class="tbl" width="450px" align="justify">나의 X에게</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">경서</div></td>
				</tr>
				<tr>
					<td class="tbl" width="80px" align="center">10</td>
					<td class="tbl" width="80px" align="center"><a href="#"><img width="60" height="60" src="./img/10cm-grdes.jpg"></a></td>
					<td class="tbl" width="350px" align="justify"><a href="#" class="title">그라데이션</a></td>
					<td class="tbl" width="450px" align="justify">5.3</td>
					<td class="tbl" width="80px" align="justify"><div class="div_singer">10CM</div></td>
				</tr>
			</table>
		</div>
		<br>
		<div class=platlist_page>
			<a href="#" class="pageno">이전 페이지</a> | 
			<a href="#" class="pageno">1</a> | 
			<a href="#" class="pageno">2</a> | 
			<a href="#" class="pageno">3</a> | 
			<a href="#" class="pageno">다음 페이지</a>
		</div>
		<div class="footer">
		<hr>
			명칭: 주식회사 이젠 | 등록번호: 전북 소4048 | 등록연월일: 2022. 11. 24 | 제호: Music<br>
				발행: C team | 발행소: 전라북도 전주시 덕진구 금암동 이젠컴퓨터학원 4층 407호<br> Music의
				콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다.<br>
		</div>
	</body>
</html>