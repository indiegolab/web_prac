<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	//데이터베이스접송 (ip port id password)
	out.print("<form action=\"fromsy.jsp\" >");
	out.print("제품명 :<input type=\"text\" name =\"pname\"><br>");
	out.print("수량 :<input type=\"number\" name =\"pcnt\"><br>");
	out.print("생산일 :<input type=\"date\" name =\"pdate\"><br>");
	out.print("<button>내용입력</button>");
	out.print("</form>");
	
	
	String pname = request.getParameter("pname");
	String pcnt = request.getParameter("pcnt");
	String pdate = request.getParameter("pdate");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	}catch(Exception ex)
	{
	}
	
	String oracleURL = "jdbc:oracle:thin:@10.10.35.46:1521:prod";
	String id = "scott";
	String pass = "tiger";
	
	Connection conn = null;
	Statement stmt = null;
	
	try{
		String sql = String.format("insert into product values('%s',%s,'%s')",pname,pcnt,pdate);
		conn = DriverManager.getConnection(oracleURL,id,pass);
		stmt = conn.createStatement();
		stmt.execute(sql);
	}catch(Exception ex)
	{  }

%>