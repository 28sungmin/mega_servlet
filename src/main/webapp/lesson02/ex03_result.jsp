<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method - 폼태그</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		String fruit = request.getParameter("fruit");
		// 선택된 값이 여러개일 때 (값이 한 번에 여러개 넘어올 때) => getParameterValues : 단, 이것도 servlet에서만 사용하므로 잊어버려도 됨
		String[] foodArr = request.getParameterValues("food"); 
	%>
	
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td>
				<%
					if (foodArr != null) { // 선택항목이 없으면 배열이 null이기 때문에. -> null은 for문으로 못 돌린다.
						String result = ""; // null이라고 초기화하면 이어붙이기가 안되므로 그냥 비어있는 String으로 하기.
						for (String food : foodArr) {
							result += food + ",";
						}
						
						// 마지막 , 제거
						// 예: abc => ab만 추출: 0, 2
						result = result.substring(0, result.length() - 1);
						out.print(result);
					}
				%>
			</td>
		</tr>
		<tr>
			<th>선호하는 과일</th>
			<td><%= fruit %></td>
		</tr>
	</table>
</body>
</html>