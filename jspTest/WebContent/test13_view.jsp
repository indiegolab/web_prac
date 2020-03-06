  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@ page import="java.sql.*" %>

  <%
  	//?myname=홍길동&myage=20&color=빨강&hobby=영화&content=어쩌구저쩌구
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
   		String sql="select * from student";
   		conn =DriverManager.getConnection(oracleURL, id, pass);
   		stmt = conn.createStatement();
   		rs = stmt.executeQuery(sql); 	// resultset 반환
   		
   		while(rs.next()){
   			String name=  rs.getString("name");
   			int age = rs.getInt("age");
   			Date birth=  rs.getDate("birth");
   			out.print("<h1>"+name+age+birth+"</h1>");
   		}
   		rs.close();
   	}
   	catch(Exception ex){
   		out.print(ex.getMessage());
   	}
   %>