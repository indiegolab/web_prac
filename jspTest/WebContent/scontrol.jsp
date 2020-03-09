<%@page import="java.util.ArrayList"%>
<%@page import="jspTest.Biman"%>
<%@page import="jspTest.StudentModel" %>
<%@page import="jspTest.stdModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String h = request.getParameter("height");	
	String w = request.getParameter("weight");	

	Biman biman = new Biman();
	biman.setHeight(h);
	biman.setWeight(w);
	biman.calcBiman();
	request.setAttribute("bimanObj", biman);
	
	// 하나하나 안 넘기고 객체만 넘겨줘도 됨.
	/* 
	request.setAttribute("h", biman.getHeight() );
	request.setAttribute("w", biman.getWeight() );
	request.setAttribute("result", biman.getStrResult() );
	 */
	 
	 
	 ArrayList<stdModel> arr = new ArrayList<stdModel>();
	
	 arr.add(new stdModel("신길동",30));
	 arr.add(new stdModel("신길동",30));
	 arr.add(new stdModel("신길동",30));
	 
	 ArrayList<StudentModel> arr1 = new ArrayList<StudentModel>();
	 
	 arr1.add(new StudentModel("홍길동",30,"1991-08-18"));
	 arr1.add(new StudentModel("콩길동",30,"1991-08-18"));
	 arr1.add(new StudentModel("퐁길동",30,"1991-08-18"));
	 
	 /*  arr.add("사과");
	 arr.add("딸기");
	 arr.add("포도"); */
	request.setAttribute("arr", arr);
	 
%>
<jsp:forward page="s.jsp"></jsp:forward>


