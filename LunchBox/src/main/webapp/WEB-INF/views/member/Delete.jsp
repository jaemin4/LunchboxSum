<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
	<%
	response.setCharacterEncoding("UTF-8");
    String user_id = (String)session.getAttribute("session");
	System.out.println(user_id);
    %>
	<form name="deleteMember" action="Delete.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="mb_ID" placeholder="<%=user_id%>"></td>
            </tr>
            <tr>
                <th>PW</th>
                <td><input type="password" name="mb_PW" placeholder="PW를 입력하세요."></td>
            </tr>
            <tr>
            	<td><input type="submit" value="회원탈퇴"></td>
            </tr>
        </table>
    </form>
</body>
</html>