<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
</head>
<body>
    <h1>LUNCHBOX SIMULATOR</h1>
    <form action="Door.jsp" method="post">
        <table>
            <tr>
                <td>ID</td>
                <td align="center"><input type="text" name="MbId" placeholder= "${session.user_id}" readonly></td>
            </tr>
            <tr>
                <th>성별</th>
                <td align="center"><input type="radio" name="MbGender" value="M" checked>남자</td>
                <td><input type="radio" name="MbGender" value="F">여자</td>
            </tr>
            <tr>
                <th>나이</th>
                <td><input type="date" name="MbBirthdate"></td>
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