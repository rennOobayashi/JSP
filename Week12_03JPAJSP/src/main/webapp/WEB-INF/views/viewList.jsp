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
	<h2>Question Table</h2>
	
	<table border="1">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Address</td>
			<td>Create Date</td>
		</tr>
		<c:forEach var="q" items="${questions}">
			<tr>
				<td> ${ q.id } </td>
				<td> ${ q.subject } </td>
				<td> ${ q.content } </td>
				<td> ${ q.createDate } </td>
			</tr>
		</c:forEach>
	</table>
	
	<button onclick="location.href='insertForm'">Back to Register</button>
</body>
</html>