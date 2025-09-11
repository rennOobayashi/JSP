<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Request header info </h2>
	
	<%
		Enumeration hEnums = request.getHeaderNames();
		
		while (hEnums.hasMoreElements()) {
			String hName = (String)hEnums.nextElement();
			String hValue = request.getHeader(hName);
			
			out.println(hName + " = " + hValue + "<br>");
		}
	%>
</body>
</html>