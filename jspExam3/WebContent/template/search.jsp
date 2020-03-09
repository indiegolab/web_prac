<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>search</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script>
	console.log("on")
</script>
<style>
</style>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" method="POST" target="myi">
			<div class="form-group">
				<label for="inputName" class="col-sm-2 control-label">제품명</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="inputName" placeholder="제품명을 입력하세요.">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button id="SearchBtn" type="submit" class="button">검색</button>
				</div>
			</div>
			<table id="myTable" class="table table-striped table-hove">
				<thead class="thead-light">
					<tr>
						<th>제품명</th>
						<th>수량</th>
						<th>생산일</th>
					</tr>
				</thead>
				<tbody>
					<%
						request.setCharacterEncoding("UTF-8");
						String produtionName = request.getParameter("inputName");

						try {
							Class.forName("oracle.jdbc.driver.OracleDriver");
						} catch (Exception e) {
							out.print("fail!\n");
						}

						String url = "jdbc:oracle:thin:@10.10.35.57:1521:prod";
						String id = "scott";
						String password = "tiger";
						Connection conn = null;
						Statement stmt = null;
						ResultSet rs = null;
						try {
							String sql = String.format("select * from production where NAME LIKE '%s'", "%" + produtionName + "%");
							conn = DriverManager.getConnection(url, id, password);
							stmt = conn.createStatement();
							rs = stmt.executeQuery(sql);
							while (rs.next()) {
								String NAME = rs.getString("NAME");
								int QUANTITY = rs.getInt("QUANTITY");
								Date PRODATE = rs.getDate("PRODATE");
								out.print(String.format("<tr>" + "<td>%s</td>" + "<td>%d</td>" + "<td>%s</td>" + "</tr>", NAME,
										QUANTITY, PRODATE.toString()));
							}
							rs.close();
						} catch (Exception e) {
							out.print(e);
						}
					%>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>