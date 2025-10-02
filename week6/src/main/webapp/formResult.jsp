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
	
	<p> Name: ${ empty param.name ? "Guest" : param.name } </p>
	
	<p> ${ age = empty param.age ? 0 : param.age; '' }
		Age: ${ age }(${ age >= 20 ? "Adult" : "kodomo" }) </p>
	
	<p> Email: ${ empty param.email ? "guest@local" : param.email} </p>
	
	<p>Method: ${ pageContext.request.method }</p>
</body>
</html>