<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>
    <h1>LUNCHBOX SIMULATOR</h1>
    <%
	response.setCharacterEncoding("UTF-8");
    String user_id = (String)session.getAttribute("session");
	System.out.println(user_id);
    %>
    <form action="Update.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td align="center"><input type="text" name="user_id" placeholder=<%=user_id%> readonly></td>
            </tr>
            <tr>
                <th>성별</th>
                <td align="center"><input type="radio" name="mb_gender" value="M" checked>남자</td>
                <td><input type="radio" name="mb_gender" value="F">여자</td>
            </tr>
            <tr>
                <th>나이</th>
                <td><input type="number" name="mb_bdate" placeholder="19870519"></td>
            </tr>
            <tr align="right">
                <td colspan = "2">
                    <div>
                        <input type="submit" oninput="alertBox()" value="정보수정"/>
                    </div>   
                </td>
            </tr>       
        </table>
    </form>
    <script>
        function alertBox(){
        	updateMember();
            alert("정보수정이 완료되었습니다.");
        }
    </script>
</body>
</html>