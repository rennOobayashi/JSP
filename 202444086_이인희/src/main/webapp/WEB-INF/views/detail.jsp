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
	<h2>content detail</h2>
	
	title : ${question.subject } <br>
	content : ${ question.content } <br>
	createDate : <fmt:formatDate value="${ question.createDate }" type="date" pattern="yyyy-MM-dd" /> <br>
	<c:if test="${ question.answerList.size() > 0}">
		<h4>Have ${ question.answerList.size() } Answers!</h4>
		<div>
			<ul>
				<c:forEach var="answer" items="${ question.answerList }">
					<li> ${ answer.content }</li>
				</c:forEach>
			</ul>
		</div>
	</c:if>
	
	<form action="/answer/insert/${ question.id }">
		<textarea rows="5" cols="40" name="content" required="required"></textarea> <br>
		<input type="submit" value="Regist Answer">
	</form>
	<br>
	<br>
	<button onclick="location.href='/question/updateForm/${question.id}'">Update</button>
	<button onclick="location.href='/question/deleteForm/${question.id}'">Delete</button>
	<button onclick="location.href='/question/viewList'">viewList</button>
</body>
</html>