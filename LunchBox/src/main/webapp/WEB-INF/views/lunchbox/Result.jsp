<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>결과페이지</title>
</head>
<body>
	<!-- 
		완성된 도시락 영양소 및
		사용자 권장 영양소 비교 페이지
	-->
	
	
	<!-- 
	
	DB에 입력된데이터 기준 (일일권장 칼로리)-(완성된 도시락 칼로리)(음수를 절대값으로 바꾼후 운동시 소모하는 칼로리와 대조해서) 결과값으로 나타내는 페이지
	 초과되는 칼로리는 운동으로 소모할수 있게끔 구현
	 -->
	 
	 <!-- 하다가 멈췄습니다. -->

	<button onclick="main_service_13.href='#'" type="button"><img src="이미지 경로" alt="">돌아가기</button>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>결과페이지 테스트</h1>
					<h1>메인페이지</h1>
				
								
				
				
				
				
				
				<h2>따라서 부족한 영양소는 칼로리<% %>kcal 탄수화물 <% %>g 단백질 <% %>g 지방<% %>g 입니다.</h2>
				<h3>초과 열량 소모를 위한운동 !</h3>
				<p>달리기<% %>분<p>
				<p>줄넘기<% %>분<p>
				<p>수영<% %>분</p>
				<p>자전거<% %>분</p>
				<p><a class="btn btn-primary btn-pull" href="#" role="button">다시담기</a></p>
				<p><a class="btn btn-primary btn-pull" href="#" role="button">저장하기</a></p>
			</div>
		</div>
	</div>
	
	
	
	
</body>
</html>