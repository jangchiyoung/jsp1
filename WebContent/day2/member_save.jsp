<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[7]</title>
</head>
<body>
<!-- 이 파일에서는 사용자 정보를 전달 받아서 화면에 출력. 그리고 이후에는 데이터베이스에 데이터를 저장합니다. -->
<%
	//서버에서 데이터 처리를 위한 자바코드
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
%>
<h3>환영합니다. WELCOME!!!</h3>
<ul>
	<li>이름 : <%= name %></li>
	<li>비밀번호 : <%= password %></li>
	<li>이메일 : <%= email %></li>
	<li>나이 : <%= age %>세</li>
	<li>주소 : <%= address %></li>
	<li>성별 : <%= gender.equals("male")?"남":"여" %></li>
	<li>취미 : <%= Arrays.toString(hobby) %></li>
</ul>
</body>
</html>