<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
</head>
<body>
	<caption><h1>LUNCHBOX SIMULATOR</h1></caption>
    <form name="insertMember" action="JoinOK.do" method="post">
        <table>
            <tr>
                <th>ID</th>
                <td><input type="text" name="mb_Id" placeholder="ID를 입력하세요." maxlength="20"></td>
                <td><input type="button" onclick="winopen()" value="중복체크"></td>
            </tr>
            <tr>
                <th>PW</th>
                <td><input type="password" name="mb_Pw" placeholder="PW를 입력하세요." maxlength="20"></td>
            </tr>
            <tr>
                <th>PW<br>체크</th>
                <td><input type="password" name="mb_Pw2" oninput="pwCheck()" placeholder="입력한 PW를 확인해 주세요." maxlength="20"></td>
            </tr>
            <tr align="right">
                <td></td>
                <td colspan="2" id="pwCheck"></td>
            </tr>
            <tr>
                <th>성별</th>
                <td align="center"><input type="radio" name="mb_Gender" value="M" checked>남자</td>
                <td><input type="radio" name="mb_Gender" value="F">여자</td>
            </tr>
            <tr>
            	<th>생년월일</th>
	            <td>
	                <input type="text" name="yy" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
	            </td>
	            <td>
	                <select name="mm" id="sel" aria-label="월">
	                    <option value>월</option>
	                    <option value="01">" 1 "</option>
	                    <option value="02">" 2 "</option>
	                    <option value="03">" 3 "</option>
	                    <option value="04">" 4 "</option>
	                    <option value="05">" 5 "</option>
	                    <option value="06">" 6 "</option>
	                    <option value="07">" 7 "</option>
	                    <option value="08">" 8 "</option>
	                    <option value="09">" 9 "</option>
	                    <option value="10">" 10 "</option>
	                    <option value="11">" 11 "</option>
	                    <option value="12">" 12 "</option>
	                </select>
	            </td>
	            <td>
	                <input type="text" name="dd" placeholder="일" aria-label="일" class="int" maxlength="2">
	                <label for="dd" class="lbl"></label>
	            </td>
            </tr><br>
            <tr align="right">
                <td colspan="2">
                    <input type="submit" value="회원가입">
                </td>        
            </tr>    
        </table>
    </form>
    <script>
    <!-- 아이디중복체크 -->
    function winopen(){
    	//새창을 열어서 페이지를 오픈 후 -> 회원아이디정보를 가지고 중복체크
    	//1. 아이디가 없으면 알림창과 진행x
    	if(document.insertMember.mb_Id.value =="" || document.insertMember.mb_Id.value.length < 0){
    		alert("아이디를 먼저 입력해주세요")
    		document.insertMember.mb_Id.focus();
    	}else{
    		window.open("GoIdCheck.do","","width=500, height=300");
    	}
    }
    function pwCheck(){
        var pw1 = document.getElementsByName("mb_Pw")[0].value;
        var pw2 = document.getElementsByName("mb_Pw2")[0].value;
        let pw3 = document.getElementById("pwCheck");
        console.log(pw1);
        console.log(pw2);
        if(pw1 != "" || pw2 != ""){
            if(pw1 != pw2){
                return pw3.innerText = "비밀번호가 틀렸습니다.";
            }else{
                return pw3.innerText = "비밀번호가 일치합니다.";
                
            }
        }
            
    }
    </script>
</body>
</html>