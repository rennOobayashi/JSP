<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> curaianto to sa-va- zohou </h2>
	<h3> curaianto   <%= request.getRemoteAddr() %> <br>
	request encoding <%= request.getCharacterEncoding() %><br>
	request protocol <%= request.getProtocol() %><br>
	request method   <%= request.getMethod() %><br>
	request URL      <%= request.getRequestURL() %><br>
	server name      <%= request.getServerName() %><br>
	server port      <%= request.getServerPort() %><br></h3>
</body>
</html>