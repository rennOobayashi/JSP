<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>kono page ha To.jsp desu. </h2>
	<%
		String ID       = request.getParameter("id");
		String password = request.getParameter("password");
		String name     = request.getParameter("name");
		String address  = request.getParameter("address");
		String email    = request.getParameter("email");
	%>
	
	<h3>jsp:param action tag kekka</h3>
	<ul>
		<li>ID       - <%= ID %></li>
		<li>Password - <%= password %></li>
		<li>Name     - <%= name %></li>
		<li>Address  - <%= address %></li>
		<li>Email    - <%= email %></li>
	</ul>
</body>
</html>