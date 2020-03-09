<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr><th>도시</th><th>날짜</th><th>날씨</th><th>최저</th><th>최고</th></tr>
		<c:forEach var="w" items="${wArr}">
			<tr>
				<td>${w.city} </td>
				<td>${w.date}</td>
				<td>${w.weather}</td>
				<td>${w.min}</td>
				<td>${w.max}</td>
			</tr>
		</c:forEach>
	</table>	
</body>
</html>