<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script src="asset/jsquery3.js"></script>
<link rel="stylesheet" type="text/css" href="asset/style1.css">

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">

</head>
<body>
	<div>
		<h1 align="center">
			<b>LunchBox Simulator</b>
		</h1>
	</div>

	<div class="container text-center my-3" id = "slideimg">
		<h2>오늘의 인기 레시피!!</h2>
		<div class="row mx-auto my-auto">
			<div id="recipeCarousel" class="carousel slide w-100"
				data-ride="carousel">
				<div class="carousel-inner w-100" role="listbox">
					<div class="carousel-item active">
						<img width="900" height="1200" class="d-block col-3 img-fluid" src="asset/image/4_.png">
					</div>
					<div class="carousel-item">
						<img class="d-block col-3 img-fluid" src="asset/image/5_.png">
					</div>
					<div class="carousel-item">
						<img class="d-block col-3 img-fluid" src="asset/image/1_.png">
					</div>
					<div class="carousel-item">
						<img class="d-block col-3 img-fluid" src="asset/image/3_.png">
					</div>

				</div>
				<a class="carousel-control-prev" href="#recipeCarousel"	role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">이전</span></a> <a class="carousel-control-next" href="#recipeCarousel" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span> 
					<span class="sr-only">다음</span>
				</a>
			</div>
		</div>
	</div>

	<div>
		<a href="#" data-toggle="modal" data-target="#login">
			<button type="button" class="btn btn-primary" id="btn1">도시락만들기!</button>
		</a>
	</div>
	<div>
	<a href="#" class="myButton">도시락정보공유게시판</a>
	</div>


	<!-- The Modal -->
	<div class="modal" id="login">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h3 class="modal-title">로그인</h3>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<form action="Login.do" class="was-validated">
						<div class="form-group">
							<label for="MbId">아이디 </label> 
							<input type="text" class="form-control" id="MbId" placeholder="ID를 입력하세요." name="MbId" required>
							<div class="valid-feedback">입력 완료</div>
							<div class="invalid-feedback">필수 입력 공간</div>
						</div>
						<div class="form-group">
							<label for="MbPw">비밀번호 </label>
							<input type="password" class="form-control" id="MbPw" placeholder="PW를 입력하세요." name="MbPw" required>
							<div class="valid-feedback">입력 완료</div>
							<div class="invalid-feedback">필수 입력 공간</div>
						</div>
						<button type="submit" class="btn btn-primary" style="margin-left
						: 50%;">로그인</button>
						<button type="button" onclick="location='Join.do'"class="btn btn-primary">회원가입</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>

					</form>
				</div>
			</div>
		</div>
	</div>

	<p id="tname">
		<b>팀명 : 도시락박스</b>
	</p>
</body>
</html>