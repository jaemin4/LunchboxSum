<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<link rel="stylesheet" href="asset/owl/owl.carousel.min.css">
<link rel="stylesheet" href="asset/owl/owl.theme.default.min.css">
<script src="asset/owl/jquery.min.js"></script>
<script src="asset/owl/owl.carousel.min.js"></script>
<script src="asset/owl/owl.carousel.js"></script>
<script src="asset/owl/atuo.js"></script>

<link rel="stylesheet" type="text/css" href="asset/lunchboxloc.css">
<link rel="stylesheet" type="text/css" href="asset/mainstyle.css">

<title>�����������Դϴ�.</title>
</head>
<body>

	<div id="layout" align="center">

		<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="#main"> Main</a></li>
				<li><a href="GoNutrition.do">����� �� Į�θ�</a></li>
				<li><a href="GoAsk.do">���ֹ�������</a></li>
				<li><a href="SelectAll.do">���ö����������Խ���</a></li>
			</ul>

		</div>

		<div id="con">
			<div id="main">
				<div id="dosirak">
					<div class="dosirak-row rf">
						<div id="first" class="s"></div>
						<div id="second" class="s"></div>
						<div id="third" class="s"></div>
					</div>
					<div class="dosirak-row rs">
						<div id="fourth" class="s"></div>
						<div id="fifth" class="s"></div>
					</div>
				</div>
			</div>
			
			<div id="ad">
				<div id="main_box">
					<!-- �α��ΰ� �޷� -->
					<div class="loginst">
					<br>
					<% String name = request.getParameter("name");%>
					<%= name %>���� ����
					<br>
					<% String gender = request.getParameter("gender");%> 	
					���� : <%= gender %>				
					<% String age = request.getParameter("age"); %>
					���� : <%= age %>
					
					<br><br>
					<div class="btn-group-sm">
  					<button type="button" class="btn btn-warning">��������</button>
  					<button type="button" class="btn btn-warning">�α׾ƿ�</button>
 					<button type="button" class="btn btn-warning">ȸ��Ż��</button>
					</div>
					
					</div>
					<div>
					<a href ="#"><button><img width="240" height="393" src="asset/image/cal.jpg"></button></a>
					
					</div>
				</div>
			</div>
			<img class="search_box" id="search_box1" src="asset/image/exsearch1.PNG">
			<img class="search_box"	id="search_box2" src="asset/image/exsearch2.PNG">
			<img class="search_box" id="search_box3" src="asset/image/exsearch3.PNG">
			<img class="search_box"	id="search_box4" src="asset/image/exsearch4.PNG">
			<img class="search_box" id="search_box5" src="asset/image/exsearch5.PNG">
		</div>
		<div id = "slideimg">
		<div id="ingi" align="center">
		<b>������ �α� ����!!</b>
		<div class="owl-carousel owl-theme">

		<img  src="asset/image/�߰���.jpg">
		<img  src="asset/image/�ҽ�������.jpg">
		<img  src="asset/image/�ҽ�����ä����.jpg">
		<img  src="asset/image/�����.jpg">
		<img  src="asset/image/������ī����.jpg">
		<img  src="asset/image/�߰���.jpg">
		<img  src="asset/image/�ҽ�������.jpg">
		<img  src="asset/image/�ҽ�����ä����.jpg">
		<img  src="asset/image/�����.jpg">
		<img  src="asset/image/������ī����.jpg">
		</div>
		</div>
		</div><!-- �����̵��̹��� div ������ -->
		</div>

	<script>
		$("#first").click(function() {
			$("#main_box").hide();
			$(".search_box").hide();
			$("#search_box1").fadeIn();
		});
		$("#second").click(function() {
			$("#main_box").hide();
			$(".search_box").hide();
			$("#search_box2").fadeIn();
		});
		$("#third").click(function() {
			$("#main_box").hide();
			$(".search_box").hide();
			$("#search_box3").fadeIn();
		});
		$("#fourth").click(function() {
			$("#main_box").hide();
			$(".search_box").hide();
			$("#search_box4").fadeIn();
		});
		$("#fifth").click(function() {
			$("#main_box").hide();
			$(".search_box").hide();
			$("#search_box5").fadeIn();
		});
	</script>
	
	<script>
		$('.owl-carousel').owlCarousel({
			loop : true,
			margin : 10,
			nav : true,
			responsive : { 
				0 : {
					items : 1
				},
				600 : {
					items : 3
				},
				1000 : {
					items : 5
				}
			}
		})
	</script>
	<h1>����������</h1>
	<button onclick="location.href='GoCalendar.do?mb_id=admin'" class="btn btn-primary btn-sm">�޷�</button>
	<button onclick="location.href='GoLunch.do'" class="btn btn-primary btn-sm">��ġ</button>
	
	
</body>
</html>