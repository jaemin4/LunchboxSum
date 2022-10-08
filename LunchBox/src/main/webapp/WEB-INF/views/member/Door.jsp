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

<script src="asset/owl/jquery.min.js"></script>

<link rel="stylesheet" href="asset/owl/owl.carousel.min.css">
<link rel="stylesheet" href="asset/owl/owl.theme.default.min.css">
<script src="asset/owl/owl.carousel.min.js"></script>
<script src="asset/owl/owl.carousel.js"></script>
<script src="asset/owl/atuo.js"></script>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">

<style>


body {
	background-image: url("asset/image/bgbg5.JPG");
	background-repeat: no-repeat;
	background-size: cover;
}

#slideimg{
		width: 1900px;
        height: 100px;
        top: 10%;
        position: absolute;
}


#dosistart {
    font-size: 40px;
    width: 350px;
    height: 100px;
    left: 41%;
    top: 60%;
    position: absolute;
}
       
#tname{
		bottom : 10px;
		position: absolute;
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

</style>
</head>
<body>
	<div id="layout" align="center">

		<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="#main"> Main</a></li>
				<li><a href="Nutrition.do">영양소 및 칼로리</a></li>
				<li><a href="GoAsk.do">자주묻는질문</a></li>
				<li><a href="SelectAll.do">도시락정보공유게시판</a></li>
			</ul>

		</div>

	<div id = "slideimg">
		<div id="ingi" align="center">
		<h1 style="font-size:80px;"><i>LunchBoxsimulator</i></h1>
		<p style="font-size:30px; color:blue" ><b>오늘의 인기 레시피!</b></p>
		<div class="owl-carousel owl-theme">

		<img  src="asset/image/1_.png">
		<img  src="asset/image/2_.png">
		<img  src="asset/image/3_.png">
		<img  src="asset/image/4_.png">
		<img  src="asset/image/5_.png">
		<img  src="asset/image/1_.png">
		<img  src="asset/image/2_.png">
		<img  src="asset/image/3_.png">
		<img  src="asset/image/4_.png">
		<img  src="asset/image/5_.png">
		<img  src="asset/image/4_.png">
		<img  src="asset/image/5_.png">
		</div>
		</div><!-- 슬라이딩이미지 div 마무리 -->
		</div>
	
	

	<div>
		<a id="dosistart" href="#" data-toggle="modal" data-target="#login">
		<button type="button" class="btn btn-warning btn-lg">
			도시락만들기!</button></a>
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
      		</div>
			</div>
			</div>
		</div>
 		<!-- 회원가입모달 -->
 		 <div class="modal" id="myModal2">
 		<div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">LUNCHBOX SIMULATOR</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
       <form name="insertMember" action="JoinOK.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="mb_Id" id="id" placeholder="ID를 입력하세요." maxlength="20"></td>
                <td><input type="button" onclick="winopen1()" value="중복체크"></td>
            </tr>
            <tr>
                <th>PW</th>
                <td><input type="password" name="mb_Pw1" id="pw" placeholder="PW를 입력하세요." maxlength="20"></td>
            </tr>
            <tr>
                <th>PW<br>체크</th>
                <td><input type="password" name="mb_Pw2" id="pW" oninput="pwCheck()" placeholder="입력한 PW를 확인해 주세요." maxlength="20"></td>
            </tr>
            <tr align="right">
                <td></td>
                <td colspan="2" id="pwCheck"></td>
            </tr>
            <tr>
                <th>성별</th>
                <td align="center"><input type="radio" name="mb_Gender" id="male" value="M" checked>남자</td>
                <td><input type="radio" name="mb_Gender" id="female" value="F">여자</td>
            </tr>
            <tr>
               <th>생년월일</th>
               <td>
                   <input type="text" name="yy" id="y" oninput="yyCheck()" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
               </td>
               <td>
                   <select name="mm" id="m" aria-label="월">
                       <option >월</option>
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
                   <input type="text" name="dd" id="d" placeholder="일" aria-label="일" class="int" maxlength="2">
                   <label for="dd" class="lbl"></label>
               </td>
            </tr>
            <tr align="center">
                <td></td>
                <td id="yyCheck"></td>
            </tr>
            <tr align="right">
                <td colspan="2">
                   <input type="button" onclick="joinform_check();" value="회원가입">
                </td>        
            </tr>    
        </table>
    </form>
 		</div>
 		</div>
 		</div>
 		</div>
		</div>
	<p id="tname">
		<b>팀명 : 도시락박스</b>
	</p>
										<script>
    $("#myModal2").on('show.bs.modal', function (e) {
        $("#myModal1").modal("hide");
    });
    function joinform_check(){
    	var id = document.getElementById("id");
    	var pw = document.getElementById("pw");
    	var pW = document.getElementById("pW");
    	var y = document.getElementById("y");
    	var m = document.getElementById("m");
    	var d = document.getElementById("d");
    	if(id.value == ""){
    		alert("아이디를 입력해주세요.")
    		id.focus();
    		return false;
    	}
    	if(pw.value == ""){
    		alert("비밀번호를 입력해주세요.")
    		pw.focus();
    		return false;
    	}
    	if(pW.value == ""){
    		alert("비밀번호를 체크 해주세요.")
    		pW.focus();
    		return false;
    	}
    	if(y.value == ""){
    		alert("태어난 연도를 입력해주세요.");
    		y.focus();
    		return false;
    	}
    	if(m.value == "월"){
    		alert("태어난 달을 선택해주세요.")
    		return false;
    	}
    	if(d.value == ""){
    		alert("태어난 날을 입력해주세요.");
    		d.focus();
    		return false;
    	}
    	document.insertMember.submit();
    }
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
					

</body>
</html>