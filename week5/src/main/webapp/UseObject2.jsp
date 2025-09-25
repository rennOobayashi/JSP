<%@page import="week5.MemberInfo"%>
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
		MemberInfo member = (MemberInfo)request.getAttribute("member");
	%>
	
	namae2: <%= member.getName() %> 
	(<%= member.getId() %>) <br>
	email2: <%= member.getEmail() %> <br>
</body>
</html>