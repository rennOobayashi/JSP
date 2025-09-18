<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>kono page ha from.jsp desu.</h2>
	<jsp:forward page="To.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value="0000" name="password"/>
		<jsp:param value="DK" name="name"/>
		<jsp:param value="DDD DDD DDDDDDD" name="address"/>
		<jsp:param value="kt@zako.kr" name="email"/>		
	</jsp:forward>
	
	<h3>Mada From.jsp desu.</h3>
</body>
</html>