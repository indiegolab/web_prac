<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	// 드라이버 로딩(데이터베이스 종류 상관 없이 동일 API를 제공하기 위해 이 과정이 필요)
	// 데이터베이스 접속( ip, port, id, password 필요)
	// SQL문
	
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (Exception ex) {
		out.print("드라이버로딩 실패");
	}
	String oracleURL = "jdbc:oracle:thin:@10.10.35.46:1521:prod";
	String id = "scott";
	String pass = "tiger";
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		out.print("<h1 style=\"text-align:center;\">보기</h1>");
		out.print("<table id=\"mydiv\" class=\"table table-striped table-bordered\"><thead><th><h1>제품명</h1></th><th><h1>수량</h1></th><th><h1>생산일</h1></th></thead><tbody></tbody></table>");
		
		
		String sql = "select * from product";
		conn = DriverManager.getConnection(oracleURL, id, pass);
		stmt = conn.createStatement();
		// stmt.execute(sql);                          // insert, delete, updeate만 이렇게 사용
		// int nResult = stmt.executeUpdate(sql);      // inert, delete, update 적용개수를 반환
		rs = stmt.executeQuery(sql);                   // 결과 set을 반환 받음
		while(rs.next())
		{	
			String name = rs.getString("pname");
			int age = rs.getInt("pcnt"); // 칼럼명 : age
			Date birth = rs.getDate("pdate");
			out.print("<h1>"+name+age+birth+"</h1>");
		}
	} catch (Exception ex) {
		out.print(ex.getMessage());
	}
%>