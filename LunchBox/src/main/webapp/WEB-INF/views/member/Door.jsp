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