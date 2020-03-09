<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
try{
	String k1 = (String)application.getAttribute("k1");
	int k2 = (int)application.getAttribute("k2");
	out.print(" k1= "+k1);
	out.print(" k2= "+k2);}
catch(Exception ex){
	out.print("에러: "+ex.getMessage());
}
	
%>

