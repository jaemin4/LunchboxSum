<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

			<style>
				#search_box1{
					background-color: #fff;
				}
				.recepie-list-box{
					padding: 20px;
					height: 80%;
					background-color: red;
				}

			</style>


<title>메인페이지입니다.</title>
</head>
<body>
		<%
			response.setCharacterEncoding("UTF-8");
			String user_id = (String)session.getAttribute("sessionID");
			String user_gender = (String)session.getAttribute("sessionGender");
			int user_age = (int)session.getAttribute("sessionBirthdate");
			System.out.println("세션에 저장된 아이디는 "+session.getAttribute("sessionID")+"입니다.");
			System.out.println("세션에 저장된 성별은 "+session.getAttribute("sessionGender")+"입니다.");
			System.out.println("세션에 저장된 나이는 "+session.getAttribute("sessionBirthdate")+"입니다.");
			System.out.println(user_id);
			if(user_id == null){
				response.sendRedirect("Door.do");
			}
    	%> 	
	<div id="layout" align="center">

		<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>

				<li><a href="GoLunch.do"> Main</a></li>

				<li><a href="GoMain.do"> Main</a></li>
				<li><a href="GoNutrition.do">영양소 및 칼로리</a></li>
				<li><a href="GoAsk.do">자주묻는질문</a></li>
				<li><a href="SelectAll.do">도시락정보공유게시판</a></li>
				<%if(user_id.equals("admin")){ %>
					<li><a href="Admin.do">회원 목록 조회</a></li>
					<li><a href="AdminUser.do">회원 정보 분석</a></li>
				<%}%>
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
					
					
					<%=user_id%>님의 정보
					<br>
					성별 : <%=user_gender%>				
					나이 : <%=user_age%>
					
					<br><br>
					<div class="btn-group-sm">
  					<button type="button" class="btn btn-warning" onclick="location.href='GoUpdate.do'">정보수정</button>
  					<button type="button" class="btn btn-warning" onclick="location.href='Logout.do'">로그아웃</button>
 					<button type="button" class="btn btn-warning" onclick="location.href='GoDelete.do'">회원탈퇴</button>
					<button onclick="location.href='GoResult.do?mb_id=admin&lb_seq=1'" class="btn btn-primary btn-sm">결과</button>
					</div>
					
					</div>
					<div>
					<button type="button" onclick="location.href='GoCalendar.do?mb_id=<%=user_id%>'" class="btn btn-primary btn-sm">
					<img width="240" height="393" src="asset/image/cal.jpg">
					달력</button>
					</div>
				</div>
			</div>
			<!-- <img class="search_box" id="search_box1" src="asset/image/exsearch1.PNG"> -->
			<div class="search_box" id="search_box1">
				<input type="text">
				<input type="button" value="검색">
				<div class="recepie-list-box">

				</div>
			</div>

			
			<img class="search_box"	id="search_box2" src="asset/image/exsearch2.PNG">
			<img class="search_box" id="search_box3" src="asset/image/exsearch3.PNG">
			<img class="search_box"	id="search_box4" src="asset/image/exsearch4.PNG">
			<img class="search_box" id="search_box5" src="asset/image/exsearch5.PNG">
		</div>
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
		</div>
		</div><!-- 슬라이딩이미지 div 마무리 -->
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
	<h1>메인페이지</h1>

	<button onclick="location.href='GoLunch.do'" class="btn btn-primary btn-sm">런치</button>
	
	
</body>
</html>