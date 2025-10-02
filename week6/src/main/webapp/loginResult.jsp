<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Login Result</h2>
	${ empty sessionScope.id ? "Wrong id" : "Welcome " += sessionScope.id += "!" } <br>
	
	<button onclick="location.href='logout.jsp'">Logout</button>
</body>
</html>