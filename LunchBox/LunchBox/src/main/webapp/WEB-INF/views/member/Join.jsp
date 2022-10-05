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
                <td><input type="text" name="mb_Id" placeholder="ID를 입력하세요."></td>
                <td><input type="button" name="mb_Idck" oninput="idcheck2()" value="중복체크"></td>
            </tr>
            <tr>
                <th>PW</th>
                <td><input type="password" name="mb_Pw" placeholder="PW를 입력하세요."></td>
            </tr>
            <tr>
                <th>PW<br>체크</th>
                <td><input type="password" name="mb_Pw2" oninput="pwCheck()" placeholder="입력한 PW를 확인해 주세요."></td>
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
                <th>나이</th>
                <td><input type="number" name="mb_Birthdate" placeholder="19870519"></td>
            </tr><br>
            <tr align="right">
                <td colspan="2">
                    <input type="submit" value="회원가입">
                </td>        
            </tr>    
        </table>
    </form>
    <script>
    function idCheck2(){
    	idCheck();
        if(result>0){
            alert("중복된 아이디입니다.");
        }else{
            alert("사용 가능한 아이디입니다.");
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