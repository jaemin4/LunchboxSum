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

				<form action="BoardUpdate.do" method="post">
					<input type="hidden" name="article_seq"
						value="${board.article_seq}">
					<div class="form-group">
						<label>제목:</label> <input value="${board.article_title}"
							name="article_title" id="article_title" type="text"
							class="form-control">
					</div>
					<div class="form-group">
						<label>작성자:</label> <input value="${board.mb_id}" name="mb_id"
							id="mb_id" type="text" class="form-control" readonly>
					</div>

					<div class="form-group">
						<img width="40%" alt=""
							src="resources/image/${board.article_file}">

					</div>

					<div class="form-group">
						<label>내용:</label>

						<textarea name="article_contgent" id="article_contgent" rows="10"
							class="form-control">${board.article_contgent}</textarea>
					</div>
					
				

					<c:if test="${board.mb_id==mb_id}">
						<button type="submit" class="btn btn-primary btn-sm">수정하기</button>
						<button type="button" class="btn btn-primary btn-sm"
							onclick="location.href='BoardDelete.do?article_seq=${board.article_seq}'">삭제</button>
					</c:if>			
						<button type="button" class="btn btn-primary btn-sm"
							onclick="location.href = 'UpdateLike.do?article_seq=${board.article_seq}&article_likes=${board.article_likes}'">좋아요</button>
						<button type="button" class="btn btn-primary btn-sm"
							onclick="location.href = 'SelectAll.do'">목록보기</button>

				</form>

				<div class="panel-footer">
					<table class="table table-striped table-hover">
						<c:forEach var="Comment" items="${list2}">
							<tr>
								<td>${Comment.cmt_content}</td>
								<td>${Comment.mb_id}</td>
								<td>${Comment.cmt_date}</td>
								<td>
									<c:if test="${Comment.mb_id==mb_id}">
									<button
										onclick="location.href='DeleteComment.do?cmt_seq=${Comment.cmt_seq}&article_seq=${board.article_seq}'">삭제</button>
										</c:if>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div class="form-group">


					<form name="comment-form"
						action="InsertComment.do?article_seq=${board.article_seq}"
						method="post">
						<div class="form-group">
							<input type="hidden" name="mb_id" id="mb_id"
								value="${board.mb_id}">
							<textarea name="cmt_content" id="cmt_content"
								placeholder="댓글을 입력하세요." class="form-control" rows="1"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">댓글작성</button>

					</form>

				</div>
			</div>

		</div>
	</div>

</body>
</html>