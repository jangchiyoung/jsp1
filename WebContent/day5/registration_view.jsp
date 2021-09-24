<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[3] - db 회원 등록</title>
<style>
	ul{
		list-style: none;
		padding-inline-start:0px;  /* 목록 들여쓰기 없애기 */
	}
	ul #name{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: tomato;
		color:white;
	}
	li {
		padding : 5px  20px;
	}
</style>
</head>
<body>
<h3>환영합니다. WELCOME!!!</h3>
<ul>
	<li id="name">이름 : ${cus.name} 님</li>
	<li>비밀번호 : ${cus.password}</li>
	<li>이메일 : ${cus.email}</li>
	<li>나이 : ${cus.age}세</li>
	<li>주소 : ${cus.address}</li>
	<li>성별 : ${cus.gender.equals("male")?"남":"여"}</li>
	<li>취미 : ${cus.hobby}</li>
</ul>
<a href = "update.jsp?idx=${cus.idx}">정보 수정</a>
</body>
</html>