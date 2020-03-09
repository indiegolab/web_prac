<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
  <jsp:useBean id="myAddr" class="jspTest.Address">
  	<jsp:setProperty property="*" name="myAddr" />
  </jsp:useBean>
  
  <h1><jsp:getProperty property="myname" name="myAddr"/></h1>
  <h1><%= myAddr.getMyphone() %></h1>
  
  
  