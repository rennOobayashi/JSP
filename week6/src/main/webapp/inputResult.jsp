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
		//			Object type
		int num1 = (int)request.getAttribute("num1");
		int num2 = (int)request.getAttribute("num2");
		int sum = (int)request.getAttribute("sum");
	%>
	<h2>Result</h2>
	
	Start: <%= num1 %>
	End: <%= num1 %>
	Result: <%= sum %>
</body>
</html>