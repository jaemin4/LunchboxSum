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
    String user_id = (String)session.getAttribute("sessionID");
    if(user_id == null){
        response.sendRedirect("./Door.jsp");
    }  	%>   
    <script  type="text/javascript">
    function logout(){
            window.location.href = './logout.jsp';
    }
    </script>
    <div style="background:white;margin:-12px -0.5% 0px -20px; text-align:center;height:80px; border: 1px solid"><h2>취약한 페이지</h2></div>
    <div style="text-align:center;">
    <br>세션 ID : <%=session.getId() %><br>
    <%=user_id %>님 로그인 되었습니다.
    <br>
    <a href="main.jsp"style="margin-left:3%">도시락 만들러 가기</a></div><br>
	<div style="margin-left:42%">
</body>
</html>