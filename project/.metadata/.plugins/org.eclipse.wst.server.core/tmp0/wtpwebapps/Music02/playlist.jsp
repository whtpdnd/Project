<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file = "../include/head.jsp" %>
	<script>
	window.onload = function()
	{
		$("#btn_upload").click(function(){
			OpenWindow(500, 550, "upload_playlist.jsp", "�÷��̸���Ʈ ���ε�");
		})
	}
	</script>	
		<div class="listbody">
			<hr>
				<div class="list">
					<div style="position: relative;"><a href="#" class="hover" id="btn_upload"><b>�÷��̸���Ʈ �ø���</b></a></div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">���ð��� �̱׷��� ����?<br></a>�ε�/������ƽ</div></div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">�ų��� �����˰� �Բ� ������ ���� �âַ��֢�<br></a>����/���̵�</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">������ ���� ���� �� ��� ������ �뷡<br></a>������ƽ/�߶��</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">������ �װ� ��, ������ ���� Ʋ��<br></a>���̵�/����</div>
					</div>
				</div>
				<br>
				<div class="list">
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">���ð��� �̱׷��� ����?<br></a>�ε�/������ƽ</div></div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">�ų��� �����˰� �Բ� ������ ���� �âַ��֢�<br></a>����/���̵�</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">������ ���� ���� �� ��� ������ �뷡<br></a>������ƽ/�߶��</div>
					</div>
					<div class="playlist">
						<a href="playlistinfo.jsp"><img src="./img/imsi_img.jpg" style="width: 220px; height: 250px;">
						</a><div class="genre"><a href="platlistinfo.jsp">������ �װ� ��, ������ ���� Ʋ��<br></a>���̵�/����</div>
					</div>
				</div>
		</div>
			<div class="page">
				<a href="#" class="pageno">���� ������</a> | 
				<a href="#" class="pageno">1</a> | 
				<a href="#" class="pageno">2</a> | 
				<a href="#" class="pageno">3</a> | 
				<a href="#" class="pageno">4</a> | 
				<a href="#" class="pageno">5</a> | 
				<a href="#" class="pageno">���� ������</a>
			</div>
		<%@ include file = "../include/tail.jsp" %>
	</body>
</html>