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
</head>
<body>
	<div align="center">
			<!-- 카테고리 -->
			<h3>상세카테고리</h3>
			<div class="admin_category">
			<c:set var ="category" value="${SubCat2s }" />
			<table class="table" border="1" width="700" >
				<tr>
					<th>상세카테고리 번호</th><th>상테카테고리CODE</th>
					<th>카테고리 이름</th><th>수정</th><th>삭제</th>
				</tr>
			<c:if test ="${!empty category }">
				<c:forEach items="${category }" var="dto">
					<tr >
						<td>${dto.getSub3category_no() }</td>
						<td>${dto.getSub3category_code() }</td>
						<td>${dto.getSub3category_name() }</td>
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
			               <h3>서브카테고리 전체 목록이 없습니다.....</h3>
			            </td>
			         </tr>
	         </c:if>
			</table>		
		</div>
		</div>
</body>
</html>