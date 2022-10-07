<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
}

.pagination a.active {
	background-color: dodgerblue;
	color: red;
}

.pagination a:hover:not(.active) {
	color: orange;
}
</style>
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
				<table class="table table-striped table-hover">
					<tr>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>좋아요</th>
					</tr>
					<%

					%>
					<!-- el표현식을 활용하면 scope영역에 객체바인딩 된 데이터를 바로 꺼내올 수 있다. -->
					<c:forEach var="board" items="${list2}">
						<tr>
							<td><a
								href="UpdateRead.do?article_seq=${board.article_seq}&article_cnt=${board.article_cnt}">${board.article_title}</a></td>
							<td>${board.mb_id}</td>
							<td>${board.article_date}</td>
							<td>${board.article_cnt}</td>
							<td>${board.article_likes}</td>
						</tr>
					</c:forEach>

					<tr>
						<td colspan="5" align="right">
							<button onclick="location.href='GoInsert.do'"
								class="btn btn-primary btn-sm" id="write">글쓰기</button>
							<button onclick="location.href='GoAsk.do'"
								class="btn btn-primary btn-sm" id="Ask">문의하기</button>
						</td>
					</tr>

				</table>

			</div>
			<!-- a태그 쿼리스트링 방식 어떻게 하나요? -->
			<div class="pagination">


				<a href="#">&laquo;</a>
				<c:forEach begin="1" end="${sum}" var="i">
					<a href="SelectAll.do?page=${i}">${i}</a>
				</c:forEach>

				<a href="SelectAll.do?page=${i+1}">&raquo;</a>
			</div>


			<div class="panel-footer">

				<h3>베스트 좋아요수 TOP 3</h3>
				<table class="table table-striped table-hover">
					<tr>
						<th>제목</th>
						<th>작성일</th>
						<th>좋아요</th>
					</tr>
					<c:forEach var="board" items="${list3}">
						<tr>

							<td><a href="SelectOne.do?article_seq=${board.article_seq}">${board.article_title}</a></td>
							<td>${board.article_date}</td>
							<td>${board.article_likes}</td>

						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
</html>