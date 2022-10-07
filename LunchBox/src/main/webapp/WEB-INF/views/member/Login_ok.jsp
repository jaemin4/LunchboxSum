<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인 성공</title>
</head>
<body>
	<%
	response.setCharacterEncoding("UTF-8");
    String user_id = (String)session.getAttribute("session");
	System.out.println(user_id);
    if(user_id == null){
        response.sendRedirect("Door.do");
    }
    %>   
    
    <div style="background:white;margin:-12px -0.5% 0px -20px; text-align:center;height:80px; border: 1px solid">
    <h2>로그인 성공!</h2>
    </div>
    <div style="text-align:center;"><br>
    <h1><%=user_id%>님 로그인 되었습니다.</h1>
    <div class="form-group">
    <button onclick="location.href='GoUpdate.do'">정보수정</button>
    <button onclick="location.href='Logout.do'">로그아웃</button>
    <button onclick="location.href='GoDelete.do'">회원탈퇴</button>
	<%if(user_id.equals("admin")){ %>
		<button onclick="location.href='Admin.do'">회원 목록 조회</button>
		<button onclick="location.href='AdminUser.do'">회원 정보 분석</button>
	<%}%>
    </div>
    <a href="Main.do"style="margin-left:3%">도시락 만들러 가기</a></div><br>
	<div style="margin-left:42%">
	</div>
</body>
</html>