<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="member_insert_action.jsp">
<h1 style="text-align: center;">회원 등록</h1>
<table border="1" style="text-align: center;">
<tr>
	<td>
		아이디
	</td>
	<td>
		<input type="text" name="id">
	</td>
</tr>
<tr>
	<td>
		비밀번호
	</td>
	<td>
		<input type="password" name="password">
	</td>
</tr>
<tr>
	<td>
		성명
	</td>
	<td>
		<input type="text" name="name">
	</td>
</tr>
<tr>
	<td>
		이메일
	</td>
	<td>
		<input type="text" name="email">
	</td>
</tr>
<tr>
	<td>
		연락처
	</td>
	<td>
		<input type="text" name="phone">
	</td>
</tr>
<tr>
	<td colspan="2">
		<button>등록</button>
		<input type="button" value="조회" onclick="location.href='customer_list.jsp'">
	</td>
</tr>
</table>
</form>
</body>
</html>