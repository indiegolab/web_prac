package jspExam3;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class productorDBHandler {
	final static String url = "jdbc:oracle:thin:@10.10.35.57:1521:prod";
	final static String scott = "scott";
	final static String tiger = "tiger";
	Connection conn = null;
	PreparedStatement pstmt = null;

	public productorDBHandler() {
		super();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("driver on...");
			dbConnect();
		} catch (Exception e) {
			System.out.println("fail");
		}
	}

	public void dbConnect() {
		try {
			conn = DriverManager.getConnection(url, scott, tiger);
			System.out.println("DB login...\n");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB login fail!\n");
		}
	}

	public void insertProductor(String name, String quantity, String prodate) {
		Statement stmt = null;
		try {
			String sql = String.format("insert into production values('%s', %s, '%s')", name, quantity, prodate);
			conn = DriverManager.getConnection(url, scott, tiger);
			stmt = conn.createStatement();
			stmt.execute(sql);
			System.out.println("insert success...\n");
		} catch (Exception ex) {
			System.out.println("insert fail!\n");
		}
	}

	public ArrayList<productorModel> selectProductor() {
		ArrayList<productorModel> arr = new ArrayList<productorModel>();
		ResultSet rs = null;
		String sql = "select * from production";
		String result = "";
		try {
			conn = DriverManager.getConnection(url, scott, tiger);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				int quantity = rs.getInt("quantity");
				Date prodate = rs.getDate("prodate");
				arr.add(new productorModel(name, quantity, prodate));
				
				
				
				while(rs.next()){
				<tr>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getInt("quantity") %></td>
					<td><%=rs.getDate("prodate") %></td>
				</tr>
				}
				
				
			}
			System.out.println("select success...\n");
			rs.close(); // cursor close
			return arr;
		} catch (Exception e) {
			System.out.println("select fail!\n");
			e.printStackTrace();
			return null;
		}
	}

	public void searchProductor() {

	}

}
