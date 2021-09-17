<%@page import="java.sql.Connection"%>
<%@page import="util.MySQLConnectionUtil"%>
<%@page import="com.mysql.cj.MysqlConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3 [1]- db test</title>
</head>
<body>
<h4>MySQL 연결 테스트</h4>
<hr>
db 연결은?
<%
	Connection connection = MySQLConnectionUtil.connect();
	out.print(connection);
	if(connection == null) out.print("연결 실패했습니다.");
	else out.print("연결 성공 했습니다.");
%>
</body>
</html>