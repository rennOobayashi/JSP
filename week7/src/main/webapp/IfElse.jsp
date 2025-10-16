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
		int[] list = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
		
		if(list.length > 0) {
			for (int a : list) {
				out.print(a + " ");
			}
		}
		else {
			out.print("Empty.");
		}
		out.println();
	%>
</body>
</html>