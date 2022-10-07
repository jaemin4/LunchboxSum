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
		<h1>LunchBox Simulator</h1>
		<p>각종 의견과 본인만의 레시피를 자랑해주세요!</p>
	</div>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2>도시락 게시판</h2>
			</div>
			<div class="panel-body">

				<form action="Insert.do" enctype="multipart/form-data" method="post">
					<div class="form-group">
						<label>제목:</label> <input name="article_title" id="article_title"
							type="text" class="form-control">
					</div>
					<div class="form-group">
						<label>작성자:</label> <input name="mb_id" id="mb_id" type="text"
							class="form-control">
					</div>

					<div class="from-group">
						<label>첨부파일</label> <input type="file" id="article_file"
							name="article_file">

					</div>



					<div class="form-group">
						<label>내용:</label>

						<textarea name="article_contgent" rows="10" id="article_contgent"
							class="form-control"></textarea>
					</div>
					<button type="submit" class="btn btn-primary btn-sm">글쓰기</button>
				</form>


			</div>
		</div>
	</div>

</body>
</html>