<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%
  	//?myname=홍길동&myage=20&color=빨강&hobby=영화&content=어쩌구저쩌구
  	request.setCharacterEncoding("UTF-8");
  	String myname =  request.getParameter("myname");
  	String myage =  request.getParameter("myage");
  	String color =  request.getParameter("color");
  	String [] hobby=  request.getParameterValues("hobby");
  	String content=  request.getParameter("content");
  	
  	out.print("<h1>이름:"+myname+"</h1>");
  	
  	
  %>
  	<h1>나이:<%= myname%></h1>
  	<h1>색:<%= color%></h1>
  	
  <%
  	for(String h: hobby)
  	{
  		out.print("<h1>취미:"+h+"</h1>");
  	}
  %>
  
  <h1>요청사항:<%= content%></h1>
  
  