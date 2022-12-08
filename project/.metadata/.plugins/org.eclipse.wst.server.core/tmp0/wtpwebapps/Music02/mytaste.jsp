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
		      labels: ["��/����", "��", "Ʈ��Ʈ", "�߶��", "�ε�/����ƽ"],
		      datasets: [{
		        label: "��ȣ�帣(%)",
		        backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
		        data: [20,23,2,20,35]
		      }]
		    },
		    options: {
		      title: {
		        display: true,
		        text: '������ ��ȣ �帣'
		      }
		    }
		});
	}
	</script>	
		<div class="mytaste">
			<hr>
			<h2>user���� ������ �м� �غþ��</h2>
			<br>
			<div class="mybox">
				<canvas id="pie-chart" width="500" height="450"></canvas>
			</div>
			<div class="mymusic">
				<h2>�� �÷��� ����Ʈ</h2>
			</div>
			<table border="0" class="mylist">
				<tr>
					<td class="taste_tbl" width="100px" align="center">NO</td>
					<td class="taste_tbl" width="350px">�÷��̸���Ʈ ����</td>
					<td class="taste_tbl" width="200px">���ϰ�</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">1</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/10cm.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">�÷��� ����Ʈ 1</a>
						<br>
						user
						<br>
						<small>�帣����:�ε�/����ƽ,�߶��</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">�� 21 ��</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">2</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/trot.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">�÷��� ����Ʈ 2</a>
						<br>
						user
						<br>
						<small>�帣����:Ʈ��Ʈ</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">�� 3 ��</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">3</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/mellomas.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">�÷��� ����Ʈ 3</a>
						<br>
						user
						<br>
						<small>�帣����:��/����,�߶��</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">�� 15 ��</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">4</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/tomboy.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">�÷��� ����Ʈ 4</a>
						<br>
						user
						<br>
						<small>�帣����:��,�ε�/����ƽ</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">�� 18 ��</td>
				</tr>
				<tr>
					<td class="taste_tbl" width="100px" align="center">5</td>
					<td class="taste_tbl" width="350px">
						<div style="float: left; padding-right: 15px;">
							<img width="60" height="60" src="./img/myx.jpg">
						</div>
						<div class="info">
						<a href="platlistinfo.jsp">�÷��� ����Ʈ 5</a>
						<br>
						user
						<br>
						<small>�帣����:��,��/����</small>
						</div>
					</td>
					<td class="taste_tbl" width="200px">�� 18 ��</td>
				</tr>
				<tr>
					<td colspan="3"><a href="#" class="hover" id="btn_add"><b>+�÷��� ����Ʈ �߰�</b></a></td>
				</tr>
			</table>
			<div class="mypage">
				<a href="#" class="pageno">���� ������</a> |  
				<a href="#" class="pageno">���� ������</a>
			</div>
			<div class="recommend_music">
				<h3>��õ �뷡</h3>
				<div class="recommend">
					<a href="#"><img width="72" height="72" src="./img/ive.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">After LIKE</a><br>
					IVE (���̺�)<br>
					�帣:��
				</div>
				<div class="recommend">
					<a href="musicinfo.jsp"><img width="72" height="72" src="./img/wsg.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">�׶� �� ���� �״�� (�ױױ�)</a><br>
					WSG���ʺ� (����G)<br>
					�帣:�߶��
				</div>
				<div class="recommend">
					<a href="musicinfo.jsp"><img width="72" height="72" src="./img/10cm-grdes.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">�׶��̼�</a><br>
					10CM<br>
					�帣:�ε�����, ��ũ/��罺
				</div>
				<div class="recommend">
					<a href="musicinfo.jsp"><img width="72" height="72" src="./img/lovedive.jpg"></a>
				</div>
				<div class="recommend_info">
					<a href="musicinfo.jsp">LOVE DIVE</a><br>
					IVE (���̺�)<br>
					�帣:��
				</div>
			</div>
		</div>
<%@ include file = "../include/tail.jsp" %>
	</body>
</html>