<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		public int sum(int x, int y, boolean even) {
			int total = 0;
			
			for (int i = x; i <= y; ++i) {
				if (even && i % 2 == 0) {
					total += i;
					continue;
				}
				else if (!even && i % 2 != 0) {
					total += i;
				}
			}
			
			return total;
		}
	%>
	<h1> 1 ~ 100 </h1>
	<h2> Odd </h2>
	<h3><%= sum(1, 100, false) %> </h3>
	
	<h2> Even </h2>
	<h3> <%= sum(1, 100, true) %> </h3>
	
	<h2> Total </h2>
	<h3> <%= sum(1, 100, false) + sum(1, 100, true) %> </h3>
</body>
</html>