<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- sum 1 ~ 100 -->
	<!-- Scriplet -->
	<% 
		int total = 0;
		for (int i = 1; i <= 100; ++i) {
			total += i;
		}
	%>
	
	<!-- Declaration -->
	<%!
		public int sum(int x, int y) {
		return x + y;
	}
	%>
	
	<!-- use Expression -->
	<h3> sum 1 ~ 100 is <%=total %></h3>
	
	<h2> sum two num </h2>
	<h3>10 + 15 = <%=sum(10, 15) %></h3>
</body>
</html>