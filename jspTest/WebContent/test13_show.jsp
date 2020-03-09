<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// out.print("드라이버로딩 성공\n");
	}
	catch(Exception ex){
		out.print("드라이버로딩 실패\n");
	}

	String oracleURL = "jdbc:oracle:thin:@10.10.35.46:1521:prod";
	String id = "scott";
	String pass="tiger";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String name;;
	int quantity;
	Date prodate;
	try{
		String sql = "select * from production";
		conn = DriverManager.getConnection(oracleURL, id, pass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		// out.print("정상 처리^^*\n");
	}
	catch( Exception e){ 
		out.print("접속 실패\n");
	}
%>

<html>

<head>
	<title>title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<style>
		.container {
			padding-top: 10px;
		}
	</style>
	</head>

<body>
	<form action="show.jsp" onload="fn()">
		<div class="container">
			<table id="mytable" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>제품명</th>
						<th>수량</th>
						<th>생산일</th>
					</tr>
				</thead>
				<tbody><%
					while(rs.next()){%>
					<tr>
						<td><%=rs.getString("name") %></td>
						<td><%=rs.getInt("quantity") %></td>
						<td><%=rs.getDate("prodate") %></td>
					</tr>
					<%}%>
				</tbody>
			</table>
		</div>
	</form>
</body>

</html>
