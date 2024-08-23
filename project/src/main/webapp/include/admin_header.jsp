<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="admin" align="center">
		<div class="admin_top" align="right">
			현재 로그인: (<a href="#">${adminName }</a>)
	        <input class="button" type ="button" value="로그아웃" onclick="">	
		</div>
		<div class="admin_category" align="center">
			<input class="button" type ="button" value="카테고리 관리" onclick="location.href='admin_category.go'">&nbsp;&nbsp;
			<input class="button" type ="button" value="상품 관리" onclick="location.href='admin_product.go'">&nbsp;&nbsp;
			<input class="button" type ="button" value="회원 관리" onclick="">&nbsp;&nbsp;
			<input class="button" type ="button" value="게시판 관리" onclick="">
		</div>
	</div>