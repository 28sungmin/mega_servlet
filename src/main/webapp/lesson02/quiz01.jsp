<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- 1. -->
	<%!
		// input: n(int)   output: sum(int)
		int getSum(int n) {
			int sum = 0; // 메소드 밖에서 필드로 선언해도 됨.
			for (int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}	
	%>
	<h3>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h3>
	
	<!-- 2. -->
	<% 
		int[] scores = {81, 90, 100, 95, 80};
	
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double average = (double)sum / scores.length;
	%>
	<h3>평균 점수는 <%= average %> 입니다.</h3>
	
	<!-- 3. -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	%>
	<h3>채점 결과는 <%= score %>점입니다.</h3>
	
	<!-- 4. -->
	<%
		String birthDay = "20010820";
		
		String year = birthDay.substring(0, 4);
		// 잠깐 year를 출력하고 싶을 때 => 정석은 아님
		// out.println(year);
		int age = 2024 - Integer.parseInt(year);
	%>
	<h3><%= birthDay %>의 나이는 <%= age %>세입니다.</h3>
	
	
</body>
</html>