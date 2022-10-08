<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
	<form name="pwcheck" action="SearchPw.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="Id" id="id" placeholder="ID를 입력하세요." maxlength="20"></td>
            </tr>
            <tr>
            	<th>생년월일</th>
	            <td>
	                <input type="text" name="y" id="y" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
	            </td>
	            <td>
	                <select name="m" id="m" aria-label="월">
	                    <option >월</option>
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
	                <input type="text" name="d" id="d" placeholder="일" aria-label="일" class="int" maxlength="2">
	                <label for="dd" class="lbl"></label>
	            </td>
	            <tr align="right">
                <td colspan="2">
                    <input type="button" onclick="pwform_check();" value="제출">
                </td>        
            </tr>    
        </table>
    </form>
    <script>
    function pwform_check(){
    	var id = document.getElementById("id");
    	var y = document.getElementById("y");
    	var m = document.getElementById("m");
    	var d = document.getElementById("d");
    	if(id.value == ""){
    		alert("아이디를 입력해주세요.")
    		id.focus();
    		return false;
    	}
    	if(y.value == ""){
    		alert("태어난 연도를 입력해주세요.");
    		y.focus();
    		return false;
    	}
    	if(m.value == "월"){
    		alert("태어난 달을 선택해주세요.")
    		return false;
    	}
    	if(d.value == ""){
    		alert("태어난 날을 입력해주세요.");
    		d.focus();
    		return false;
    	}
    	document.pwcheck.submit();
    }
    </script>
</body>
</html>