<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "../include/head.jsp" %>
	<script>
	window.onload = function()
	{
		$("#btn_upload").click(function(){
			OpenWindow(500, 550, "upload_playlist.jsp", "플레이리스트 업로드");
		})
	}
	</script>	
		<div class="listbody">
			<hr>
				<div class="list">
					<div style="position: relative;"><a href="#" class="hover" id="btn_upload"><b>플레이리스트 올리기</b></a></div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">오늘같이 싱그러운 날엔?<br></a>인디/어쿠스틱</div></div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">신나는 케이팝과 함께 자존감 끌어 올↗려↗↗<br></a>댄스/아이돌</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">마음이 쉬고 싶을 때 듣는 위로의 노래<br></a>어쿠스틱/발라드</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">운전은 네가 해, 음악은 내가 틀게<br></a>아이돌/힙합</div>
					</div>
				</div>
				<br>
				<div class="list">
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">오늘같이 싱그러운 날엔?<br></a>인디/어쿠스틱</div></div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">신나는 케이팝과 함께 자존감 끌어 올↗려↗↗<br></a>댄스/아이돌</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">마음이 쉬고 싶을 때 듣는 위로의 노래<br></a>어쿠스틱/발라드</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">운전은 네가 해, 음악은 내가 틀게<br></a>아이돌/힙합</div>
					</div>
				</div>
		</div>
			<div class="page">
				<a href="#" class="pageno">이전 페이지</a> | 
				<a href="#" class="pageno">1</a> | 
				<a href="#" class="pageno">2</a> | 
				<a href="#" class="pageno">3</a> | 
				<a href="#" class="pageno">4</a> | 
				<a href="#" class="pageno">5</a> | 
				<a href="#" class="pageno">다음 페이지</a>
			</div>
		<%@ include file = "../include/tail.jsp" %>
	</body>
</html>