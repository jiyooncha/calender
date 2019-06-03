

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>


<!DOCTYPE html>
<html>
<head>

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

.login-header {
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

.login-footer {
	max-width: 400px;
	margin: 0 auto 20px;
	padding-left: 10px;
}

.form-signin {
	max-width: 400px;
	padding: 29px;
	margin: 0 auto 20px;
	background-color: #fff;
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
	padding: 10px 9px;
}

.form-btn {
	text-align: center;
	padding-top: 20px;
}

.btn {
	display: inline-block;
	padding: 15px 25px;
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
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

.form-join {
	font-size: 16px;
	font-weight: bold;
	color: #646464;
	text-align: center;
}

.btn-login {
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
	<%
		String clientId = "UAfFebYFERnUueeu3YIP";//애플리케이션 클라이언트 아이디값";
		String redirectURI = URLEncoder.encode("YOUR_CALLBACK_URL", "UTF-8");
		SecureRandom random = new SecureRandom();
		String state = new BigInteger(130, random).toString();
		String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
		apiURL += "&client_id=" + clientId;
		apiURL += "&redirect_uri=" + redirectURI;
		apiURL += "&state=" + state;
		session.setAttribute("state", state);
	%>
	<div class="container">
		<div class="login-header">
			<h2>Planner</h2>
		</div>

		<!-- form -->
		<form action="${pageContext.request.contextPath}/user/login.do" method="POST" class="form-signin">
			<tr>${loginFail }</tr>
			<!-- 컨트롤러에서 넘기면서 수정해야할부분  -->
			
			<input type="text" class="form-control" name="userId" placeholder="아이디" required /> 
			<input type="password" class="form-control" name="userPw" placeholder="비밀번호" required />

			<div class="form-btn">
				<button class="btn btn-login" type="submit">로그인</button>
			</div>

			<div class="form-btn">
				<a href="<%=apiURL%>"><img height="30" src="http://static.nid.naver.com/oauth/small_g_in.PNG" /></a>
			</div>
		</form>

		<p class="text-center"> 
			계정이 없으신가요? 
			<a href="${pageContext.request.contextPath}/views/common/join.jsp" class="form-join">회원가입</a>
		</p>

		<div class="login-footer"></div>
	</div>
</body>
</html>


