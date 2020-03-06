  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%@ page import="java.sql.*" %>

  <%
  	//?myname=홍길동&myage=20&color=빨강&hobby=영화&content=어쩌구저쩌구
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
	CallableStatement cstmt = null;
   	
   	try{
   		String sql = "{call insertpro(?,?,?)}";
		   
   		//String sql = String.format("insert into student values('%s','%s','%s')",myname ,myage,mybirth);
   		//String sql = "insert into student values(?,?,?)";  	// prepared statement
   		//String sql = "delete from student where age=?";
   		//String sql = "update student set name=?, age=? where age=?";
   		//String sql="select * from student";
   		conn =DriverManager.getConnection(oracleURL, id, pass);
   		cstmt=conn.prepareCall(sql);
   		
   		cpstmt.setString(1,"김홍도");
   		cpstmt.setInt(2,55);
   		cstmt.setString(3,"1991-11-12");
   		cstmt.execute();
   		//stmt = conn.createStatement();
   		//stmt.execute(sql);
   		//stmt.excuteUpdate(sql)  // insert,delete,update 적용갯수 반환
   		//rs = stmt.executeQuery(sql); 	// resultset 반환
   		
   		/*while(rs.next()){
   			String name=  rs.getString("name");
   			int age = rs.getInt("age");
   			Date birth=  rs.getDate("birth");
   			out.print("<h1>"+name+age+birth+"</h1>");
   		}
   		rs.close();*/
   		out.print("정상처리 ");
   	}
   	catch(Exception ex){
   		out.print(ex.getMessage());
   	}
   %>