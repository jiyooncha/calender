<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>GROUP </title>
  <style>
  				#body {
						margin: 0;
				}	
                #topMenu {
                        height: 80px;
                        width: 1200px;
                }

                #topMenu ul li {
                        list-style: none;
                        color: white;
                        background-color: #2d2d2d;
                        float: left;
                        line-height: 80px;
                        vertical-align: middle;
                        text-align: center;
                }

                #topMenu .menuLink {
                        text-decoration:none;
                        color: white;
                        display: block;
                        width: 150px;
                        font-size: 30px;
                        font-weight: bold;
                        font-family: "Trebuchet MS";
                }
                #topMenu .menuLink:hover {
                        color: red;
                        background-color: #4d4d4d;
                }

				#topMenu .nav-item:nth-child(1) {
						background-color:grey;
				}



    </style>
	 <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>

<body>
	<header>
		<img src="./icon.jpg" align="left">
			<nav id="topMenu" >
		<ul>
			<li><a class="menuLink" href="${pageContext.request.contextPath}/board/grouplist.do">HOME</a></li>
			<li>|</li>
			<li><a class="menuLink" href="">�׷� ����</a></li>
			<li>|</li>
			<li><a class="menuLink" href="${pageContext.request.contextPath}/board/grouplist.do">�׷� ã��</a></li>
			<li>|</li>
			<li><a class="menuLink" href="${pageContext.request.contextPath}/board/grouplist.do">�׷� ����</a></li>
			<li>|</li>
			<li><a class="menuLink" href="${pageContext.request.contextPath}/board/grouplist.do">���� 1</a></li>
			<li>|</li>
			<li><a class="menuLink" href="${pageContext.request.contextPath}/board/grouplist.do">���� 1</a></li>
		</ul>	
	</nav>
	</header>
	
	<section>
		<%@ include file="./weblist.jsp" %>
	</section>

	<footer>
		<hr>
		<div align="right" margin-right="20px"> Baekseok University ICT department LINC+ Web group 1 copyright </div>
	</footer>
	

	
</body>


</html>