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
	<h1>키:<c:out value="${h}" /></h1>
	<h1>몸무게:<c:out value="${w}" /></h1>
	<h1>결과:<c:out value="${result}" /></h1>
	<img src=<c:out value="${rimg}"/> >
</body>
</html>