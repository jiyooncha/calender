<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>소셜보드</title>
    <%@ include file="/views/layout/common.jsp" %>
</head>
<body>

<!-- Main Navigation ================================================================================= -->
<%@ include file="/views/layout/menu.jsp" %>

<!-- Header ========================================================================================== -->
<header>
    <div>
        <div>
            <div>
                <div>
                    <h2>게시판 관리</h2>
                </div>
            </div>
        </div>

        <div>
            <div>
                <ol>
                    <li><a href="#">게시판 관리</a></li>
                    <li>게시판 개설</li>
                </ol>
            </div>
        </div>
    </div>
</header>

<!-- Container ======================================================================================= -->
<div>
    <div>
       
        <div style="z-index:1020">
            <div>
                <div>
                    <h4>게시판 관리</h4>
                </div>
                <div>
                	<c:choose>
                		<c:when test="${empty groups}">
                    		<a>개설된 게시판이 없습니다.</a>
                		</c:when>
                		<c:otherwise>
                			<c:forEach var="group" items="${groups}">
			                    <a href="${pageContext.request.contextPath}/modify.do?groupId=${group.groupId}">${group.name}</a>
                			</c:forEach>
                		</c:otherwise>
                	</c:choose>
                </div>
                <div>
                    <div>
                        <div>
                            <a href="#">신규게시판 개설</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       
        <div>
            <div>
                <h3>게시판 개설</h3>
            </div>

          
            <div>
                <div>
                    <form method="POST" action="${pageContext.request.contextPath}/group/create.do">
                        <fieldset>
                            <div>
                                <label>게시판명</label>

                                <div>
                                    <input type="text" name="groupName" id = "groupName">
                                </div>
                            </div>

                            <div>
                                <div>
                                    <button type="submit">확인</button>
                                    <button>취소</button>
                                </div>
                            </div>

                        </fieldset>
                    </form>
                </div>

            </div>
        </div>
    </div>

<!-- Footer ========================================================================================== -->
 <%@ include file="/views/layout/footer.jsp" %>
</div>

</body>
</html>