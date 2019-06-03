<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>groupList</title>
</head>

<%@ include file="/views/layout/menu.jsp" %>
<body>
<%@ include file="/views/layout/common.jsp" %>
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="col-lg-8"><!--게시판 넓이 -->
            <div class="col-lg-12">
                <h1 class="page-header">그룹 찾기</h1>
            </div>
            <div>
                    <h4>그룹 관리</h4>
                </div>

            <div class="row">
                  <div class="col-lg-12">
					<a href="${pageContext.request.contextPath}/group/create.do"> 그룹 만들기 </a>
                  </div>
              </div>
            <div class="panel panel-default">
                <div class="panel-heading">그룹 찾기 </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>글 번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> </td>
                                <td>                <div>
                	<c:choose>
                		<c:when test="${empty groups}">
                    		<a>생성된 그룹이 없습니다.</a>
                		</c:when>
                		<c:otherwise>
                			<c:forEach var="group" items="${groups}">
			                    <a href="${pageContext.request.contextPath}/group/modify.do?groupId=${group.groupId}" >${group.name}</a>
                			</c:forEach>
                		</c:otherwise>
                	</c:choose>
                </div></td>
                                <td> </td>
                                <td> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/views/layout/footer.jsp" %>
</body>
</html>
