<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "jspTest.BMI" %>

<jsp:useBean id="myobj" class="jspTest.BMI">
	<jsp:setProperty property="*" name="myobj"/>
</jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과</h1>
	<div>
		<h5>키 : <jsp:getProperty property="weight" name="myobj"/></h5>
		<h5>몸무게 : <jsp:getProperty property="height" name="myobj"/></h5>
		<h5>결과 : <%=myobj.checkBMI(myobj.getHeight(), myobj.getWeight())%></h5>
	</div>
	<div>
		<img src="<%=myobj.imgBMI(myobj.getHeight(), myobj.getWeight())%>">
	</div>
</body>
</html>
