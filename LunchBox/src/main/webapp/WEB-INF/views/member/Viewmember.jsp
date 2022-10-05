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
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
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
<div class="jumbotron text-center">
   </div>
   <div class="container">
      <div class="panel panel-default">
         <div class="panel-heading">
            <h2>전체 회원 목록</h2>
         </div>
         <div class="panel-body">
            <table class="table table-striped table-hover">
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
</body>
</html>