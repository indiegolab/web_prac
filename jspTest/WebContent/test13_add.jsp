<%@page import="com.sun.glass.ui.Pixels.Format"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("성공");
	} catch (Exception e) {
		System.out.println("실패");
	}

	String oracleURL = "jdbc:oracle:thin:@10.10.35.46:1521:prod";
	String id = "scott";
	String pass = "tiger";

	request.setCharacterEncoding("utf-8");
	String pname = request.getParameter("pname");
	String pcount = request.getParameter("pcount");
	String pdate = request.getParameter("pdate");

	Connection conn = null;
	Statement stmt = null;
	try {
		String sql = String.format("insert into production values('%s', %s, '%s')", pname, pcount, pdate);
		conn = DriverManager.getConnection(oracleURL, id, pass);
		stmt = conn.createStatement();
		stmt.execute(sql);
		out.print("처리성공...");
	} catch (Exception ex) {
		out.print("");
	}
%>

<html>
<head>
<title>title</title>
<meta charset="utf-8">
</head>

<body>
	<h1 style="text-align: center;">추가</h1>
	<h3 style="text-align: center;">제품입력</h3>
	<form>
		<center>
			제품명:<input type="text" name="pname"><br> 수량 :<input
				type="number" name="pcount"><br> 생산일:<input type="date"
				name="pdate"><br> <br> <br>
			<button>추가</button>
		</center>
	</form>
</body>

</html>