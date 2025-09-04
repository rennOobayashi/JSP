<%@page import="org.apache.catalina.connector.Response"%>
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
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	<%!
		int Operation(int x, int y, int z) {
			switch(z) {
				case 0: return x + y;
				case 1: return x - y;
				case 2: return x * y;
				case 3: return x / y;
				default: return 0;
			}
		}
	
	%>
	
	<h1>Result Four Operation</h1>
	<h3>
		<%=num1 %> + <%=num2 %> = <%=Operation(num1, num2, 0) %> <br>
		<%=num1 %> - <%=num2 %> = <%=Operation(num1, num2, 1) %> <br>
		<%=num1 %> * <%=num2 %> = <%=Operation(num1, num2, 2) %> <br>
		<%=num1 %> / <%=num2 %> = <%=Operation(num1, num2, 3) %> <br>
	</h3>
</body>
</html>