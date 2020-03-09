<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import = "jspTest.Bimando" %>
<jsp:useBean id="mybiman" class="jspTest.Bimando">
<jsp:setProperty property="*" name="mybiman"/> <!-- SetMyname, SetMyphone에 넘어온 파라미터 넘어온 값이 객체에 할당된다(단, html파일의 id와 클래스 파일의 멤버 변수 개수와 이름이 똑같아야한다) -->
</jsp:useBean>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		text-align:center;
	}
</style>
</head>
<body>
	<fieldset>
	<div>
		키: <%= mybiman.getHeight() %><br>
		몸무게: <%= mybiman.getWeight() %><br>
		결과 : <%= mybiman.result(mybiman.getHeight(), mybiman.getWeight()) %>
	</div>
	</fieldset>
	<div>
	<fieldset>
		<div></div><img src="<%=mybiman.fn(mybiman.getHeight(), mybiman.getWeight())%>"></img><div></div>
	</fieldset>
	</div>
</body>
</html> 