  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@ page import="java.sql.*" %>

  <%
  	request.setCharacterEncoding("UTF-8");
  	String pname =  request.getParameter("pname");
  	String pcnt =  request.getParameter("pcnt");
  	String pdate =  request.getParameter("pdate");
  	
   	try{
   		Class.forName("oracle.jdbc.driver.OracleDriver");
   		out.print("드라이버 로딩 성공 ");
   	}

   	catch(Exception ex){
   		out.print("드라이버 로딩 실패 ");
   	}
   
   	String oracleURL = "jdbc:oracle:thin:@10.10.35.46:1521:prod";
   	String id = "scott";
   	String pass="tiger";
   	
   	Connection conn = null;
   	Statement stmt = null;
   	PreparedStatement pstmt =null;
   	ResultSet rs = null;
   	
   	try{
   	String sql = String.format("insert into product values('%s',%s,'%s')", pname , pcnt, pdate);
   		conn =DriverManager.getConnection(oracleURL, id, pass);
   		
   		stmt = conn.createStatement();
   		stmt.execute(sql);
   		
   		out.print("추가 완료 ");
   	}
   	catch(Exception ex){
   		out.print(ex.getMessage());
   	}
   %>