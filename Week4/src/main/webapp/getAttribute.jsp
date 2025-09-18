<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>jsp:forward get Attribute use request setAttribute</h3>
	
	<%
		String ID = (String)request.getAttribute("id");
		String password = (String)request.getAttribute("password");
		String name = (String)request.getAttribute("name");
		String address = (String)request.getAttribute("address");
	%>
	
	<ul>
		<li>ID = <%= ID %></li>
		<li>Password = <%= password %></li>
		<li>Name = <%= name %></li>
		<li>Address = <%= address %></li>
		<li>Email = <%= request.getAttribute("email") %></li>
	</ul>
</body>
</html>