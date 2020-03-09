<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<script>
	
</script>
<style>
#mybtn {
	text-align: center;
}
</style>
</head>

<body onload="fn()">
	<div style="text-align: center">
		<h1>키와 몸무게를 입력 받아 비만도를 구하시오</h1>
	</div>

	<div style="border: solid 1px blue">
		<div style="text-align: center">
			<h1>비만도
		</div>
		</h1>
		<br>
		<form action="result.jsp">
			<div style="text-align: center">
				<text>키 : </text>
				<input name="height" type="text" value="" id="height">
			</div>
			<br>
			<div style="text-align: center">
				<text>몸무게 : </text>
				<input name="weight" type="text" value="" id="weight">
			</div>

			<div id="mybtn">
				<button onclick="fn()">결과</button>
			</div>
		</form>
</body>

</html>