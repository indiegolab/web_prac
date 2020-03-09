<%@page import="jspTest.Biman"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Biman biman = new Biman();
	biman.setHeight("170");
	biman.setWeight("90");
	biman.calcBiman();
	request.setAttribute("h", biman.getHeight() );
	request.setAttribute("w", biman.getWeight() );
	request.setAttribute("result", biman.getStrResult() );
	request.setAttribute("rimg", biman.getStrImage() );
	
%>
<jsp:forward page="s.jsp"></jsp:forward>