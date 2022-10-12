<%@page import="com.smhrd.model.Lunchbox"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>

<!-- fullcalender -->
<link href='.//resources/fullcalendar-5.11.3/lib/main.css'
	rel='stylesheet' />
<script src='.//resources/fullcalendar-5.11.3/lib/main.js'></script>
<script src=".//resources/js/jquery-3.6.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script type="text/javascript">

	document.addEventListener('DOMContentLoaded', function() {
		
		// ajax 요청
		// ajax 요청으로 events 받아오기
		$.ajax({
			url : 'calAjax.do',
			type : 'get', // get? post?
			data : {
				"mb_id" : '${mb_id}'
			},
			dataType : 'json',
			success : function(res){
				console.log(res);
				
				data = [];
				
				for(let i = 0; i < res.length; i++){
					data.push({
						title: res[i].lb_Name,
			            start: res[i].ld_Date,
			            allDay: true,
			            color: 'yellow',
			            interactive : true,
			            backgroundColor : 'orange'
					})
				}
				
				console.log(data)
				
				loadCal(data)
			},
			error : function(e){
				alert("error!");
			}
		})
	});	
	
	function loadCal(data){
		var calendarEl = document.getElementById('calendar');
		var user_id = document.getElementById('user_id')
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			contentHeight : 500,
			locale : 'ko',
			events : data,
			/*dateClick: function(date, allDay, jsEvent, view) {
				/* var yy=moment.format("YYYY");
				var mm=moment.format("MM");
				var dd=moment.format("DD");
				var ss=moment.format("dd");
				let day = date.toISOString().split('T')[0];
				location.href = 'GoCalendarDetail.do?day='+day;
			},*/
			//navLinks : true,
			//navLinkDayClick : function(date, jsEvent) {	
			eventClick : function(e) {
				console.log(e.event._def.title+" 체크");
				console.log(moment(e.event._instance.range.start).format('YY/MM/DD'));
				let time = moment(e.event._instance.range.start).format('YY/MM/DD');
				let userID = user_id.innerText;
				let lunch = e.event._def.title;
				
				location.href = 'GoCalendarDetail.do?time='+time+"&userID="+userID;
		
				/* let nowYear = new Date(date).getFullYear();
				let nowMonth = new Date(date).getMonth() + 1;
				let nowday = new Date(date).getDate();
				let userID = user_id.innerText;
				
				console.log('userID체크', user_id);
				console.log('year체크', nowYear);
				console.log('month체크', nowMonth);
				console.log('day체크', nowday);  */
				// console.log('day', date.toISOString()); // 날짜확인(하루어긋남)
				// console.log('coords', jsEvent.pageX, jsEvent.pageY); // 달력위치
				// let day = date.toISOString().split('T')[0];
				// console.log('day', day);
				// location.href = 'GoCalendarDetail.do?year='+nowYear+"&month="+nowMonth+"&day="+nowday+"&userID="+userID;
			},
			eventContent: function(arg) {
				console.log('여기',arg.event._def.title);  
				let italicEl = document.createElement('div')
				  let arrayOfDomNodes = []
					  italicEl.innerHTML = '<img src="https://creazilla-store.fra1.digitaloceanspaces.com/emojis/56590/bento-box-emoji-clipart-md.png" class="event-icon" />';
					  italicEl.innerHTML += arg.event._def.title;
					  arrayOfDomNodes.push(italicEl)
					console.log(arrayOfDomNodes);
				  return { domNodes: arrayOfDomNodes }
			}
			/*
			eventContent: {
				  html: `
				  <div>
					<img src="https://creazilla-store.fra1.digitaloceanspaces.com/emojis/56590/bento-box-emoji-clipart-md.png" class="event-icon" />
				  	\${data}
				  </div>`
			}*/
		});
		calendar.render();
		
		
	}
	
	function clickEvent(){
	$('.fc-event-main').on('click', function(){
			
			result = $(this).parent().parent().parent().children('.fc-daygrid-day-top').children('a').attr('aria-label');
			
			console.log(result);
			
		})
	}
	
</script>
<style type="text/css">
.event-icon {
  width: 24px;
};
.fc-day-number.fc-sat.fc-past {
 color:#0000FF; 
};
.fc-day-number.fc-sun.fc-past {
 color:#FF0000; 
};


/* 네비게이션바 스타일*/
ul {
   list-style-type: none;
   margin: 0;
   padding: 0;
   overflow: hidden;
   background-color: rgba(0,24,113,1);
}

li {
   float: left;
}

li a {
   display: block;
   color: white;
   text-align: center;
   padding: 14px 16px;
   text-decoration: none;
}

li b {
   display: block;
   color: rgba(255,181,73,1);
   text-align: center;
   padding: 14px 16px;
   text-decoration: none;
}



li a:hover {
   background-color: #111;
}




</style>
<title>Insert title here</title>
</head>
<body>

<div id="header">
         <ul>
            <li><b>LunchBoxsimulator</b></li>
            <li><a href="GoMain.do"> Main</a></li>
            <li><a href="GoNutrition.do">영양소 및 칼로리</a></li>
            <li><a href="GoAsk.do">자주묻는질문</a></li>
            <li><a href="SelectAll.do">도시락정보공유게시판</a></li>
         </ul>
		</div>
	
	<% String mb_id = (String)request.getAttribute("mb_id"); %>
	<h1 style="color:gold">LUNCH PLANNER</h1>
	
	<hr>
	
	<div id='calendar'></div>
	
	<div id='user_id' style='display: none;'>
		<%=mb_id%>
	</div>
	
	<div id='user_date' style='display: none;'>
		<c:forEach  var="Lunchlist" items="${user_lunchList}">
			<p>
					도시락 : ${Lunchlist.lb_Name}
				<br>날짜 : ${Lunchlist.ld_Date}
			</p>
		</c:forEach>
	</div>
	
</body>
</html>