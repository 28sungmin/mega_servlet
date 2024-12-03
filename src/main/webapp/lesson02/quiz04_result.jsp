<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%
		int cm = Integer.parseInt(request.getParameter("cm"));
		String[] unitArr = request.getParameterValues("unit");
		
		// 인치: 0.393701 * cm
		// 야드: 0.0109361 * cm
		// 피트: 0.0328084 * cm
		// 미터: 0.01 * cm
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= cm %>cm</h3>
		<hr />
		<h2>
			<%
				for (String unit : unitArr) {
					if (unit.equals("인치")) {
						out.print(0.393701 * cm + "in<br />");
					} else if (unit.equals("야드")) {
						out.print(0.0109361 * cm + "yd<br />");
					} else if (unit.equals("피트")) {
						out.print(0.0328084 * cm + "ft<br />");
					} else if (unit.equals("미터")) {
						out.print(0.01 * cm + "m<br />");
					}
				}
			%>
		</h2>
	</div>
</body>
</html>