<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h1></h1>
		<p></p>
	</div>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2></h2>
			</div>
			<div class="panel-body">
				<c:if test="${empty param.img}">
					<form accept-charset="utf-8"
						action="http://127.0.0.1:9000/crawling" method="post">
						<div class="form-group">

							<h3>검색어를 입력하세요.</h3>

							<input style="height: 150px; font-size: 25px;" type="text"
								name="content" class="form-control">
						</div>
						<br>
						<button type="submit" class="btn btn-success btn-lg">검색하기</button>

					</form>
				</c:if>
				<c:if test="${!empty param.img}">
					<img src="${param.img}">

				</c:if>


			</div>
			<div class="panel-footer">오늘의 추천요리</div>
		</div>
	</div>

</body>
</html>