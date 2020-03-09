<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="myobj" class="jspTest.MyTest" scope="session"></jsp:useBean>
<jsp:setProperty property="data" name="myobj" value="testdata"/>
    
    <%
    //Mytest myobj = new MyTest(); 써도 되지만 대신에 액션태그 씀.
    //myobj.setData("testdata");
    out.print("<h1>"+myobj.helloFn()+"</h1>");
    out.print(myobj.getData());
    %>
    
    
<h1><%=myobj.helloFn() %></h1>

<!--액션 프러퍼티  -->
<h1><jsp:getProperty property="data" name="myobj"/></h1>

