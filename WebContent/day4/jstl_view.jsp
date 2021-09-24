<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day4[2] Jstl과 el로 list 가져오기</title>
</head>
<body>
<h3>고객 리스트 입니다.</h3>
<%-- ${list} --%>
<h3> 고객 리스트 WELCOME!!!</h3>
<c:forEach var="cus" items="${list}">
<ul>
	<li id="name"><a href="update.jsp?idx=${cus.idx}">
					${cus.name}</a> 님</li>
	<li id="email">${cus.email}</li>
	<li>${cus.age}세 (${cus.gender}) </li>
	<li>${cus.address}</li>
	<li id="hobby">${cus.hobby}</li>
</ul>
</c:forEach>
</body>
</html>