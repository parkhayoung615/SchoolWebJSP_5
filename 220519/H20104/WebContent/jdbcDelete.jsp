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
	
	// 1. Driver Loading, DB 연결
	conn = JdbcUtil.getConnection();
	
	// 2. SQL문 실행
	pstmt = conn.prepareStatement("DELETE FROM test WHERE id='cc'");
	n = pstmt.executeUpdate();

	if(n > 0)
		out.print("test DB - delete 성공");
	else
		out.print("test DB - delete 실패");
	
	// 3. 자원 해제
	JdbcUtil.close(conn, pstmt);
%>
</body>
</html>