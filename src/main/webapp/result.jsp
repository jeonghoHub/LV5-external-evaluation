<%@ page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.*"%>
<%
	User user1 = new User("한국인", "1004", "2019-10-31");
	String code = request.getParameter("code");
	
	Product product = new Product();
	product.setCode(code);
	product.find();
	System.out.println(product.getVendor());
	System.out.println(product.getCode());
	System.out.println(product.getDate());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>제품코드 조회 결과</h1>
<table border="1" style="text-align: center;">
<tr>
	<td colspan="2">
		제조사 조회 결과
	</td>
</tr>
<tr>
	<td>
		제품코드
	</td>
	<td>
		<p><%= product.getCode() %></p>
	</td>
</tr>
<tr>
	<td>
		제조사명
	</td>
	<td>
		<p><%= product.getVendor() %></p>
	</td>
</tr>
<tr>
	<td>
		조회일시
	</td>
	<td>
		<p><%= product.getDate() %></p>
	</td>
</tr>
</table>
<hr>
작성자: <%= user1.getName() %> 비번: <%= user1.getPassword() %> 작성일: <%= user1.getDate() %>
</body>
</html>