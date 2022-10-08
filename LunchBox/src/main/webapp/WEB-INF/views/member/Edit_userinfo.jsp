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
            	<th>생년월일</th>
	            <td>
	                <input type="text" name="yy" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
	            </td>
	            <td>
	                <select name="mm" id="sel" aria-label="월">
	                    <option value>월</option>
	                    <option value="01"> 1 </option>
	                    <option value="02"> 2 </option>
	                    <option value="03"> 3 </option>
	                    <option value="04"> 4 </option>
	                    <option value="05"> 5 </option>
	                    <option value="06"> 6 </option>
	                    <option value="07"> 7 </option>
	                    <option value="08"> 8 </option>
	                    <option value="09"> 9 </option>
	                    <option value="10"> 10 </option>
	                    <option value="11"> 11 </option>
	                    <option value="12"> 12 </option>
	                </select>
	            </td>
	            <td>
	                <input type="text" name="dd" placeholder="일" aria-label="일" class="int" maxlength="2">
	                <label for="dd" class="lbl"></label>
	            </td>
            <tr align="right">
                <td colspan = "2">
                    <div>
                        <input type="submit" value="정보수정"/>
                    </div>   
                </td>
            </tr>       
        </table>
    </form>
</body>
</html>