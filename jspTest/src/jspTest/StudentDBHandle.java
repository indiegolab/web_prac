package jspTest;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;


public class StudentDBHandle {

	String oracleURL = "jdbc:oracle:thin:@10.10.35.46:1521:prod";
   	String id = "scott";
   	String pass="tiger";

   	Connection conn = null;
   	Statement stmt = null;
   	PreparedStatement pstmt =null;
   	ResultSet rs = null;
	CallableStatement cstmt = null;
	
	
	public StudentDBHandle() {
		try{
	   		Class.forName("oracle.jdbc.driver.OracleDriver");
	   		System.out.print("드라이버 로딩 성공 ");
	   		dbConnect();
	   	}

	   	catch(Exception ex){
	   		System.out.print("드라이버 로딩 실패 ");
	   	}
	}
		
		public void dbConnect() {
		try {
			conn =DriverManager.getConnection(oracleURL, id, pass);
			System.out.println("접속 성공");
		} catch (SQLException e) {
			System.out.println("접속 실패");
		}
		}
		
		public  String insertStudent(String name, int age, String birth) {
			String sql = "insert into student(name, age, birth)  values(?,?,?)";  
			// prepared statement
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,name);
		   		pstmt.setInt(2,age);
		   		pstmt.setString(3,birth);
		   		pstmt.execute();
		   		System.out.print("추가성공 ");
		   		return "추가성공";
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
				return "추가실패";
			}
		}

		public ArrayList<StudentModel> selectStudent() {
			ArrayList<StudentModel> arr = new ArrayList<StudentModel>();
			
			String sql = "select * from student";
			ResultSet rs =null;
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					String name = rs.getString("name");
					int age = rs.getInt("age");
					Date birth = rs.getDate("birth");
					
					String bt = "";
					SimpleDateFormat formatter = new SimpleDateFormat ( "yyyy년 MM월 dd일");
					if(birth!=null) {
						//bt = String.format("%d년%d월%d일",birth., birth.getMonth(), birth.getDay());
						bt = formatter.format (birth);
						}
					arr.add(new StudentModel(name, age, bt));
				}
				rs.close();
				return arr;
				
			} catch (Exception ex) {
				return null;
			}
		}

}
