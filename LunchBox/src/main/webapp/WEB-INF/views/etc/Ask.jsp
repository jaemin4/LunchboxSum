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

</style>
</head>
<body>
<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="Main.do"> Main</a></li>
				<li><a href="GoNutrition.do">����� �� Į�θ�</a></li>
				<li><a href="GoAsk.do">���ֹ�������</a></li>
				<li><a href="SelectAll.do">���ö����������Խ���</a></li>
			</ul>

		</div>


<h1>���� ���� ����</h1>

<div>
<button class="accordion"><b>Q1. ���� �� ���� ������ �����ϰ� �ͽ��ϴ�. ��� �����ؾ� �ϳ���?</b></button>
<div class="panel">
  <p>-> �� �������� ������� �������� ��ư�� Ŭ���ϸ� ���������� �����մϴ�.</p>
</div>

<button class="accordion"><b>Q2. ���� ������ ������ ���ö� �޴��� Ȯ���ϰ� �ͽ��ϴ�. ��� Ȯ���ϳ���?</b></button>
<div class="panel">
  <p>-> ���� ���������� �޷��� Ŭ���ϸ� �ش� ��¥�� ������ ���ö���� �������� �̵��մϴ�.</p>
</div>

<button class="accordion"><b>Q3. �ʺ��ڸ� ���� �����ǵ� �����ǳ���?</b></button>
<div class="panel">
  <p>-> ������ ����ȭ�鿡�� ���̵��� ���� �����ǰ� �з��Ǿ� �ֽ��ϴ�. ���̵�(���,�߱�,�ʱ�)�� �����Ͽ� �����Ǹ� ���� ������ �� �ֽ��ϴ�.</p>
</div>

<button class="accordion"><b>Q4. �����ǿ� ���� ����ᰡ ���� ���� ��� �ϳ���?</b></button>
<div class="panel">
  <p>-> ������ ���� �������� ������ �˻� ��ư�� ������ ������ ���� ����Ʈ�� �ٷ� ����˴ϴ�.</p>
</div>
</div>
<footer class= "container-fluid">
  <p style="font-size:24px;position: relative; left:700px">������ - ȫ�浿(010-123-4567)  // abc123@naver.com</p> 
</footer>

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