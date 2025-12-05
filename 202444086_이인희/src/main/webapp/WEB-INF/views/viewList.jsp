<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <style>
    		.container {
    			display: flex;
    			gap: 20px;
    			flex-wrap: wrap;
    			margin: 10px;
    			border: 5px;
    			
    			align-items: flex-start;
    		}
	  	.box {
		    margin-left: 20px;
		    width: 250px; 
		    min-height: 300px;
		    vertical-align: top;
		    border-radius: 25px; 
		    border: 1px solid black;
		    background-color: white;
		}
    </style>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    
	<h2>목록</h2>
	<button class="btn btn-primary" style="margin-left: 10px" onclick="location.href='/'">홈</button>
	<button class="btn btn-primary" style="margin-left: 10px" onclick="location.href='information/insertForm'">새로운 정보 추가</button>
	<div class="container">
		<c:forEach var="info" items="${information}">
				<div class="box"> 
					<div style="margin: 15px; border: 10px;">
						<a href="/information/updateForm/${info.id}" style="font-size: 14px;"> ${ info.title } </a>
						<hr>
						
						<c:if test="${ not empty info.subTitles }">
								<c:forEach var="subTitle" items="${ info.subTitles.split(' ') }" varStatus="status">
									<c:if test="${ status.index == 5 }">
										<hr>
										<details>
											<summary> 더보기 </summary>
										<hr>
									</c:if>
									
									<a href="/information/details/${info.id}/${subTitle}"> ${ subTitle } </a> <br>
									
									<c:if test="${ status.last and status.index >= 5 }">
										</details>
									</c:if>
								</c:forEach>
						</c:if>
					</div>
				</div>
		</c:forEach>
	</div>
</body>
</html>