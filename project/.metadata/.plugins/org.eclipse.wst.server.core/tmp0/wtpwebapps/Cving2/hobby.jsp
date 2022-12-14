<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="cving.dbms.*" %>
<%@ page import="util.*" %>
<%
//user vo를 가져와서 loginvo에 담아주는것!
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
				alert("장르를 3개만 선택하세요");
				return;
			}
			else
			{
				if(confirm("장르선택을 완료하시겠습니까?"))
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
				<p> 나만을 위한 콘텐츠를 추천 받아보세요.</p>
				<h1> 관심 장르 3개를 선택 하세요.</h1>
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
						<input type="checkbox" class="chbx_1" name="genre" value="다큐멘터리">다큐멘터리
						<input type="checkbox" style="margin-left:170px;" name="genre" value="드라마">드라마
						<input type="checkbox" style="margin-left:200px;" name="genre" value="멜로/로맨스">멜로/로맨스
						<input type="checkbox" style="margin-left:190px;" name="genre" value="미스터리">미스터리
					</div>
					<div class="m_imgin">
						<img src="./img/liveperformance.jpg">
						<img src="./img/fantasy.jpg">
						<img src="./img/adventure.jpg">
						<img src="./img/war.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="공연실황">공연실황	
						<input type="checkbox" style="margin-left:190px;" name="genre" value="판타지">판타지
						<input type="checkbox" style="margin-left:210px;" name="genre" value="모험">모험
						<input type="checkbox" style="margin-left:230px;" name="genre" value="전쟁">전쟁
					</div>
					<div class="m_imgin">
						<img src="./img/comedy.jpg">
						<img src="./img/sf.jpg">
						<img src="./img/suspense.jpg">
						<img src="./img/west.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="코미디">코미디
						<input type="checkbox" style="margin-left:220px;" name="genre" value="SF">SF
						<input type="checkbox" style="margin-left:230px;" name="genre" value="서스펜스">서스펜스
						<input type="checkbox" style="margin-left:200px;" name="genre" value="서부">서부
					</div>
					<div class="m_imgin">
						<img src="./img/horror.jpg">
						<img src="./img/thriller.jpg">
						<img src="./img/animation.jpg">
						<img src="./img/action.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="공포">공포
						<input type="checkbox" style="margin-left:230px;" name="genre" value="스릴러">스릴러
						<input type="checkbox" style="margin-left:180px;" name="genre" value="애니메이션">애니메이션
						<input type="checkbox" style="margin-left:190px;" name="genre" value="액션">액션
					</div>
					<div class="m_imgin">
						<img src="./img/martialarts.jpg">
						<img src="./img/epic.jpg">
						<img src="./img/noir.jpg">
						<img src="./img/crime.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="무협">무협
						<input type="checkbox" style="margin-left:230px;" name="genre" value="서사">서사
						<input type="checkbox" style="margin-left:220px;" name="genre" value="느와르">느와르
						<input type="checkbox" style="margin-left:210px;" name="genre" value="범죄">범죄
					</div>
					<div class="m_imgin">
						<img src="./img/family.jpg">
						<img src="./img/blackcomedy.jpg">
					</div>
					<div class="box">
						<input type="checkbox" class="chbx_1" name="genre" value="가족">가족
						<input type="checkbox" style="margin-left:220px;" name="genre" value="블랙코미디">블랙코미디
					</div>
				</div>
				<div class="btn_hobby">
					<input type="button" name="btn_hobby" id="btn_hobby" value="완료">
				</div>
			</form>
			<footer>
			<article class="foot_menu">
				<hr style="background-color:white;">
				명칭: 주식회사 이젠 | 등록번호: 전북 소4048 | 등록연월일: 2022. 10. 14 | 제호: CVING<br>
				발행: C team  | 발행소: 전라북도 전주시 덕진구 금암동 이젠컴퓨터학원 4층 407호<br>
				CVING의 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다.<br>
			</article>
			</footer>
		</div>
	</body>
</html>