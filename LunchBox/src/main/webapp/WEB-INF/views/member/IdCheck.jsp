<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<style type="text/css">
.box-wrap{
	background-color:gold;
	height:129px;
}
</style>
</head>
<body>
	<div class="box-wrap" style="border:2px solid">
	<form name="insertMember" action="IdCheck.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="mb_Idck" id="id" placeholder="ID를 입력하세요."></td>
                <td><input type="button" onclick="joinform_check();" value="중복체크"></td>
            </tr>
        </table>
    </form>
    </div>
    <script type="text/javascript">
    function joinform_check(){
    	var id = document.getElementById("id");
    	if(id.value == ""){
    		alert("아이디를 입력해주세요.")
    		id.focus();
    		return false;
    	}
    	document.insertMember.submit();
    }
    </script>
</body>
</html>