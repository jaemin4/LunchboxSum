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

<<<<<<< HEAD
				</div>
				<a class="carousel-control-prev" href="#recipeCarousel"	role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">이전</span></a> <a class="carousel-control-next" href="#recipeCarousel" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span> 
					<span class="sr-only">다음</span>
				</a>
			</div>
=======
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
		<div class="modal-body" id="myModal1">
            <form action="Login.do" method = "post" class="was-validated">
                <div class="form-group">
                    <label>아이디  </label>
                    <input type="text" class="form-control" name="mb_Id" placeholder="ID를 입력하세요." required>
                    <div class="valid-feedback">입력 완료</div>
                    <div class="invalid-feedback">필수 입력 공간</div>
                </div>
                <div class="form-group">
                    <label>비밀번호 </label>
                    <input type="password" class="form-control" name="mb_Pw" placeholder="PW를 입력하세요." required>
                    <div class="valid-feedback">입력 완료</div>
                    <div class="invalid-feedback">필수 입력 공간</div>
                </div>
                <button type="submit" class="btn btn-primary" style="margin-left:50%;">로그인</button>
                <a data-toggle="modal" href="#myModal2" class="btn btn-primary">회원가입</a>
                <button type="button" class="btn btn-primary" style="margin-left:50%;" onclick="winopen2()">비밀번호 찾기</button>
            </form>
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git
		</div>
<<<<<<< HEAD
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
=======
	</nav>
	 <div class="modal" id="myModal2">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">LUNCHBOX SIMULATOR</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="container"></div>
                <div class="modal-body">
    	<form name="insertMember" action="JoinOK.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="mb_Id" placeholder="ID를 입력하세요." maxlength="20"></td>
                <td><input type="button" onclick="winopen1()" value="중복체크"></td>
            </tr>
            <tr>
                <th>PW</th>
                <td><input type="password" name="mb_Pw1" placeholder="PW를 입력하세요." maxlength="20"></td>
            </tr>
            <tr>
                <th>PW<br>체크</th>
                <td><input type="password" name="mb_Pw2" oninput="pwCheck()" placeholder="입력한 PW를 확인해 주세요." maxlength="20"></td>
            </tr>
            <tr align="right">
                <td></td>
                <td colspan="2" id="pwCheck"></td>
            </tr>
            <tr>
                <th>성별</th>
                <td align="center"><input type="radio" name="mb_Gender" value="M" checked>남자</td>
                <td><input type="radio" name="mb_Gender" value="F">여자</td>
            </tr>
            <tr>
            	<th>생년월일</th>
	            <td>
	                <input type="text" name="yy" oninput="yyCheck()" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
	            </td>
	            <td>
	                <select name="mm" id="sel" aria-label="월">
	                    <option value>월</option>
	                    <option value="01"> 1 </option>
	                    <option value="02"> 2 </option>
	                    <option value="03"> 3 </option>
	                    <option value="04"> 4 </option>
	                    <option value="05"> 5 </option>
	                    <option value="06"> 6 </option>
	                    <option value="07"> 7 </option>
	                    <option value="08"> 8 </option>
	                    <option value="09"> 9 </option>
	                    <option value="10"> 10 </option>
	                    <option value="11"> 11 </option>
	                    <option value="12"> 12 </option>
	                </select>
	            </td>
	            <td>
	                <input type="text" name="dd" placeholder="일" aria-label="일" class="int" maxlength="2">
	                <label for="dd" class="lbl"></label>
	            </td>
            </tr>
            <tr align="center">
                <td></td>
                <td id="yyCheck"></td>
            </tr>
            <tr align="right">
                <td colspan="2">
                	<input type="submit" value="회원가입">
                </td>        
            </tr>    
        </table>
    </form>
<script>
    $("#myModal2").on('show.bs.modal', function (e) {
        $("#myModal1").modal("hide");
    });
    <!-- 아이디중복체크 -->
    function winopen1(){
    	var popupX1 = (document.body.offsetWidth / 2) - (200 / 2);
    	var popupY1= (window.screen.height / 2) - (300 / 2);
    	//새창을 열어서 페이지를 오픈 후 -> 회원아이디정보를 가지고 중복체크
    	//1. 아이디가 없으면 알림창과 진행x
    	if(document.insertMember.mb_Id.value =="" || document.insertMember.mb_Id.value.length < 0){
    		alert("아이디를 먼저 입력해주세요")
    		document.insertMember.mb_Id.focus();
    	}else{
    		window.open("GoIdCheck.do","",'status=no, width=500, height=300, left='+ popupX1 + ', top='+ popupY1);
    	}
    }
    function pwCheck(){
        var pw1 = document.getElementsByName("mb_Pw1")[0].value;
        var pw2 = document.getElementsByName("mb_Pw2")[0].value;
        let pw3 = document.getElementById("pwCheck");
        console.log(pw1);
        console.log(pw2);
        if(pw1 != "" || pw2 != ""){
            if(pw1 != pw2){
                return pw3.innerText = "비밀번호가 틀렸습니다.";
            }else{
                return pw3.innerText = "비밀번호가 일치합니다.";
                
            }
        }
    }
    function winopen2(){
    	var popupX2 = (document.body.offsetWidth / 2) - (200 / 2);
    	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

    	var popupY2= (window.screen.height / 2) - (300 / 2);
    	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
    		window.open("GoSearchPw.do","",'status=no, height=200, width=650, left='+ popupX2 + ', top='+ popupY2);
    	}
    function yyCheck(){
    	var yy = document.getElementsByName("yy")[0].value;
    	console.log(yy);
    	let yyy = document.getElementById("yyCheck");
    	if(yy > 2003){
    		// 2003년생보다 큰값이면 20세 미만이다. 20세미만의 영양정보는 다루지 않는다.
    		return yyy.innerText = "20세 미만은 가입할 수 없습니다. 다시 입력해주세요!";
    	}
    }
</script>
>>>>>>> branch 'main' of https://github.com/nemutai123/Lunchbox_simulator.git
</body>
</html>