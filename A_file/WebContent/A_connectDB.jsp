<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터베이스로 연결하기</title>
</head>

<body>

	 <H3>데이터베이스 연결 테스트</H3>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/jspdb?useSSL=false&serverTimezone=UTC", "jspbook", "0127");
		if (conn != null) {
			out.println("webdb 데이터베이스로 연결했습니다.<BR>");
			conn.close();
		out.println("webdb 데이터베이스로의 연결을 끊었습니다.<BR>");
			
		} else {
			out.println("webdb 데이터베이스로 연결할 수 없습니다.<BR>");
		}

	%>
</body>
</html>