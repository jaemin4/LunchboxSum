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
<style>
body{
 background-image: url("asset/image/bgbg5.JPG");
 background-repeat: no-repeat;
 background-size: cover;
 width: 100%;
 height: 100%;
}
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

label{
	display:inline-block; width:200px;
	font-size : 25px;
}
h1{
    font-size : 50px;
}


</style>
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


	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading" align="center">
				<h1><b>도시락 게시판</b></h1>
				<h2>각종 의견과 본인만의 레시피를 자랑해주세요!</h2>
			</div>
			<div class="panel-body">

				<form action="Insert.do" enctype="multipart/form-data" method="post">
					<div class="form-group">
						<label>제목:</label> <input name="article_title" id="article_title"
							type="text" class="form-control">
					</div>
					<div class="form-group">
						<input name="mb_id" id="mb_id" type="hidden" class="form-control" >
					</div>

					<div class="from-group">
						<label>첨부파일</label> <input type="file" id="article_file" name="article_file">
					</div>

					<br>
					<div class="form-group">
						<label>내용:</label>

						<textarea name="article_contgent" rows="10" id="article_contgent"
							class="form-control"></textarea>
					</div>
					<div align="right">
					<button type="submit" class="btn btn-primary btn-lg">글쓰기</button>
					</div>
				</form>


			</div>
		</div>
	</div>

</body>
</html>