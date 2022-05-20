<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 1. JDBC 드라이버 로딩하기
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2. DB 서버 접속하기
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	Connection conn = DriverManager.getConnection(url, "hr", "hr");
	
	// 3. Statement or PreparedStatement 객체 생성하기
	PreparedStatement pstmt = conn.prepareStatement("insert into test values(?, ?)");
	
	// 4. SQL 실행
	// 레코드 추가
	pstmt.setString(1, "dd");
	pstmt.setString(2, "44");
	pstmt.executeUpdate();
	
	// 5. 자원 해제
	pstmt.close();
	conn.close();
%>
</body>
</html>