  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@ page import="java.sql.*" %>

  <%
  	request.setCharacterEncoding("UTF-8");
  	String myname =  request.getParameter("myname");
  	String myage =  request.getParameter("myage");
  	String mybirth =  request.getParameter("mybirth");
  	
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
   		//String sql = String.format("insert into student values('%s','%s','%s')",myname ,myage,mybirth);
   		//String sql = "insert into student values(?,?,?)";  	// prepared statement
   		//String sql = "delete from student where age=?";
   		//String sql = "update student set name=?, age=? where age=?";
   		String sql="select * from student";
   		conn =DriverManager.getConnection(oracleURL, id, pass);
   		//pstmt = conn.prepareStatement(sql);
   		
   		//1,2,3 입력하기
   		//pstmt.setString(1,"삼순신");
   		//pstmt.setInt(2,23);
   		//pstmt.setString(3,"1991-11-12");
   		
   		//pstmt.setInt(1,20);
   		
   		//pstmt.setString(1, "김철수");
   		//pstmt.setInt(2,55);
   		//pstmt.setInt(3,15);
   		
   		//pstmt.execute();
   		stmt = conn.createStatement();
   		//stmt.execute(sql);
   		//stmt.excuteUpdate(sql)  // insert,delete,update 적용갯수 반환
   		rs = stmt.executeQuery(sql); 	// resultset 반환
   		
   		while(rs.next()){
   			String name=  rs.getString("name");
   			int age = rs.getInt("age");
   			Date birth=  rs.getDate("birth");
   			out.print("<h1>"+name+age+birth+"</h1>");
   		}
   		rs.close();
   		//out.print("정상처리 ");
   	}
   	catch(Exception ex){
   		out.print(ex.getMessage());
   	}
   %>