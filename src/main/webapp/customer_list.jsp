<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
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
			String sql = "SELECT * FROM CUSTOM_01";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			System.out.println("DB계정일치");
		} catch (SQLException e) {
			System.out.println("DB계정불일치");
			e.printStackTrace();
		}
	} catch (ClassNotFoundException e) {
		System.out.println("DB연결실패");
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원목록조회</h1>
<table border="1" style="text-align: center;">
	<tr>
		<th>
			회원아이디
		</th>
		<th>
			비번
		</th>
		<th>
			회원이름
		</th>
		<th>
			이메일
		</th>
		<th>
			연락처
		</th>
	</tr>
<%
	while(rs.next()) {
%>
<tr>
	<td>
	<%= rs.getString("p_id") %>
	</td>
	<td>
	<%= rs.getString("p_pw") %>
	</td>
	<td>
	<%= rs.getString("c_name") %>
	</td>
	<td>
	<%= rs.getString("c_email") %>
	</td>
	<td>
	<%= rs.getString("c_tel") %>
	</td>
</tr>
<% 
	}
%>
</table>
</body>
</html>