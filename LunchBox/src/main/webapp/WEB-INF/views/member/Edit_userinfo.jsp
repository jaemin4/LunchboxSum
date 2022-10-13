<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<style type="text/css">

table{
	 width: 100%;
    height: 100px;
}

.box-wrap1{
	height: 130px;
	background-color:#f1c40f;
	font-size: 20px;
}

.box-wrap2{
	height: 100px;
	width: 400px;
	background-color:#f1c40f;
	font-size: 20px;
}

* {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}
.wrap {
    height: 94%;
    width: 100%;
    background-image: url(asset/image/bgbg5.JPG);
    background-repeat : no-repeat;
    background-position: center;
    background-size: cover;
    position: absolute;
}

.form-wrap1 {
    width: 450px;
    height: 450px;
    position: relative;
    margin: 5% auto;
    padding: 5px;
    overflow: hidden;
}
.form-wrap2 {
    width: 450px;
    height: 350px;
    position: relative;
    margin: 15% auto;
    padding: 5px;
    overflow: hidden;
}

.button-wrap1 {
    width: 450px;
    margin: 35px auto;
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
    <div class="form-wrap1">
    	<div class="button-wrap1">
    		<h1>회원 정보 수정</h1>
    		<div class="box-wrap1" style="border:2px solid">
		    <form name="edit" action="Update.do" method="post">
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
			                <input type="text" name="yy" id="y" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4">
			            </td>
			            <td>
			                <select name="mm" id="m" aria-label="월">
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
			                <input type="text" name="dd" id="d" placeholder="일" aria-label="일" class="int" maxlength="2">
			                <label for="dd" class="lbl"></label>
			            </td>
		            <tr align="right">
		                <td colspan = "2">
		                    <div>
		                    	<button type="button" class="btn btn-warning" onclick="editform_check();">수정하기</button>
		                    </div>   
		                </td>
		            </tr>       
		        </table>
		    </form>
		    <div class="form-wrap2">
		    	<div class="button-wrap2">
				    <h1>회원 탈퇴</h1>
		    		<div class="box-wrap2" style="border:2px solid">
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
				            <tr align="right">
				            	<td colspan="2px"><button type="button" class="btn btn-warning" onclick="deleteform_check();">탈퇴하기</button></td>
				            </tr>
				        </table>
				    </form>
		    	</div>
		    	</div>
		    	</div>
		    </div>
		 </div>
	</div>
</div>
<script>
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
    function editform_check(){
    	var y = document.getElementById("y");
    	var m = document.getElementById("m");
    	var d = document.getElementById("d");
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
    	document.edit.submit();
    }
</script>
</body>
</html>