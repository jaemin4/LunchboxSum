<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작화면</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
<!-- Brand -->
<h1 class="navbar-brand" href="#">LUNCHBOX SIMULATOR</h1>

<!-- Toggler/collapsibe Button -->
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
</button>

<!-- Navbar links -->
<div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="#" data-toggle="modal" data-target="#login">로그인</a>
        <!-- The Modal -->
        <div class="modal" id="login">
		<div class="modal-dialog">
		<div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
        <h4 class="modal-title">로그인</h4>
		</div>	
		<!-- Modal body -->
		<div class="modal-body">
            <form action="logincheck.html" class="was-validated">
                <div class="form-group">
                    <label for="MbId">아이디  </label>
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
                <button type="submit" class="btn btn-primary" style="margin-left:50%;">로그인</button>
                <button type="button" onclick="location='Join.html'" class="btn btn-primary">회원가입</button> 
            </form>
		</div>
</nav>
</body>
</html>