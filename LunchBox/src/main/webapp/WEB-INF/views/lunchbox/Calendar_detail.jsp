<%@page import="com.smhrd.model.Lunchbox"%>
<%@page import="com.smhrd.model.Recipe"%>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>

<script>

	document.addEventListener('DOMContentLoaded', function() {
		const ctx = document.getElementById('myChart').getContext('2d');
		let CARBOHYDRATE = <%=request.getAttribute("CARBOHYDRATE")%>;
		let PROTEIN = <%=request.getAttribute("PROTEIN")%>;
		let FAT = <%=request.getAttribute("FAT")%>;
		let CALORIES = <%=request.getAttribute("CALORIES")%>;
		let SUM = CARBOHYDRATE+PROTEIN+FAT;
		
		let CARper = document.getElementById("CARBOHYDRATE");
		let PROper = document.getElementById("PROTEIN");
		let FATper = document.getElementById("FAT");
		let CALper = document.getElementById("CALORIES");
		
		CARper.innerText = '🍞 총 탄수화물 '+CARBOHYDRATE+'g';
		PROper.innerText = '🥩 총 단백질 '+PROTEIN+'g';
		FATper.innerText = '🧈 총 지방 '+FAT+'g';
		CALper.innerText = '✨ 총 칼로리 '+CALORIES+'cal';
		
		const myChart = new Chart(ctx, {
			plugins:[ChartDataLabels],
			type: 'doughnut',
			data: {
				labels: [
					'탄수화물',
					'단백질',
					'지방'
					],
				datasets: [{
					label: ['탄수화물','단백질','지방'],
					data: [CARBOHYDRATE, PROTEIN, FAT],
					backgroundColor: [
						'rgb(255, 99, 132)',
						'rgb(54, 162, 235)',
						'rgb(255, 205, 86)'
						],
					hoverOffset: 4,
					datalabels:{
						color:'white',
						font:{size:12}
					},
				}]
			},
			options : {
				title: {
					display:true,
					text: '나의 도시락 영양소'
				},
				responsive : true,
				legend: {
					display: true,
					position: 'right'},
				plugins:{
					tooltips: {
		                    enabled: false
		                },
					datalabels:{
						color:['#fff','#fff','#fff'],
						borderColor:['#fff','#fff','#fff'],
						anchor : 'center',
						formatter: function(value, context) {
							return context.dataset.label[context.dataIndex] + '\n  ' + Math.round(value/SUM*100)+'%';
						}
					},
				}
			}
		});
		
		
		
		
	});

</script>

<title>Insert title here</title>
</head>
<body>
	<!-- 
		메인기능2 - 런치박스 플래너
		
		해당날짜에 저장된 도시락상세페이지
	-->
	
	<%Lunchbox lunchbox = (Lunchbox)request.getAttribute("date_lunch");%>
	<%ArrayList<Recipe> recipe = (ArrayList<Recipe>)request.getAttribute("boxes");%>
	
	
	<h1>
	<%=lunchbox.getLd_Date().split("-")[0]%>년
	<%=lunchbox.getLd_Date().split("-")[1]%>월
	<%=lunchbox.getLd_Date().split("-")[2].split(" ")[0]%>일 
	<p><%=lunchbox.getLb_Name()%>🍱</p>
	</h1>
		<hr>
	<div style="float: left; width: 50%;">
		<table>
			<% for (int i = 0; i<recipe.size(); i++) {%>
				<tr>
					<td>
						<input type="image" src="<%=recipe.get(i).getRecipe_img()%>" width="150" height="150">
					</td>
					<td>
						<p><%=recipe.get(i).getRecipe_name()%></p>
						탄수화물 : <%=recipe.get(i).getCarbohydrate()%>g<br>
						단백질 : <%=recipe.get(i).getProtein()%>g<br>
						지방 : <%=recipe.get(i).getFat()%>g<br>
						칼로리 : <%=recipe.get(i).getCalories()%>cal
					</td>
				</tr>
			<%} %>
		</table>
	</div>
	<div style="float: left; width: 50%;">
		<table>
			<tr>
				<td>
					<img alt="" src="https://cdn-icons-png.flaticon.com/512/6920/6920151.png" width= 150; height=150;>
					<p><b>나의 도시락 영양정보</b></p>
					<p id="CARBOHYDRATE"></p>
					<p id="PROTEIN"></p>
					<p id="FAT"></p>
					<p></p>
					<p id="CALORIES"></p>
					
				</td>
				<td>
					<canvas id="myChart" style="display:block; width= 400; height=400;"></canvas>
				</td>
			</tr>
			<tr>
				<td colspan="2" >
					<input type="image" src="https://img.freepik.com/free-vector/calendar-icon-on-white-background_1308-84634.jpg?w=740&t=st=1664847862~exp=1664848462~hmac=a360141333cf295e0d70d83d3fe69da92f344785f0f45b610b920f1afcf2f7dd" width="250"	height="200" onclick="location.href='GoCalendar.do?mb_id=<%=lunchbox.getMb_Id()%>'">
					<p>>> 런치플래너로 돌아가기</p>
				</td>
			</tr>
		</table>
	</div>
	
</body>
</html>