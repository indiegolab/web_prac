<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	h1{
	color:red;
	}
</style>
</head>
<body>

<!-- include 지시어를 쓰거나 액션태그를 쓰거나. 
	header.jsp 불러와서 추가할 수 있음. -->
	
<%@ include file = "template/header.jsp" %>
<%-- <jsp:include page="template/header.jsp" /> --%>
<%@ include file = "template/menu.jsp" %>

<h3>여기는 컨텐츠입니다.</h3>
<h4>여기는 푸터입니다.</h4>

</body>
</html>