<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
   <<<c:set var ="name" value="이순신" />
   <<<c:set var ="age" value="20" />
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--print  -->
<h1><c:out value= "${name}"/></h1>
<h1><c:out value= "${age}"/></h1>

<!--if문: esle if 없고 if만 있음.  -->
<c:if test="${name == '콩길동' }">
	<h1>이순신입니다</h1>
	</c:if>

<%-- eq는  ==와 같은 쓰임 --%>
<c:if test="${name eq '이순신' }"> 
	<h1>이순신입니다</h1>
	</c:if>

<%-- choose: switch와 비슷 --%>
<c:choose>
    <c:when test="${name=='홍길동'}">
        <h1>길동이...</h1>
        </c:when>
    <c:when test="${name=='이순신'}">
    <h1>순신이...</h1>
    </c:when>
    <c:otherwise>
        <h1>기타...</h1>
         </c:otherwise>
</body>
</html>