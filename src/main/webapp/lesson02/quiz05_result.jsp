<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		String calc = request.getParameter("calc");
		
		double result = 0;
		if (calc.equals("+")) {
			result = number1 + number2;
			calc = "+";
		} else if (calc.equals("-")) {
			result = number1 - number2;
			calc = "-";
		} else if (calc.equals("*")) {
			result = number1 * number2;
			calc = "X";
		} else if (calc.equals("/")) {
			result = (double)number1 / number2;
			calc = "÷";
		}
	%>
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-3"><%= number1 %> <%= calc %> <%= number2 %> = <span class="text-primary"><%= result %></span></div>
	</div>
</body>
</html>