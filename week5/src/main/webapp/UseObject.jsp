<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="week5.MemberInfo" scope="request" />
	
	namae1: <jsp:getProperty property="name" name="member"/> 
	(<jsp:getProperty property="id" name="member"/>) <br>
	
	email1: <jsp:getProperty property="email" name="member" /> <br>
	
</body>
</html>