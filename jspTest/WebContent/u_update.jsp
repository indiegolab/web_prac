<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<sql:setDataSource
	url= "jdbc:oracle:thin:@10.10.35.46:1521:prod"
	driver= "oracle.jdbc.driver.OracleDriver"
	user= "scott"
	password="tiger"
	var="ds"
	/>
	
<sql:update var="insertStd" dataSource="${ds }">
	insert into student values(?,?,?)
	
	<sql:param value="${param.myname}"></sql:param>
	<sql:param value="${param.myage}"></sql:param>
	<sql:param value="${param.mybirth}"></sql:param>
</sql:update>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>추가된 개수:<c:out value="${insertStd }"></c:out></h1>

</body>
</html>