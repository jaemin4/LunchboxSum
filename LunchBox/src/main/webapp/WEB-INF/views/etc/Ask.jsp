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

<h2>���� ���� ����</h2>

<button onclick="location.href='SelectAll.do'"
                              class="btn btn-warning btn-sm" id="Back">�ڷΰ���</button>

<button class="accordion">Q1 ���� �� ���� ������ �����ϰ� �ͽ��ϴ�. ��� �����ؾ� �ϳ���?</button>
<div class="panel">
  <p>-> �� �������� ������� �������� ��ư�� Ŭ���ϸ� ���������� �����մϴ�.</p>
</div>

<button class="accordion">Q2 ���� ������ ������ ���ö� �޴��� Ȯ���ϰ� �ͽ��ϴ�. ��� Ȯ���ϳ���?</button>
<div class="panel">
  <p>-> ���� ���������� �޷��� Ŭ���ϸ� �ش� ��¥�� ������ ���ö���� �������� �̵��մϴ�.</p>
</div>

<button class="accordion">Q3 �ʺ��ڸ� ���� �����ǵ� �����ǳ���?</button>
<div class="panel">
  <p>-> ������ ����ȭ�鿡�� ���̵��� ���� �����ǰ� �з��Ǿ� �ֽ��ϴ�. ���̵�(���,�߱�,�ʱ�)�� �����Ͽ� �����Ǹ� ���� ������ �� �ֽ��ϴ�.</p>
</div>

<button class="accordion">Q4 �����ǿ� ���� ����ᰡ ���� ���� ��� �ϳ���?</button>
<div class="panel">
  <p>-> ������ ���� �������� ������ �˻� ��ư�� ������ ������ ���� ����Ʈ�� �ٷ� ����˴ϴ�.</p>
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