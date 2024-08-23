<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
			<h3>상품 상세정보</h3>
			<div class="admin_content">
			<c:set var ="content" value="${Content }" />
			
				<table class="table" border="1" width="700">
					 <c:if test ="${!empty content }">
					<tr>
						<th colspan="4" align="center">대표사진</th>
						<th>상품이름</th>
						<td>${content.getProduct_name() } </td>
					</tr>
					
					<tr>
						<th rowspan="10" colspan="4" align="center"> 
							${content.getProduct_m_img() }
						</th>
						
					</tr>
						<th>상품CODE</th>
						<td>${content.getProduct_code() }</td>
					</tr>
						
					</tr>
						<th>카테고리CODE</th>
						<td>${content.getCategory_code() }</td>
					</tr>
					
					<tr>
						<th>서브카테고리CODE</th>
						<td>${content.getSubcategory_code() }</td>
					</tr>
					
					<tr>
						<th>서브2카테고리CODE</th>
						<td>${content.getSub2category_code() }</td>
					</tr>
					
					<tr>
						<th>상세카테고리CODE</th>
						<td>${content.getSub3category_code() }</td>
					</tr>
					
					<tr>
						<th>상품 제조자</th>
						<td>${content.getProduct_company() }</td>
					</tr>
					
					<tr>
						<th>마일리지</th>
						<td>${content.getProduct_mileage() }포인트</td>
					</tr>
					
					<tr>
						<th>배송비용</th>
						<td>${content.getProduct_transport() }원</td>
					</tr>
					
					<tr>
						<th>조립비용</th>
						<td>${content.getProduct_build() }원</td>
					</tr>
					
					<tr>
						<th rowspan="3" align="center">
							${content.getProduct_p_img1() } 
						</th>
						<th rowspan="3" align="center">
							${content.getProduct_p_img2() }
						</th>
						<th rowspan="3" align="center">
							${content.getProduct_p_img3()  }
						</th>
						<th rowspan="3" align="center">
							${content.getProduct_p_img4()  }
						</th>
					</tr>
					
					<tr>
						<th>세일</th>
						<td>${content.getProduct_sale() }%</td>
					</tr>
					
					<tr>
						<th>등록일</th>
						<td>${content.getProduct_regdate().substring(0,10) }</td>
					</tr>
					
					
			</c:if>
						
			<c:if test="${empty content }">
			         <tr>
			            <td colspan="6" align="center">
			               <h3>카테고리 전체 목록이 없습니다.....</h3>
			            </td>
			         </tr>
			</c:if>
			
			</table>
			
			<br><br>
			
			<input class="button" type="button" value="상품 수정" onclick="">&nbsp;&nbsp;
			<input class="button" type="button" value="상품 삭제" onclick="">
			</div>
			
	<br><br>		
	<!-- footer -->
	<jsp:include page="../include/admin_footer.jsp" />
	<!-- footer end-->
	
	</div>
	</div>

</body>
</html>