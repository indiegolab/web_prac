<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
				<tbody>
					<%
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
