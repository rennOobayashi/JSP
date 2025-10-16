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
	<h3>Choose Tag Exam</h3>
	
	<ul>
		<c:choose>
			<c:when test="${param.name == 'hong'}">
				<li> Your name is ${param.name} </li>
			</c:when>
			<c:when test="${param.age >= 20}">
				<li> adult </li>
			</c:when>
			<c:otherwise>
				<li> kodomo </li>
			</c:otherwise>
		</c:choose>
	</ul>
</body>
</html>