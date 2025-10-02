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
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		int sum = 0;
		
		if (num1 < num2) {
			for (int i = num1; i <= num2; ++i) {
				sum += i;
			}
		}
		else {
			sum = num1;
		}
		
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("sum", sum);
	%>
	
	<%-- <jsp:forward page="inputResult.jsp" /> --%>
	<jsp:forward page="inputResult2.jsp" />
</body>
</html>