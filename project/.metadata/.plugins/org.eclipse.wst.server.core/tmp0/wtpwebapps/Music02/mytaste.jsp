<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "../include/head.jsp" %>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	<script src="./js/jquery-3.6.0.js"></script>
	</head>
	<body>
	<script>
	window.onload = function()
	{
		new Chart(document.getElementById("pie-chart"), {
		    type: 'pie',
		    data: {
		      labels: ["랩/힙합", "댄스", "트로트", "발라드", "인디/어쿠스틱"],
		      datasets: [{
		        label: "선호장르(%)",
		        backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
		        data: [20,23,2,20,35]
		      }]
		    },
		    options: {
		      title: {
		        display: true,
		        text: '유저의 선호 장르'
		      }
		    }
		});
	}
	</script>	
		<div class="mytaste">
			<hr>
			<h2>user님의 취향을 분석 해봤어요</h2>
			<br>
			<div class="mybox">
				<canvas id="pie-chart" width="500" height="450"></canvas>
			</div>
			<div class="mymusic">
				<h2>내 플레이 리스트</h2>
			</div>
			<table border="0" class="mylist">
				<tr>
					<td class="taste_tbl" width="100px" align="center">NO</td>
					<td class="taste_tbl" width="350px">플레이리스트 정보</td>
					<td class="taste_tbl" width="200px">수록곡</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">1</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/10cm.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">플레이 리스트 1</a>
						<br>
						user
						<br>
						<small>장르구성:인디/어쿠스틱,발라드</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">총 21 곡</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">2</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/trot.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">플레이 리스트 2</a>
						<br>
						user
						<br>
						<small>장르구성:트로트</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">총 3 곡</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">3</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/mellomas.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">플레이 리스트 3</a>
						<br>
						user
						<br>
						<small>장르구성:랩/힙합,발라드</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">총 15 곡</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">4</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/tomboy.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">플레이 리스트 4</a>
						<br>
						user
						<br>
						<small>장르구성:댄스,인디/어쿠스틱</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">총 18 곡</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">5</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/myx.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">플레이 리스트 5</a>
						<br>
						user
						<br>
						<small>장르구성:댄스,랩/힙합</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">총 18 곡</td>
				</tr>
				<tr>
					<td colspan="3"><a href="#" class="hover" id="btn_add"><b>+플레이 리스트 추가</b></a></td>
				</tr>
			</table>
			<div class="mypage">
				<a href="#" class="pageno">이전 페이지</a> |  
				<a href="#" class="pageno">다음 페이지</a>
			</div>
			<div class="recommend_music">
				<h3>추천 노래</h3>
				<div class="recommend">
					<a href="#"><img width="72" height="72" src="./img/ive.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">After LIKE</a><br>
					IVE (아이브)<br>
					장르:댄스
				</div>
				<div class="recommend">
					<a href="musicinfo.jsp"><img width="72" height="72" src="./img/wsg.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">그때 그 순간 그대로 (그그그)</a><br>
					WSG워너비 (가야G)<br>
					장르:발라드
				</div>
				<div class="recommend">
					<a href="musicinfo.jsp"><img width="72" height="72" src="./img/10cm-grdes.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">그라데이션</a><br>
					10CM<br>
					장르:인디음악, 포크/블루스
				</div>
				<div class="recommend">
					<a href="musicinfo.jsp"><img width="72" height="72" src="./img/lovedive.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">LOVE DIVE</a><br>
					IVE (아이브)<br>
					장르:댄스
				</div>
			</div>
		</div>
<%@ include file = "../include/tail.jsp" %>
	</body>
</html>