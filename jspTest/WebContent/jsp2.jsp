<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--scope="session": 오브젝트가 세션동안 유지됨  -->
<jsp:useBean id="myobj" class="jspTest.MyTest" scope="session"></jsp:useBean>

<h1><%= myobj.getData() %></h1>

<h1><jsp:setProperty property="data" name="myobj"/></h1>