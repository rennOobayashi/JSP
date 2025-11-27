<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Question Table</h2>
	
	<table border="1" cellpadding="10">
		<tr>
			<td>ID</td>
			<td>Subject</td>
			<td>Create Date</td>
		</tr>
		<c:forEach var="q" items="${list}">
			<tr>
				<td> ${ q.id } </td>
				<td> <a href="/question/detail/${q.id}">${ q.subject } </a> </td>
				
				<td> <fmt:formatDate value="${ q.createDate }" type="date" pattern="yyyy-MM-dd" /> </td>
			</tr>
		</c:forEach>
	</table>
	<button onclick="location.href='insertForm'">Back to Register</button>
</body>
</html>