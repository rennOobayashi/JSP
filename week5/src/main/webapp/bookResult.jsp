<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="book" class="week5.Book" scope="request" />
	
	<h2>등록 도서</h2>
	<table border="1">
		<tr>
			<td style="background: lightgreen;"> 도서 코드 </td>
			<td style="background: lightgreen;"> 도서명 </td>
			<td style="background: lightgreen;"> 저자 </td>
			<td style="background: lightgreen;"> 등록일자 </td>
		</tr>
		<tr>
			<td> <jsp:getProperty property="code" name="book"/> </td>
			<td> <jsp:getProperty property="title" name="book"/> </td>
			<td> <jsp:getProperty property="writer" name="book"/> </td>
			<td> <jsp:getProperty property="pubDate" name="book"/> </td>
		</tr>
	</table>
</body>
</html>