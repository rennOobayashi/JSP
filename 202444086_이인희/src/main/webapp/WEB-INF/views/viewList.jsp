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
	<button onclick="location.href='information/insertForm'">새로운 정보 추가</button>
		<c:forEach var="info" items="${information}">
		<div style="width: 250px; height: 300px; border-radius: 25px; border: 1px solid black;">
			${ info.title } <br>
			<hr>
			
			<c:forEach var="subTitle" items="${ info.subTitles.split(' ') }">
				<a href="/question/detail/${info.id}"> ${ subTitle } </a> <br>
			</c:forEach>
		</div>
		</c:forEach>
</body>
</html>