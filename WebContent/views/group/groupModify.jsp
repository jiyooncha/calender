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
                    <h2>그룹 관리</h2>
                </div>
            </div>
        </div>

        <div>
            <div>
                <ol>
                    <li><a href="#">그룹 관리</a></li>
                    <li><a>그룹명</a></li>
                    <li>그룹 정보 수정</li>
                </ol>
            </div>
        </div>
    </div>
</header>

<!-- Container ======================================================================================= -->
<div>
    <div>
     
        <div style="z-index:1020" >
            <div >
                <div>
                    <h4>그룹 관리</h4>
                </div>
                <div>
                	<c:choose>
                		<c:when test="${empty groups}">
                    		<a>개설된 그룹이 없습니다.</a>
                		</c:when>
                		<c:otherwise>
                			<c:forEach var="group" items="${groups}">
			                    <a href="${pageContext.request.contextPath}/group/modify.do?groupId=${group.groupId}">${group.name}</a>
                			</c:forEach>
                		</c:otherwise>
                	</c:choose>
                </div>
                <div>
                    <div>
                        <div>
                            <a href="${pageContext.request.contextPath}/group/regist.do">그룹 만들기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
        <div>
            <div>
                <h3>그룹 정보 수정</h3>
            </div>
           
            <div>
                <div>
                    <form action="${pageContext.request.contextPath}/group/modify.do" method="POST">
                        <fieldset>
                            <div>
                                <label>게시판명</label>

                                <div>
                                    <input type="hidden" name="groupId" value="${groupDetail.groupId}">
                                    <input type="text" name="name" value="${groupDetail.name}">
                                </div>
                            </div>


                            <div>
                                <div>
                                    <button type="submit">확인</button>
                                    <button type="reset">취소</button>
                                    <a href="${pageContext.request.contextPath}/group/remove.do?groupId=${groupDetail.groupId}">삭제</a>
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