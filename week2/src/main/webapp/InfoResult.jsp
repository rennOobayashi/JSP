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
		//use request
		String name = request.getParameter("Name");
		String address = request.getParameter("Address");
	%>
	
	<h3><%=name %> is living <%=address %> now.</h3>
</body>
</html>