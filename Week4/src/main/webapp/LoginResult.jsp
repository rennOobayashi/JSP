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
	<h3> <%= request.getAttribute("msg") %> </h3>
	<br><br>
	
	<form action="LoginForm.jsp">
		<input type="submit" value="Go back to Login form">
	</form>
</body>
</html>