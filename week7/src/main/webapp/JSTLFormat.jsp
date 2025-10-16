<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="date" value="<%= new Date() %>" />
	[Date format (today)] <fmt:formatDate value="${date}"/> <br>
	[Date format (hour)] <fmt:formatDate value="${date}" type="time" /> <br>
	[Date format (today with pattern)] <fmt:formatDate value="${date}" type="date" pattern="yyyy/MM/dd(E)" /> <br>
	[Date format (today with pattern)] <fmt:formatDate value="${date}" type="time" pattern="(a)hh-mm-ss" /> <br>
	<hr>
	
	[Date format (today)] <fmt:formatNumber value="100000000" type="currency" currencySymbol="$"/> <br>
	<hr>
	
	<fmt:setLocale value="en" />
	Change Locale (en)
	[Date format (today)] <fmt:formatDate value="${date}"/> <br>
	[Date format (hour)] <fmt:formatDate value="${date}" type="time" /> <br>
	[Date format (today with pattern)] <fmt:formatDate value="${date}" type="date" pattern="yyyy/MM/dd(E)" /> <br>
	[Date format (today with pattern)] <fmt:formatDate value="${date}" type="time" pattern="(a)hh-mm-ss" /> <br>
	<hr>
	
	<fmt:setLocale value="ja_jp" />
	Change Locale (ja_jp)
	[Date format (today)] <fmt:formatDate value="${date}"/> <br>
	[Date format (hour)] <fmt:formatDate value="${date}" type="time" /> <br>
	[Date format (today with pattern)] <fmt:formatDate value="${date}" type="date" pattern="yyyy/MM/dd(E)" /> <br>
	[Date format (today with pattern)] <fmt:formatDate value="${date}" type="time" pattern="(a)hh-mm-ss" /> <br>

</body>
</html>