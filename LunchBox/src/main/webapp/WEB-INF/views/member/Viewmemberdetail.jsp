<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<meta charset="UTF-8">
<title>회원의 성별과 연령대를 분석</title>
</head>
<body>
	<%
		response.setCharacterEncoding("UTF-8");
		int countGenderM = (int)session.getAttribute("countGenderM");
		System.out.println(countGenderM);
		int countGenderF = (int)session.getAttribute("countGenderF");
		System.out.println(countGenderF);
		int countGenderMBirth20 = (int)session.getAttribute("countGenderMBirth20");
		System.out.println(countGenderMBirth20);
		int countGenderMBirth30 = (int)session.getAttribute("countGenderMBirth30");
		System.out.println(countGenderMBirth30);
		int countGenderMBirth40 = (int)session.getAttribute("countGenderMBirth40");
		System.out.println(countGenderMBirth40);
		int countGenderMBirth50 = (int)session.getAttribute("countGenderMBirth50");
		System.out.println(countGenderMBirth50);
		int countGenderFBirth20 = (int)session.getAttribute("countGenderFBirth20");
		System.out.println(countGenderFBirth20);
		int countGenderFBirth30 = (int)session.getAttribute("countGenderFBirth30");
		System.out.println(countGenderFBirth30);
		int countGenderFBirth40 = (int)session.getAttribute("countGenderFBirth40");
		System.out.println(countGenderFBirth40);
		int countGenderFBirth50 = (int)session.getAttribute("countGenderFBirth50");
		System.out.println(countGenderFBirth50);
	%>
	<table>
		<tr>
			<td><div id="gender" style="width: 500px; height: 500px;"></div><td>
			<td><div id="genderMBirth" style="width: 500px; height: 500px;"></div><td>
			<td><div id="genderFBirth" style="width: 500px; height: 500px;"></div><td>
		</tr>
	</table>
	<script type="text/javascript">
	google.charts.load('current', {'packages':['corechart']}); 
	google.charts.setOnLoadCallback(drawChart1);
	google.charts.setOnLoadCallback(drawChart2);
	google.charts.setOnLoadCallback(drawChart3);
        function drawChart1() {
        	var GenderMBirth20 = <%=countGenderMBirth20%>;
    		var GenderMBirth30 = <%=countGenderMBirth30%>;
    		var GenderMBirth40 = <%=countGenderMBirth40%>;
    		var GenderMBirth50 = <%=countGenderMBirth50%>;
            var data = new google.visualization.arrayToDataTable([
            	['연령대','명'],
            	['20대',GenderMBirth20],
                ['30대',GenderMBirth30],
                ['40대',GenderMBirth40],
                ['50대',GenderMBirth50]
            ]);
            var opt = {
                    'title':'남자 회원의 연령대별 분포',
            };
            var chart = new google.visualization.PieChart(document.getElementById('genderMBirth'));
            chart.draw(data,opt);
        }
        
        function drawChart2() {
        	var GenderFBirth20 = <%=countGenderFBirth20%>;
            var GenderFBirth30 = <%=countGenderFBirth30%>;
            var GenderFBirth40 = <%=countGenderFBirth40%>;
            var GenderFBirth50 = <%=countGenderFBirth50%>;
            var data = new google.visualization.arrayToDataTable([ 
            	['연령대','명'],
            	['20대',GenderFBirth20],
                ['30대',GenderFBirth30],
                ['40대',GenderFBirth40],
                ['50대',GenderFBirth50]
            ]);
            var opt = {
                    'title':'여자 회원의 연령대별 분포',
            };
            var chart = new google.visualization.PieChart(document.getElementById('genderFBirth'));
            chart.draw(data,opt);
        }
        function drawChart3() {
        	var GenderM = <%=countGenderM%>;
            var GenderF = <%=countGenderF%>;
            var data = new google.visualization.arrayToDataTable([ 
            	['성별','명'],
            	['남자',GenderM],
                ['여자',GenderF]
            ]);
            var opt = {
                    'title':'전체 회원의 성별 분포',
            };
            var chart = new google.visualization.PieChart(document.getElementById('gender'));
            chart.draw(data,opt);
        }
        </script>
</body>
</html>