<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">

</script>

<title>Insert title here</title>
</head>
<body>

	<!-- 
		메인 서비스 페이지!
		
		>> 모든 페이지로 이동가능하게!
	-->
	<h1>메인페이지</h1>
	<button onclick="location.href='GoCalendar.do?mb_id=admin'" class="btn btn-primary btn-sm">달력</button>
	<button onclick="location.href='GoLunch.do'" class="btn btn-primary btn-sm">런치</button>
	
	
</body>
</html>