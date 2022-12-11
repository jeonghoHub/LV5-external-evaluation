<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City List</title>
</head>
<body>
<%
	
	request.setCharacterEncoding("UTF-8");

	Connection con = null;
	ResultSet rs = null;
	PreparedStatement psmt = null;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "system";
		String pw = "1234";
		System.out.println("DB정상연결");
		try {
			con = DriverManager.getConnection(url,id,pw);		
			System.out.println("DB계정일치");
		} catch (SQLException e) {
			System.out.println("DB계정불일치");
			e.printStackTrace();
		}
	} catch (ClassNotFoundException e) {
		System.out.println("DB연결실패");
		e.printStackTrace();
	}
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	String sql = "INSERT INTO custom_01 VALUES (?, ?, ?, ?, ?)";
	
	psmt = con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, password);
	psmt.setString(3, name);
	psmt.setString(4, email);
	psmt.setString(5, phone);
	
	psmt.executeUpdate();
	psmt.close();
	con.close();
%>
<script>
alert("저장 되었습니다!");
location.href = "customer_list.jsp";
</script>
</body>
</html>
