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
<script src=".//resources/js/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

	

	document.addEventListener('DOMContentLoaded', function() {
		
		// ajax ��û
		// ajax ��û���� events �޾ƿ���
		$.ajax({
			url : 'ajax.do',
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
			            start: res[i].ld_Date
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
		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : 'dayGridMonth',
			contentHeight : 500,
			events : data,
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
	}
</script>

<title>Insert title here</title>
</head>
<body>

	<!-- 
		���α��2 - ��ġ�ڽ� �÷���
		
		�޷�������!
		�����ص� �κи� ���� ������ ���
		>> ������ �ش糯¥�� ����� ���ö����������� �̵�
	-->

	<h1>�޷������� �׽�Ʈ</h1>
	<hr>
	
	<div id='calendar'></div>
	
	<div id='user_date'> <!--  style='display: none;'>-->
		<c:forEach  var="Lunchlist" items="${user_lunchList}">
			<p>
					���ö� : ${Lunchlist.lb_Name}
				<br>��¥ : ${Lunchlist.ld_Date}
			</p>
		</c:forEach>
	</div>
	
</body>
</html>