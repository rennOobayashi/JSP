<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat sdfTime = new SimpleDateFormat("hh시 mm분 ss초");
		
		String dateStr = sdfDate.format(date);
		String timeStr = sdfTime.format(date);
	%>
	<h1> imaha <%= dateStr %> <br>
	<%= timeStr %> </h1>
</body>
</html>