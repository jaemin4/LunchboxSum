<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>����� �Խ���</h1>
		<p>���� �ǰ߰� ���θ��� �����Ǹ� �ڶ����ּ���!</p>
	</div>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2></h2>
			</div>
			<div class="panel-body">

				<form accept-charset="utf-8" action="http://127.0.0.1:9000/data"
					method="post">
					<div class="form-group">

						<h3>${param.result}</h3>
						<label>����:</label>
						<textarea name="content" rows="10" class="form-control"></textarea>
					</div>
					<button type="submit" class="btn btn-primary btn-sm">�۾���</button>
				</form>


			</div>
			<div class="panel-footer">������ ��õ�丮</div>
		</div>
	</div>

</body>
</html>