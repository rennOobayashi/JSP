<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	<!-- Main target = Collection (like list, map) -->
	
	<%
		Map<String, Object> mapData = new HashMap<>();
		mapData.put("ID", "admin");
		mapData.put("today", new Date());
		mapData.put("age", 25);
	%>
	
	<c:set var="map" value="<%= mapData %>"/>
	
	<c:forEach var="m" items="${map}">
		${m.key} : ${m.value} <br>
	</c:forEach>
	<hr>
	
	<ul>
		<c:forEach var="num" begin="1" end="9">
			<li> 7 * ${num } = ${7 * num} <br> </li>
		</c:forEach>
	</ul>
	<hr>
	
	<h3>ForTokens Tag</h3>
	Split by , and . <br>
	<c:forTokens items="Super,Mario.Bros.the,Movie" delims=",." var="token">
		${token} <br>
	</c:forTokens>
</body>
</html>