<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
=======
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git

<link rel="stylesheet" href="asset/owl/owl.carousel.min.css">
<link rel="stylesheet" href="asset/owl/owl.theme.default.min.css">
<script src="asset/owl/jquery.min.js"></script>
<script src="asset/owl/owl.carousel.min.js"></script>
<script src="asset/owl/owl.carousel.js"></script>
<script src="asset/owl/atuo.js"></script>

<link rel="stylesheet" type="text/css" href="asset/lunchboxloc.css">
<link rel="stylesheet" type="text/css" href="asset/mainstyle.css">

<title>메인페이지입니다</title>
</head>
<body>

<<<<<<< HEAD
	<div id="layout" align="center">

		<div id="header">
			<!--네비게이션바-->
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="#main"> Main</a></li>
				<li><a href="#nutrient">영양소 및 칼로리</a></li>
				<li><a href="#QnA">자주묻는질문</a></li>
				<li><a href="#board">도시락정보공유게시판</a></li>
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
					<!-- 로그인과 달럭 -->
					<div class="loginst">
					<br>
					<% String name = request.getParameter("name");%>
					<%= name %>님의 정보
					<br>
					<% String gender = request.getParameter("gender");%> 	
					성별 : <%= gender %>				
					<% String age = request.getParameter("age"); %>
					나이 : <%= age %>
					
					<br><br>
					<div class="btn-group-sm">
  					<button type="button" class="btn btn-warning">정보수정</button>
  					<button type="button" class="btn btn-warning">로그아웃</button>
 					<button type="button" class="btn btn-warning">회원탈퇴</button>
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
=======
	<!-- 
		硫붿씤 �꽌鍮꾩뒪 �럹�씠吏�!
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git
		
<<<<<<< HEAD
		
		<div id = "slideimg">
		<div id="ingi" align="center">
		<b>오늘의 인기 반찬!!</b>
		<div class="owl-carousel owl-theme">

		<img  src="asset/image/닭강정.jpg">
		<img  src="asset/image/소시지볶음.jpg">
		<img  src="asset/image/소시지야채볶음.jpg">
		<img  src="asset/image/어묵볶음.jpg">
		<img  src="asset/image/파프리카볶음.jpg">
		<img  src="asset/image/닭강정.jpg">
		<img  src="asset/image/소시지볶음.jpg">
		<img  src="asset/image/소시지야채볶음.jpg">
		<img  src="asset/image/어묵볶음.jpg">
		<img  src="asset/image/파프리카볶음.jpg">
		</div>
		</div><!-- 슬라이딩이미지 div 마무리 -->
		</div>
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
=======
		>> 紐⑤뱺 �럹�씠吏�濡� �씠�룞媛��뒫�븯寃�!
	-->
	<h1>硫붿씤�럹�씠吏�</h1>
	<button onclick="location.href='GoCalendar.do?mb_id=admin'" class="btn btn-primary btn-sm">�떖�젰</button>
	<button onclick="location.href='GoLunch.do'" class="btn btn-primary btn-sm">�윴移�</button>
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git
	
	
</body>
</html>