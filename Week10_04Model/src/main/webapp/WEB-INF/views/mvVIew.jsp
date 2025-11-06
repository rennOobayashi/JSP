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
	<h2>Ur name is ${ name }, age is ${ age }</h2>
	<h2> ${ lists }</h2>
	<ul>
		<c:forEach var="myList" items="${ lists }">
			<li>${ myList } </li>
		</c:forEach>
	</ul>
</body>
</html>