<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day5.dao.MybatisDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day6- Mybatis 테스트</title>
</head>
<body>
<%
	MybatisDao dao = MybatisDao.getInstance();

	List<Customer> list = dao.selectAll();
	out.print("<h4> select * from customer</h4>");
	out.print(list);
	
	Customer cus = dao.selectOne(3);
	out.print("<h4> select * from customer where idx=7</h4>");
	out.print(cus);
	
	out.print("<h4> insert into customer</h4>");
	int result = dao.insert(new Customer(0,"세리박","1111",
			"seri@daum.net",null,"female",0,"피아노"));
	out.print(result);
%>

</body>
</html>