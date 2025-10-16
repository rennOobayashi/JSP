<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="name" value="hong" scope="request" /> 
	<c:set var="gender" value="male" scope="request" /> 
	<c:set var="age" value="25" scope="request" /> > 
	<c:set var="array" value="<%= new int[] {1, 2, 3, 4, 5} %>" scope="request" /> 
	
	<jsp:forward page="JTSLResult.jsp" />
</body>
</html>