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
	
<sql:query var="rs" dataSource="${ds }">
	
	select *from student where age>=?
	<sql:param value="${sqlol }"></sql:param>
</sql:query>

<%-- <c:out value="${sqlo}"></c:out> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
	<tr>
	<th>이름</th>
	<th>나이</th>
	<th>생일</th></tr>
	<c:forEach var="std" items="${rs.rows}">
		<tr>
		<th>${std.name}</th>
		<th>${std.age}</th>
		<th><fmt:formatDate pattern="yyyy년MM월dd일" value="${std.birth}"/></th>
		</tr>
		</c:forEach>
	
	</table>

</body>
</html>