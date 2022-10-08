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

<title>ë©”ì¸í˜ì´ì§€ì…ë‹ˆë‹¤.</title>
</head>
<body>
		<%
			response.setCharacterEncoding("UTF-8");
			String user_id = (String)session.getAttribute("sessionID");
			String user_gender = (String)session.getAttribute("sessionGender");
			int user_age = (int)session.getAttribute("sessionBirthdate");
			System.out.println("ì„¸ì…˜ì— ì €ì¥ëœ ì•„ì´ë””ëŠ” "+session.getAttribute("sessionID")+"ì…ë‹ˆë‹¤.");
			System.out.println("ì„¸ì…˜ì— ì €ì¥ëœ ì„±ë³„ì€ "+session.getAttribute("sessionGender")+"ì…ë‹ˆë‹¤.");
			System.out.println("ì„¸ì…˜ì— ì €ì¥ëœ ë‚˜ì´ëŠ” "+session.getAttribute("sessionBirthdate")+"ì…ë‹ˆë‹¤.");
			System.out.println(user_id);
			if(user_id == null){
				response.sendRedirect("Door.do");
			}
    	%> 	
	<div id="layout" align="center">

		<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="#main"> Main</a></li>
<<<<<<< HEAD
				<li><a href="Nutrition.do">ì˜ì–‘ì†Œ ë° ì¹¼ë¡œë¦¬</a></li>
				<li><a href="GoAsk.do">ìì£¼ë¬»ëŠ”ì§ˆë¬¸</a></li>
				<li><a href="SelectAll.do">ë„ì‹œë½ì •ë³´ê³µìœ ê²Œì‹œíŒ</a></li>
				<%if(user_id.equals("admin")){ %>
					<li><a href="Admin.do">íšŒì› ëª©ë¡ ì¡°íšŒ</a></li>
					<li><a href="AdminUser.do">íšŒì› ì •ë³´ ë¶„ì„</a></li>
				<%}%>
=======
				<li><a href="GoNutrition.do">¿µ¾ç¼Ò ¹× Ä®·Î¸®</a></li>
				<li><a href="GoAsk.do">ÀÚÁÖ¹¯´ÂÁú¹®</a></li>
				<li><a href="SelectAll.do">µµ½Ã¶ôÁ¤º¸°øÀ¯°Ô½ÃÆÇ</a></li>
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git
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
					<!-- ë¡œê·¸ì¸ê³¼ ë‹¬ëŸ­ -->
					<div class="loginst">
					<br>
					
					
					<%=user_id%>ë‹˜ì˜ ì •ë³´
					<br>
					ì„±ë³„ : <%=user_gender%>				
					ë‚˜ì´ : <%=user_age%>
					
					<br><br>
					<div class="btn-group-sm">
  					<button type="button" class="btn btn-warning" onclick="location.href='GoUpdate.do'">ì •ë³´ìˆ˜ì •</button>
  					<button type="button" class="btn btn-warning" onclick="location.href='Logout.do'">ë¡œê·¸ì•„ì›ƒ</button>
 					<button type="button" class="btn btn-warning" onclick="location.href='GoDelete.do'">íšŒì›íƒˆí‡´</button>
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
		<b>ì˜¤ëŠ˜ì˜ ì¸ê¸° ë°˜ì°¬!!</b>
		<div class="owl-carousel owl-theme">

<<<<<<< HEAD
		<img  src="../asset/image/ë‹­ê°•ì •.jpg">
		<img  src="../asset/image/ì†Œì‹œì§€ë³¶ìŒ.jpg">
		<img  src="../asset/image/ì†Œì‹œì§€ì•¼ì±„ë³¶ìŒ.jpg">
		<img  src="../asset/image/ì–´ë¬µë³¶ìŒ.jpg">
		<img  src="../asset/image/íŒŒí”„ë¦¬ì¹´ë³¶ìŒ.jpg">
		<img  src="../asset/image/ë‹­ê°•ì •.jpg">
		<img  src="../asset/image/ì†Œì‹œì§€ë³¶ìŒ.jpg">
		<img  src="../asset/image/ì†Œì‹œì§€ì•¼ì±„ë³¶ìŒ.jpg">
		<img  src="../asset/image/ì–´ë¬µë³¶ìŒ.jpg">
		<img  src="../asset/image/íŒŒí”„ë¦¬ì¹´ë³¶ìŒ.jpg">
=======
		<img  src="asset/image/´ß°­Á¤.jpg">
		<img  src="asset/image/¼Ò½ÃÁöººÀ½.jpg">
		<img  src="asset/image/¼Ò½ÃÁö¾ßÃ¤ººÀ½.jpg">
		<img  src="asset/image/¾î¹¬ººÀ½.jpg">
		<img  src="asset/image/ÆÄÇÁ¸®Ä«ººÀ½.jpg">
		<img  src="asset/image/´ß°­Á¤.jpg">
		<img  src="asset/image/¼Ò½ÃÁöººÀ½.jpg">
		<img  src="asset/image/¼Ò½ÃÁö¾ßÃ¤ººÀ½.jpg">
		<img  src="asset/image/¾î¹¬ººÀ½.jpg">
		<img  src="asset/image/ÆÄÇÁ¸®Ä«ººÀ½.jpg">
		</div>
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git
		</div>
		</div><!-- ìŠ¬ë¼ì´ë”©ì´ë¯¸ì§€ div ë§ˆë¬´ë¦¬ -->
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
	<h1>ë©”ì¸í˜ì´ì§€</h1>
	<button onclick="location.href='GoCalendar.do?mb_id=admin'" class="btn btn-primary btn-sm">ë‹¬ë ¥</button>
	<button onclick="location.href='GoLunch.do'" class="btn btn-primary btn-sm">ëŸ°ì¹˜</button>
	
	
</body>
</html>