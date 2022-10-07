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
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc; 
}

.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
}
</style>
</head>
<body>

<h2>자주 묻는 질문</h2>

<button onclick="location.href='SelectAll.do'"
                              class="btn btn-warning btn-sm" id="Back">뒤로가기</button>

<button class="accordion">Q1 성별 및 나이 정보를 수정하고 싶습니다. 어떻게 변경해야 하나요?</button>
<div class="panel">
  <p>-> 각 페이지의 우측상단 정보수정 버튼을 클릭하면 정보수정이 가능합니다.</p>
</div>

<button class="accordion">Q2 내가 저장한 과거의 도시락 메뉴를 확인하고 싶습니다. 어디서 확인하나요?</button>
<div class="panel">
  <p>-> 메인 페이지에서 달력을 클릭하면 해당 날짜에 구성한 도시락결과 페이지로 이동합니다.</p>
</div>

<button class="accordion">Q3 초보자를 위한 레시피도 제공되나요?</button>
<div class="panel">
  <p>-> 레시피 선택화면에서 난이도에 따라 레시피가 분류되어 있습니다. 난이도(고급,중급,초급)를 설정하여 레시피를 제공 받으실 수 있습니다.</p>
</div>

<button class="accordion">Q4 레시피에 들어가는 식재료가 없을 경우는 어떻게 하나요?</button>
<div class="panel">
  <p>-> 레시피 선택 페이지에 최저가 검색 버튼을 누르면 최저가 쇼핑 사이트로 바로 연결됩니다.</p>
</div>



<script>
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