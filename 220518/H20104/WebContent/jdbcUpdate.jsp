<%@page import="com.web.JdbcUtil"%>
<%@page import="java.sql.PreparedStatement"%>
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
	Connection conn = null;
	PreparedStatement pstmt = null;
	int n = 0;
	
	// 1. driver loading, DB 연결
	conn = JdbcUtil.getConnection();
	
	// 2. SQL문 실행
	pstmt = conn.prepareStatement("UPDATE test SET pwd = ? WHERE id = 'dd'");
	pstmt.setString(1, "100");
	n = pstmt.executeUpdate();
	
	if(n>0) 
		out.print("test 테이블 - update 성공");
	else 
		out.print("test 테이블 - update 실패");
	
	// 3. 자원 해제
	JdbcUtil.close(conn, pstmt);
	
	
%>
</body>
</html>