<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="proDB" class="jspExam3.productorDBHandler"></jsp:useBean>
<%
	String rst = proDB.selectProductor();
%>
<%@ include file="show_content.jsp"%>