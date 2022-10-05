<%@page import="com.smhrd.model.Lunchbox"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<!-- 
		메인기능2 - 런치박스 플래너
		
		해당날짜에 저장된 도시락상세페이지
	-->

	<h1>달력 상세 페이지</h1>
	
	<%Lunchbox box = (Lunchbox)request.getAttribute("date_lunch"); %>
	<%=box.getLd_Date().split("-")[0]%>년
	<%=box.getLd_Date().split("-")[1]%>월
	<%=box.getLd_Date().split("-")[2].split(" ")[0]%>일 도시락
	
	<%=box.getLb_Img()%>
	
	<input type="image" src="https://img.freepik.com/free-vector/calendar-icon-on-white-background_1308-84634.jpg?w=740&t=st=1664847862~exp=1664848462~hmac=a360141333cf295e0d70d83d3fe69da92f344785f0f45b610b920f1afcf2f7dd" width="250"	height="200" onclick="location.href='GoCalendar.do?mb_id=<%=box.getMb_Id()%>'"> 
	

</body>
</html>