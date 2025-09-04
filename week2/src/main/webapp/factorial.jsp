<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		int factorial(int x) {
			if (x == 1) {
				return x;
			}
			
			return x * factorial(x - 1);
		}
	%>
	
	<h2> Factorial </h2>
	<h3> 4! = <%= factorial(4) %> </h3>
</body>
</html>