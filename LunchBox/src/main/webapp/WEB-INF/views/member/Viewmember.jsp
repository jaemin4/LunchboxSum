<%@page import="com.smhrd.model.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 회원 목록 조회(관리자)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

body {
	background-image: url("asset/image/bgbg5.JPG");
	background-repeat: no-repeat;
	background-size: cover;
	width: 100%;
	height: 100%;
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

#table1{
	background-color: white;
}

h1{
    font-size : 60px;
}
th{
   text-align : center;
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
            <li><a href="SelectAll.do">도시락정보공유게시판</a></li>
         </ul>
		</div>
<%
	response.setCharacterEncoding("UTF-8");
	
	MemberDAO dao = new MemberDAO();
	ArrayList<Member> list = dao.selectMember();
	for(int i= 0; i<list.size(); i++) {
		list.get(i).getMb_Id();
		list.get(i).getMb_Pw();
		list.get(i).getMb_Birthdate();
		list.get(i).getMb_Gender();
		list.get(i).getMb_Joindate();
		list.get(i).getMb_Type();
	}
	request.setAttribute("list", list);
%>
<div>
		 <div class="container">
		 <div class="jumbotron text-center">
            <h1>전체 회원 목록</h1>
		 
		 
      <div class="panel panel-default">
         <div class="panel-heading" align="center">
         </div>
         <div class="panel-body">
            <table class="table table-dark" id="table1">
               <tr>
                  <th>아이디</th>
                  <th>비밀번호</th>
                  <th>생년월일</th>
                  <th>성별</th>
                  <th>가입일자</th>
                  <th>사용자유형</th>
               </tr>
               <!-- el표현식을 활용하면 scope영역에 객체바인딩 된 데이터를 바로 꺼내올 수 있다. -->
               <c:forEach var="Member" items="${list}">
                  <tr>
                     <td>${Member.mb_Id}</td>
                     <td>${Member.mb_Pw}</td>
                     <td>${Member.mb_Birthdate}</td>
                     <td>${Member.mb_Gender}</td>
                     <td>${Member.mb_Joindate}</td>
                     <td>${Member.mb_Type}</td>
                  </tr>
               </c:forEach>
            </table>
         </div>
         </div>
         </div>
         </div>
         </div>
</body>
</html>