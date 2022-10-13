<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.smhrd.model.Recipe"%>
<%@page import="com.smhrd.model.Nutritionfact"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
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
		CALper.innerText = '✨ 총 칼로리 '+CALORIES+'kcal';
		
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
					text: 'adimin님의 도시락 영양소'
				},
				responsive : false,
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
		
		const ctx2 = document.getElementById('myChart2').getContext('2d');
		let userCAR = <%=request.getAttribute("userCAR")%>;
		let userPRO = <%=request.getAttribute("userPRO")%>;
		let userFAT = <%=request.getAttribute("userFAT")%>;
		
		let userSUM = userCAR+userPRO+userFAT;
		
		const myChart2 = new Chart(ctx2, {
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
					data: [userCAR, userPRO, userFAT],
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
					text: 'adimin님의 도시락 영양소'
				},
				responsive : false,
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
							return context.dataset.label[context.dataIndex] + '\n  ' + Math.round(value/userSUM*100)+'%';
						}
					},
				}
			}
		});
		
		/* let result = document.getElementById("result");
		let str = '따라서 부족한 영양소는';
		
		if(userCAR - CARBOHYDRATE>0){
			str += ' 탄수화물 ';
			str += userCAR - CARBOHYDRATE;
			str += 'g ';
		}
		if(userPRO - PROTEIN>0){
			str += ' 단백질 ';
			str += userPRO - PROTEIN;
			str += 'g ';
		}
		if(userFAT - FAT>0){
			str += ' 지방 ';
			str += userFAT - FAT;
			str += 'g ';
		}
		str += ' 입니다.'
		result.innerText = str;
		
		
		if(CALORIES - userCal>0){
			str += ' 초과한 칼로리 ';
			str += userFAT - FAT;
			str += 'kcal ';
		} */
		
		
	});

</script>
<style>
body {
	background-image: url("asset/image/bgbg5.JPG");
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100%;
}


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

#result1{
	background-color: white;
	width: 1800px;
	height: 700px;
	margin-left: 50px;
}
h1{
    font-size : 60px;
}
p{
	font-size : 25px;
}

#id1{
	font-size: 20px;
}

</style>



<title>도시락결과페이지</title>
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

	<%ArrayList<Recipe> recipe = (ArrayList<Recipe>)request.getAttribute("boxes");%>
	<%Nutritionfact nutri = (Nutritionfact)request.getAttribute("nutri");%>
	<%String gender = (String)request.getAttribute("gender");%>
	<%String age = (String)request.getAttribute("age");%>
	
	<%String userCal = (String)request.getAttribute("userCal");%>
	<%String CALORIES = (String)request.getAttribute("CALORIES");%>
	
	<%String useCAR = (String)request.getAttribute("userCAR");%>
	<%String usePRO = (String)request.getAttribute("userPRO");%>
	<%String useFAT = (String)request.getAttribute("userFAT");%>
	<%String bentoCar = (String)request.getAttribute("CARBOHYDRATE");%>
	<%String bentoPro = (String)request.getAttribute("PROTEIN");%>
	<%String bentoFat = (String)request.getAttribute("FAT");%>
	
	<%int overCar = Integer.parseInt(bentoCar) - Integer.parseInt(useCAR);%>
	<%int overPro = Integer.parseInt(bentoPro) - Integer.parseInt(usePRO);%>
	<%int overFat = Integer.parseInt(bentoFat) - Integer.parseInt(useFAT);%>
	
	<div id="result1">
	<h1 align="center">도시락 선택 결과페이지!</h1>
	<hr>
	<div style="float: left; width: 50%;">
		<table>
			<tr>
				<td colspan="2">
					<% for (int i = 0; i<recipe.size(); i++) {%>
						<input type="image" src="<%=recipe.get(i).getRecipe_img()%>" width="152" height="152">
					<%} %>
				</td>
			</tr>
			<tr>
				<td>
					<p id="id1"><b><%=nutri.getMb_Id()%>님의 도시락 영양정보</b></p>
					<p id="CARBOHYDRATE"></p>
					<p id="PROTEIN"></p>
					<p id="FAT"></p>
					<p></p>
					<p id="CALORIES"></p>
				</td>
				<td>
					<canvas id="myChart"></canvas>
				</td>
			</tr>
		</table>
	</div>
	
	
	<div style="float: left; width: 50%;">
		<table>
			<tr>
				<td>
					<%if(gender=="남성") { %>
						<input type="image" src="https://cdn-icons-png.flaticon.com/512/3884/3884851.png" width="150" height="150">
					<%} else { %>
						<input type="image" src="https://cdn-icons-png.flaticon.com/512/1373/1373254.png" width="150" height="150">
					<%} %>
				</td>
				<td>
					<b id="id1"><%=nutri.getMb_Id()%>님</b>
					<p>: <%=age%>세 <%=gender%></p>
				</td>
			</tr>
			<tr>
				<td>
					<p id="id1"><b><%=nutri.getMb_Id()%>님의 1일 권장 영양정보</b></p>
					<p>🍞 필요 탄수화물 <%=nutri.getR_Carbohydrate()%>g</p>
					<p>🥩 필요 단백질 <%=nutri.getR_Protein()%>g</p>
					<p>🧈 필요 지방<%=nutri.getR_Fat()%>g</p>
					<p>✨ 필요 칼로리<%=nutri.getR_Calories()%>kcal</p>
				</td>
				
				<td>
					<canvas id="myChart2"></canvas>
				</td>
			</tr>
		</table>
	</div>
	<div style="bottom:0px;">
		

		<%if(overCar<0||overPro<0||overFat<0){%>
			<p>따라서 부족한 영양소는
				<%if(overCar<0){%>
					탄수화물<%=Math.abs(overCar)%>g
				<%}%>
				<%if(overPro<0){%>
					단백질<%=Math.abs(overPro)%>g
				<%}%>
				<%if(overFat<0){%>
					지방<%=Math.abs(overFat)%>g
				<%}%>
			입니다.</p>	
		<%}%>
		
		<%int overCal = Integer.parseInt(CALORIES) - Integer.parseInt(userCal);%>
		<%if(overCal>0){%>
		<p>초과열량 <%=overCal%>kcal</p>
			<%if(gender=="남성") { %>
				<input type="image" src="https://i.pinimg.com/originals/58/31/3d/58313d83e4817fc36589590faab1c214.png" width="150" height="150">
				달리기 <%=(overCal/93)*10%>분
				<input type="image" src="https://img.icons8.com/color/480/skipping-rope.png" width="150" height="150">
				줄넘기 <%=(overCal/133)*10%>분
				<input type="image" src="https://cdn-icons-png.flaticon.com/512/1818/1818612.png" width="150" height="150">
				수영 <%=(overCal/120)*10%>분
				<input type="image" src="https://cdn-icons-png.flaticon.com/512/3114/3114112.png" width="150" height="150">
				자전거 <%=(overCal/106)*10%>분
			<%} else { %>
				<input type="image" src="https://i.pinimg.com/originals/58/31/3d/58313d83e4817fc36589590faab1c214.png" width="150" height="150">
				달리기 <%=(overCal/70)*10%>분
				<input type="image" src="https://img.icons8.com/color/480/skipping-rope.png" width="150" height="150">
				줄넘기 <%=(overCal/100)*10%>분
				<input type="image" src="https://cdn-icons-png.flaticon.com/512/1818/1818612.png" width="150" height="150">
				수영 <%=(overCal/90)*10%>분
				<input type="image" src="https://cdn-icons-png.flaticon.com/512/3114/3114112.png" width="150" height="150">
				자전거 <%=(overCal/80)*10%>분
			<%} %>
		<%}%>
	</div>
	</div>
	
	
</body>
</html>