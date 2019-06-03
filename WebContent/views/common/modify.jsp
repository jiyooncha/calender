<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table">
	<form action="${pageContext.request.contextPath}/user/modify.do" method="post">
			<tr>
				<th>비밀번호 :</th>
				<td><input type="password" name="userPass" maxlength=20 class="form-control" type="password" value="${user.userPw}"></td>
			</tr>
			<tr>
				<th>이름 :</th>
				<td><input type="text" name="userName" maxlength=10 class="form-control" type="text" value="${user.userName}"></td>
			</tr>
			<tr>
				<th>전화번호 :</th>
				<td><input type="text" name="userPhone" maxlength=15 class="form-control" value="${user.userPhone}"></td>
			</tr>
		</table><br>
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/user/modify.do?userId=${user.userId}">내 정보 수정</a>
	<a href="${pageContext.request.contextPath}/user/modify.do?userId=">내 정보 수정</a>
</body>
</html>