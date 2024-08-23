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
td {
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
			<!-- 상품 -->
			<h3>전체 상품</h3>
			<div class="admin_product">
			<c:set var ="product" value="${Product }" />
			
			<table class="table" border="1" width="700">
				<tr>
					<th>상품NO.</th><th>상품CODE</th>
					<th colspan="2">이름</th><th>가격</th>
				</tr>
			<c:if test ="${!empty product }">
				<c:forEach items="${product }" var="dto">
					<tr>
						<td>${dto.getProduct_no() } </td>
						<td>${dto.getProduct_code() } </td>
						<td>
						<a href="<%=request.getContextPath() %>/admin_product_content.go?no=${dto.getProduct_no() }">
						${dto.getProduct_name() }</a></td>
						<td>${dto.getProduct_m_img() }</td>
						<td>${dto.getProduct_price() }</td>
					</tr>
				</c:forEach>
			</c:if>
								
			<c:if test="${empty product }">
			         <tr>
			            <td colspan="6" align="center">
			               <h3>카테고리 전체 목록이 없습니다.....</h3>
			            </td>
			         </tr>
			</c:if>
			</table>
			
			</div>
			
			<br><br>
			
	<!-- footer -->
	<jsp:include page="../include/admin_footer.jsp" />
	<!-- footer end-->
	
	</div>
	</div>

</body>
</html>