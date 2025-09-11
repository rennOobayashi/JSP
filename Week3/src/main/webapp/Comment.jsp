<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HTML comment  -->
	
	<%
		/* multi 1 ~ 10 */
		int result = 1;
	
		for (int i = 2; i <= 10; ++i) {
			result *= i;
		}
	%>
	
	<h1> kekkaha <%-- <%= result %> --%> desu </h1>
</body>
</html>