<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common/master.css">
<link rel="stylesheet" href="css/common/admin.css">

<style>
table  {
text-align:center;
}
</style>
</head>
<body>
	<div class="container" align="center">
	<!-- header -->
	<jsp:include page="../include/admin_header.jsp" />
	<!-- header end -->
	<br><br>
	
	<div align="center">
		<!-- 카테고리 -->
		<h3>카테고리</h3>
		<div class="admin_category">
		<c:set var ="category" value="${Category }" />
		
		<table class="table" border="1" width="700">
			<tr>
				<th>카테고리 번호</th><th>카테고리CODE</th>
				<th>카테고리 이름</th><th>수정</th><th>삭제</th>
			</tr>
		<c:if test ="${!empty category }">
			<c:forEach items="${category }" var="dto">
				<tr>
					<td>${dto.getCategory_no() } </td>
					<td>${dto.getCategory_code() }</td>
					<td>${dto.getCategory_name() }</td>
					<td>
					<input class="button" type="button" value="수정" onclick="">
					</td>
					<td>
					<input class="button" type="button" value="삭제" onclick="">
					</td>
				</tr>
			</c:forEach>
		</c:if>
							
		<c:if test="${empty category }">
		         <tr>
		            <td colspan="5" align="center">
		               <h3>카테고리 전체 목록이 없습니다.....</h3>
		            </td>
		         </tr>
		</c:if>
		</table>
		</div>
		
		<br><br>
		<!-- 서브카테고리 -->
		<jsp:include page="admin_subcategory.jsp" />
		
		<br><br>
		
		<!-- 서브2카테고리 -->
		<jsp:include page="admin_sub2category.jsp" />
		
		<br><br>
		
		<!-- 상세카테고리 -->			
		<jsp:include page="admin_sub3category.jsp" />
		</div>
		
		<br><br>
		
	<!-- footer -->
	<jsp:include page="../include/admin_footer.jsp" />
	<!-- footer end-->
	
	</div>
</body>
</html>