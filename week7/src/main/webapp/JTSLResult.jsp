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
	<p>Name = ${name }</p>
	<p>Gender = ${gender }</p>
	<p>Age= ${age }</p>
	<hr>
	<a>
		<c:forEach var="data" items="${array }">
		${data } 
		</c:forEach>
	</a>
	
	<c:forEach var="data" items="${array}" begin="0" end="4" step="2">
		${data} 
	</c:forEach>
	
	<hr>
	Id : ${m.getId()} <br>
	name : ${m.name} <br>
	
	<h2>
	<c:if test="${m.id == m.password }">
		Login
	</c:if>
	<c:if test="${m.id != m.password}">
		Try again
	</c:if>
	</h2>
</body>
</html>