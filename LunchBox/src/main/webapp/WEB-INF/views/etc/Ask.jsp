<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<c:set var="contextpath" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html{
 background-image: url("asset/image/bgbg5.JPG");
 background-repeat: no-repeat;
 background-size: cover;
 width: 100%;
 height: 100%;
}
 footer {
      position : absolute;
      bottom : 0;
      background-color: #555;
      color: white;
      padding: 15px;
      width : 100%
      
    }

.accordion {
  background-color: #C4DEFF;
  color: #444;
  cursor: pointer;
  padding: 35px;
  width: 100%;
  border: none;
  text-align: center;
  outline: none;
  font-size: 25px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc; 
}

.panel {
  text-align:center;
  padding:  0px;
  display: none;
  background-color: white;
  overflow: hidden;
  font-size: 20px;
}

h1{
	margin-left: 45%;
	color: #5D5D5D;

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
<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="GoMain.do"> Main</a></li>
				<li><a href="GoNutrition.do">영양소 및 칼로리</a></li>
				<li><a href="GoAsk.do">자주묻는질문</a></li>
				<li><a href=# onclick="warning();">도시락정보공유게시판</a></li>
			</ul>

		</div>


<h1>자주 묻는 질문</h1>

<div>
<button class="accordion"><b>Q1. 성별 및 나이 정보를 수정하고 싶습니다. 어떻게 변경해야 하나요?</b></button>
<div class="panel">
  <p>-> 각 페이지의 우측상단 정보수정 버튼을 클릭하면 정보수정이 가능합니다.</p>
</div>

<button class="accordion"><b>Q2. 내가 저장한 과거의 도시락 메뉴를 확인하고 싶습니다. 어디서 확인하나요?</b></button>
<div class="panel">
  <p>-> 메인 페이지에서 달력을 클릭하면 해당 날짜에 구성한 도시락결과 페이지로 이동합니다.</p>
</div>

<button class="accordion"><b>Q3. 초보자를 위한 레시피도 제공되나요?</b></button>
<div class="panel">
  <p>-> 레시피 선택화면에서 난이도에 따라 레시피가 분류되어 있습니다. 난이도(고급,중급,초급)를 설정하여 레시피를 제공 받으실 수 있습니다.</p>
</div>

<button class="accordion"><b>Q4. 레시피에 들어가는 식재료가 없을 경우는 어떻게 하나요?</b></button>
<div class="panel">
  <p>-> 레시피 선택 페이지에 최저가 검색 버튼을 누르면 최저가 쇼핑 사이트로 바로 연결됩니다.</p>
</div>
</div>
<footer class= "container-fluid">
  <p style="font-size:24px;position: relative; left:700px">관리자 - 홍길동(010-123-4567)  // abc123@naver.com</p> 
</footer>

<script>
function warning(){
	alert("로그인 후 이용해주세요.");
}
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>

</body>
</html>