<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<form action="SearchPw.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="Id" placeholder="ID를 입력하세요." maxlength="20"></td>
            </tr>
            <tr>
            	<th>생년월일</th>
	            <td>
	                <input type="text" name="y" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
	            </td>
	            <td>
	                <select name="m" aria-label="월">
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
	                <input type="text" name="d" placeholder="일" aria-label="일" class="int" maxlength="2">
	                <label for="dd" class="lbl"></label>
	            </td>
	            <tr align="right">
                <td colspan="2">
                    <input type="submit" value="제출">
                </td>        
            </tr>    
        </table>
    </form>
</body>
</html>