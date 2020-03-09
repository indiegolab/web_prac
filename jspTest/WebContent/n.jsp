<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:forward page="a.html"></jsp:forward>
<!--a.html로 forward함.  -->


<%
	response.sendRedirect("a.html");
%>

