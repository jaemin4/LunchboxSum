<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="insertMember" action="IdCheck.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="mb_Idck" placeholder="ID를 입력하세요."></td>
                <td><input type="submit" value="중복체크"></td>
            </tr>
        </table>
    </form>
</body>
</html>