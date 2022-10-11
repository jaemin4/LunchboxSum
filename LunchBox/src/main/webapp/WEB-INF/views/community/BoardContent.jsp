<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

body {
	background-image: url("asset/image/bgbg5.JPG");
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100%;
}


/* �׺���̼ǹ� ��Ÿ��*/
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
            <li><a href="GoNutrition.do">����� �� Į�θ�</a></li>
            <li><a href="GoAsk.do">���ֹ�������</a></li>
            <li><a href="SelectAll.do">���ö����������Խ���</a></li>
         </ul>
		</div>


	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading" align="center">
				<h1>���ö� �Խ��� �� �ۼ��ϱ�!</h1>
			</div>
			<div class="panel-body">
				<form action="BoardUpdate.do" method="post">
					<input type="hidden" name="article_seq"
						value="${board.article_seq}">
					<div class="form-group">
						<label>����:</label> <input value="${board.article_title}"
							name="article_title" id="article_title" type="text"
							class="form-control">
					</div>
					<div class="form-group">
						<label>�ۼ���:</label> <input value="${board.mb_id}" name="mb_id"
							id="mb_id" type="text" class="form-control" readonly>
					</div>

					<div class="form-group">
						<img width="40%" alt=""
							src="resources/image/${board.article_file}" name = "article_file" id = "article_file">
					</div>
					<div class="form-group">
						<label>����:</label>

						<textarea name="article_contgent" id="article_contgent" rows="10"
							class="form-control">${board.article_contgent}</textarea>
					</div>
					
				
					<div align="right">
					<c:if test="${board.mb_id==mb_id}">
						<button type="submit" class="btn btn-primary btn-sm">�����ϱ�</button>
						<button type="button" class="btn btn-primary btn-sm"
							onclick="location.href='BoardDelete.do?article_seq=${board.article_seq}'">����</button>
					</c:if>			
						<button type="button" class="btn btn-primary"
							onclick="location.href = 'UpdateLike.do?article_seq=${board.article_seq}&article_likes=${board.article_likes}'">���ƿ�</button>
						<button type="button" class="btn btn-primary"
							onclick="location.href = 'SelectAll.do'">��Ϻ���</button>
					</div>
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
										onclick="location.href='DeleteComment.do?cmt_seq=${Comment.cmt_seq}&article_seq=${board.article_seq}'">����</button>
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
								placeholder="����� �Է��ϼ���." class="form-control" rows="1"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">����ۼ�</button>

					</form>

				</div>
			</div>

		</div>
	</div>

</body>
</html>