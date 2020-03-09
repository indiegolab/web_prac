<%@page import="com.sun.glass.ui.Pixels.Format"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="proDB" class="jspExam3.productorDBHandler"></jsp:useBean>
<%
	request.setCharacterEncoding("utf-8");
	proDB.insertProductor(request.getParameter("pname"), 
			request.getParameter("pcount"),
			request.getParameter("pdate"));
%>
<%@ include file="add_content.jsp"%>