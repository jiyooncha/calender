<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>로그인</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/NamooBoardWeb_templete2/resources/css/bootstrap_modify.css"
	rel="stylesheet">
<link href="/NamooBoardWeb_templete2/resources/css/layout.css"
	rel="stylesheet">
<script src="/NamooBoardWeb_templete2/resources/js/jquery-2.1.3.js"></script>
<script src="/NamooBoardWeb_templete2/resources/js/jquery.blockUI.js"></script>
<style type="text/css">
body {
	padding-top: 100px;
	padding-bottom: 40px;
	background-color: #fefdf8;
}

div.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	display: block;
}

.join-header {
	max-width: 400px;
	padding: 15px 29px 25px;
	margin: 0 auto;
	background-color: #96c0ce;
	color: white;
	text-align: center;
	-webkit-border-radius: 15px 15px 0px 0px;
	-moz-border-radius: 15px 15px 0px 0px;
	border-radius: 15px 15px 0px 0px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-control, textarea.form-control, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
    border-width: 2px;
    -webkit-box-shadow: none;
    box-shadow: none;
}
.form-control {
    display: block;
    width: 150%;
    height: 50px;
    padding: 5px 15px;
    font-size: 15px;
    line-height: 1.428571429;
    color: #2c3e50;
    vertical-align: middle;
    background-color: #ffffff;
    background-image: none;
    border: 1px solid #dce4ec;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
    transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
}

.form-signin {
	max-width: 400px;
	padding: 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	vertical-align: middle;
	-webkit-border-radius: 0px 0px 15px 15px;
	-moz-border-radius: 0px 0px 15px 15px;
	border-radius: 0px 0px 15px 15px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 15px;
}

.form-signin input[type="text"], .form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 15px 9px;
}

.form-btn {
	text-align: center;
	padding-top: 20px;
}

.btn {
	display: inline-block;
	padding: 10px 25px;
	margin-bottom: 0;
	font-size: 20px;
	font-weight: normal;
	line-height: 1.428571429;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	cursor: pointer;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.form-join {
	font-size: 16px;
	font-weight: bold;
	color: #646464;
	text-align: center;
}

.btn-join {
	color: #ffffff;
	font-weight: bold;
	padding: 10px 140px;
	background-color: #525564;
}

.text-center {
	text-align: center;
}
</style>

</head>
<body>

	<div class="container">

		<div class="join-header">
			<h2>Planner</h2>
		</div>

		<form action="${pageContext.request.contextPath}/user/join.do"
			method="post" class="form-signin">
			
			<table>
				<tr>${joinFail }</tr>
				
				<tr>
					<th>ID</th>
					<td><input id="userId" name="userId" class="form-control"
						type="text" placeholder="ID를 입력해주세요." required></td>
				</tr>
				<tr>
					<th>Password</th>
					<td><input id="userPw" name="userPw" class="form-control"
						type="password" placeholder="비밀번호를 입력해주세요." required></td>
				</tr>
				<tr>
					<th>Name</th>
					<td><input id="userName" name="userName" class="form-control"
						type="text" placeholder="이름을 입력해주세요." required></td>
				</tr>
				<tr>
					<th>Phone</th>
					<td><input id="userPhone" name="userPhone" class="form-control"
						type="text" placeholder="전화번호"></td>
				</tr>
				</table>
			
			<div class="form-btn">
				<input class="btn btn-join" type="submit"
					href="${pageContext.request.contextPath}/common/login.jsp"
					value="회원가입">
			</div>

			<div class="form-btn">
				<input class="btn btn-join" type="reset" value="취소">
			</div>
			<!-- 취소 버튼 말고 텍스트로 밑 오른쪽에 배치하기 -->

		</form>
		<br>
</body>
</html>
