<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<style type="text/css">
* {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}
.wrap {
    height: 100%;
    width: 115%;
    background-image: url(asset/image/bgbg5.JPG);
    background-repeat : no-repeat;
    background-position: center;
    background-size: cover;
    position: absolute;
}
.form-wrap {
    width: 450px;
    height: 350px;
    position: relative;
    margin: 15% auto;
    padding: 5px;
    overflow: hidden;
}
.button-wrap {
    width: 450px;
    margin: 20px auto;
    position: relative;
    border-radius: 30px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: rgba(0,24,113,1);
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li b {
	display: block;
	color: rgba(255,181,73,1);
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}
</style>
<body>
	<div id="header">
			<ul>
				<li><b>LunchBoxsimulator</b></li>
				<li><a href="GoMain.do"> Main</a></li>
				<li><a href="GoAsk.do">자주묻는질문</a></li>
				<li><a href="GoNutrition.do">영양소 및 칼로리</a></li>
				<li><a href="SelectAll.do">도시락정보공유게시판</a></li>
			</ul>
		</div>
	<%
	response.setCharacterEncoding("UTF-8");
    String user_id = (String)session.getAttribute("sessionID");
	System.out.println(user_id);
    %>
<div class="wrap">
    <div class="form-wrap">
    	<div class="button-wrap">
    		<h1>회원 탈퇴</h1>
			<form name="deleteMember" action="Delete.do" method="post">
		        <table>
		            <tr>
		                <th>ID</th>
		                <td><input type="text" name="mb_ID" id="id" placeholder="<%=user_id%>"></td>
		            </tr>
		            <tr>
		                <th>PW</th>
		                <td><input type="password" name="mb_PW" id="pw" placeholder="PW를 입력하세요."></td>
		            </tr>
		            <tr>
		            	<td><input type="button" onclick="deleteform_check();" value="탈퇴하기"></td>
		            </tr>
		        </table>
		    </form>
		</div>
	</div>
</div>
<script type="text/javascript">
    function deleteform_check(){
    	var id = document.getElementById("id");
    	var pw = document.getElementById("pw");
    	if(id.value == ""){
    		alert("아이디를 입력해주세요.")
    		id.focus();
    		return false;
    	}
    	if(pw.value == ""){
    		alert("비밀번호를 입력해주세요.")
    		pw.focus();
    		return false;
    	}
    	document.deleteMember.submit();
    }
</script>
</body>
</html>