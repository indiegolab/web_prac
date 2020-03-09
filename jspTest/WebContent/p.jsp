<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
    
    
  <%
  // request, session, application 3가지 방법 살펴보기.
  // session을 제일 많이 씀.
  	/* request.setAttribute("k1", "test");
  	request.setAttribute("k2", 100); */
  
  	//response.sendRedirect("q.jsp");
 	
	/* session.setAttribute("k1", "session test");
  	session.setAttribute("k2", 200); */
  	application.setAttribute("k1", "applicationtest");
  	application.setAttribute("k2", 200);
  	out.print("p.jsp");
  	%>
  <%-- 
  <jsp:forward page="q.jsp"></jsp:forward> --%>
 