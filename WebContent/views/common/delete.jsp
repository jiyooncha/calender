<!-- 
 * COPYRIGHT (c) Nextree Consulting 2015
 * This software is the proprietary of Nextree Consulting.  
 * 
 * @author <a href="mailto:eschoi@nextree.co.kr">Choi, Eunsun</a>
 * @since 2015. 1. 9.
-->
<!DOCTYPE html>

<html lang="ko">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>PLAN</title>

<meta charset="utf-8">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/NamooBoardWeb_templete2/resources/css/bootstrap_modify.css"
	rel="stylesheet">
<script src="/NamooBoardWeb_templete2/resources/js/jquery-2.1.3.js"></script>
<script src="/NamooBoardWeb_templete2/resources/js/jquery.blockUI.js"></script>
<style type="text/css">
body {
	font-family: Tahoma;
}

header {
	text-align: center;
}

div.container {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	display: block;
}

.container .jumbotron {
	border-radius: 6px;
}

.jumbotron {
	padding: 20px;
	margin-bottom: 30px;
	font-size: 23px;
	font-weight: 200;
	line-height: 2.1428571435;
	color: inherit;
	background-color: #fefdf8;
}

.navbar-default {
	background-color: #96c0ce;
	border-color: #64662B;
}

.navbar-fixed-top {
	top: 0;
	border-width: 0 0 1px;
}

@media ( min-width : 768px) .navbar-fixed-top , . navbar-fixed-bottom {
	border-radius
	:
	

	
	0;
}

.navbar-fixed-top, .navbar-fixed-bottom {
	position: fixed;
	right: 0;
	left: 0;
	z-index: 1030;
}

.navbar {
	position: relative;
	min-height: 60px;
	margin-bottom: 21px;
	border: 1px solid transparent;
}

table.list {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 30px 20px;
	border-collapse: separate;
}

table.list th {
	width: 450px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

table.list td {
	width: 1000px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>
</head>

<body>
	<%
		
	%>

	<!-- Main Navigation ================================================================================= -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/kr.ac.bu.web2/views/common/main.jsp">Planner</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/kr.ac.bu.web2/board/mgntList.do">플랜</a></li>
					<li><a href="/kr.ac.bu.web2/board/mgntList.do">그룹 플랜</a></li>
					<!-- 메뉴바 수정필요 -->
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/kr.ac.bu.web2/user/logout.do">로그아웃 []</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Header ========================================================================================== -->
	<header>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="jumbotron">
						<h2>회원 탈퇴하기</h2>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Container ======================================================================================= -->
	<div class="container">

		<div class="row">
			<form action="${pageContext.request.contextPath}/user/delete.do" method="GET" class="form-signin">
				<input type="password" class="form-control" name="userPw" placeholder="비밀번호" required />
				<div>
					<!-- <a href="${pageContext.request.contextPath}/user/delete.do?userId=${user.userId}">탈퇴</a> -->

					<div class="form-btn">
						<button class="btn btn-login" type="submit">탈퇴하기</button>
					</div>
				</div>
			</form>
			
			
		</div>
	</div>

	<!-- Footer ========================================================================================== -->
	<div class="container"></div>


</body>
</html>

