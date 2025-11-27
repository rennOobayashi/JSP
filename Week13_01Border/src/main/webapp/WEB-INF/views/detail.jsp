<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>content detail</h2>
	
	title : ${question.subject } <br>
	content : ${ question.content } <br>
	createDate : <fmt:formatDate value="${ question.createDate }" type="date" pattern="yyyy-MM-dd" />
	
	<br>
	<br>
	<button onclick="location.href='/question/updateForm/${question.id}'">Update</button>
	<button onclick="location.href='/question/deleteForm/${question.id}'">Delete</button>
	<button onclick="location.href='/question/viewList'">viewList</button>
</body>
</html>