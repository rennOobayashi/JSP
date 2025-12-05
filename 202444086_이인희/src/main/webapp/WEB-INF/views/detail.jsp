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
	<form action="/infoDetails/insert/${ information.id }/${ subTitle }">
		<h2>${ subTitle }</h2>
		<hr>
		내용 : <br>
		<textarea rows="5" cols="40" name="content" required="required">${ not empty information.details.content ? information.details.content : "None" }</textarea> <br>
		<c:if test="${ empty information.details.content }">
			<input class="btn btn-primary" type="submit" value="내용 등록">
		</c:if>
		<c:if test="${ not empty information.details.content }">
			<input class="btn btn-primary" type="submit" value="내용 수정">
		</c:if>
	</form>
	<br>
	<br>
	<button class="btn btn-primary" style="margin-left: 10px" onclick="location.href='/viewList'">목록</button>
</body>
</html>