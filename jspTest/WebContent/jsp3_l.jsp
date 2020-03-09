  <%@page import="jspTest.StudentModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="stdDB" class="jspTest.StudentDBHandle"></jsp:useBean>

<%
	//String rst=  stdDB.insertStudent("유영근", 26, "1995-11-12");
	//out.print("<h1>"+rst+"</h1>");
	ArrayList<StudentModel> arr;
	arr = stdDB.selectStudent();
	
	%>
	
<table>
	<tr>
    <th>이름</th>
    <th>나이</th>
    <th>생일</th>
</tr>



<%
	for(StudentModel std: arr){
		out.print("<tr><td>"+std.getName()+"</td><td>"+std.getAge()+"</td><td>"+std.getBirth()+"</td></tr>");
	};
	%>
	</table>
	
	