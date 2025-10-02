<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>EL Operator Result</h2>
	x = ${ param.num1 }, y = ${ param.num2 } <br>
	x + y = ${ param.num1 + param.num2 } <br>
	x - y = ${ param.num1 - param.num2 } <br>
	x * y = ${ param.num1 * param.num2 } <br>
	x / y = ${ param.num1 / param.num2 } <br>
	x % y = ${ param.num1 % param.num2 } <br>
	<hr>
	
	if (x > 0 && y > 0) ${ param.num1 > 0 && param.num2 > 0 } <br>
	if (x == y) ${ param.num1 == param.num2 } <br>
	<hr>
	
	${ var = "admin" } <br>
	${strArr = ["A", "B", "C"]; '' } <br>
	<hr>
	
	${var == "admin" } <br>
	${ strArr[0] += strArr[1] += strArr[2] } <br>

</body>
</html>