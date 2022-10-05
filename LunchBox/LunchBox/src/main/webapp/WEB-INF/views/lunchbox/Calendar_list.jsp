<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- fullcalender -->
<link href='.//resources/fullcalendar-5.11.3/lib/main.css'
	rel='stylesheet' />
<script src='.//resources/fullcalendar-5.11.3/lib/main.js'></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			contentHeight : 500,
			events : [
				{
				title: '다이어트 도시락',
                start: '2022-09-20'
				}
			],
			navLinks : true,
			navLinkDayClick : function(date, jsEvent) {
				
				console.log('day', date.toISOString());
				console.log('coords', jsEvent.pageX, jsEvent.pageY);
				let day = date.toISOString().split('T')[0];
				console.log('day', day);
				location.href = 'GoCalendarDetail.do?day=' + day;

			},
		});
		calendar.render();
	});
	
	
</script>

<title>Insert title here</title>
</head>
<body>

	<!-- 
		메인기능2 - 런치박스 플래너
		
		달력페이지!
		저장해둔 부분만 색을 입혀서 출력
		>> 누르면 해당날짜에 저장된 도시락상세페이지로 이동
	-->

	<h1>달력페이지 테스트</h1>
	<hr>
	
	<div id='calendar'></div>
	
	<div id='user_date'> <!--  style='display: none;'>-->
		<c:forEach  var="Lunchlist" items="${user_lunchList}">
			<p>
					도시락 : ${Lunchlist.lb_Name}
				<br>날짜 : ${Lunchlist.ld_Date}
			</p>
		</c:forEach>
	</div>
	
</body>
</html>