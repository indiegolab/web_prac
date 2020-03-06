<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	String s1 ="hi...";
	s1 = s1+s2;
%>

<%!
// 선언문을 우선 처리함.
	String s2 = "hello";
%>

<%!
	//!: 변수 함수 선언하는 부분
	// %만 있는 곳: 실행부
	//%= 변수 함수 호출할 때
	// @는 맨 위에만 씀
	
	String fn(){
	return "hello";
	
}
%>


 <%
 //Jsp Writer 클래스 객체 out
	 String s ="hi";
	 out.print("Hello jsp");
	 out.print(s);
 %>
 
 <h1> test<%=s1 %> </h1> 
 
 
 
 