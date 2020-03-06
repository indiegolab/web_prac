<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@ page import="java.sql.*" %>
    
   <% 
   	// 드라이버로딩
   	//데이터베이스 접속(ip port id password)
   	// sql
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
   	
   	try{
   		String sql="insert into student(name, age, birth) values('콩길동', 20, '2001-11-02')";
   		conn =DriverManager.getConnection(oracleURL, id, pass);
   		
   		stmt = conn.createStatement();
   		stmt.execute(sql);
   		out.print("정상처리 ");
   	}
   	catch(Exception ex){
   		out.print("접속실패 ");
   	}
   %>