<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 페이지</title>
</head>
<body>
	<div class="login" align="center">
	
		<form method="post" action="<%=request.getContextPath() %>/admin_login_ok.go">
		
			<table class="table" border="1" width="auto">
				<h3>관리자 로그인</h3>
				<tr>
					<th>관리자 아이디</th>
					<td>
						<input name="admin_id">
					</td>
				</tr>
			
				<tr>
					<th>관리자 비밀번호</th>
					<td>
						<input type="password" name="admin_pwd">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="접속">
				</tr>
			</table>
				
			<table>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="뒤로가기" onclick="history.back()">&nbsp;&nbsp;
						<input type="button" value="새로만들기" onclick="location.href='admin_new.go'">
				</tr>
			</table>
			
		</form>
	</div>
</body>
</html>